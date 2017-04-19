## Database Creation

This is the current local database we have been running our tests on. Once the project is closer to actually implementing on Chitester, make sure you get an updated database and update any sql queries that may need updating. The data that exists here is just made up test data, but is considered "live" data. The API that was built should reflect any changes made to this database. This is not "real" data, in that it does not contain actual results from evals, which we may or may not ever have access to, as it may be considered private.

The database we were using was updated, and we had to add a lot more test information, as well as tables to the database in order to get certain features to work. At some point, we may need to ask chitester to add these tables in order for some of the queries to function.

### Note about New Evals_DistractorTextAndScore Table

A Distractor is, essentially, an answer to a question on an eval.

When you enter in a new Distractor into the Distractors table, the "text" column usually looks something like:

```
1 (extremely poor)
2 (very poor)
3 (poor)
4 (average)
5 (good)
6 (very good)
7 (extremely good)
```

This is a very bad practice (does not pass first normal form as these data are not atomic) and slows down 
the math considerably.  This is because, when doing a query on this data, you will need to do string 
manipulation to get the scores separate from the text.  

The Evals_DistractorTextAndScore table was added to separate these data into two columns and speed up 
queries. When inserting a new row into the Distractors table you will also need to insert a row into the Evals_DistractorTextAndScore table.

The "distractorID" refers to "Distractors.ID".  When you join Distractors with 
Evals_DistractorTextAndScore you will get 2 new columns.

This query...
```
SELECT * 
FROM Distractors 
WHERE questionID = 961901;
```

Yields...
```
|ID      |questionID |sequence |formatID |correct |Distractors.text   |
-----------------------------------------------------------------------
|3626242 |961901     |1        |1        |0       |1 (extremely poor) |
|3626243 |961901     |2        |1        |0       |2 (very poor)      |
|3626244 |961901     |3        |1        |0       |3 (poor)           |
|3626245 |961901     |4        |1        |0       |4 (average)        |
|3626246 |961901     |5        |1        |0       |5 (good)           |
|3626247 |961901     |6        |1        |0       |6 (very good)      |
|3626248 |961901     |7        |1        |0       |7 (extremely good) |
```

Joining in the new Evals_DistractorTextAndScore table will give more useful information for analytics 
without having to do string manipulation on potentially 10s of thousands of rows.  This process is much 
faster now, butyou will have to insert into Evals_DistractorTextAndScore whenever you insert into Distractors.

This query...
```
SELECT * 
FROM Distractors d
JOIN Evals_DistractorTextAndScore e
ON d.ID = e.DistractorID
WHERE questionID = 961901;
```

Yields...
```
|ID      |questionID |sequence |formatID |correct |Distractors.text   |score |e.text         |
----------------------------------------------------------------------------------------------
|3626242 |961901     |1        |1        |0       |1 (extremely poor) |1     |extremely poor |
|3626243 |961901     |2        |1        |0       |2 (very poor)      |2     |very poor      |
|3626244 |961901     |3        |1        |0       |3 (poor)           |3     |poor           |
|3626245 |961901     |4        |1        |0       |4 (average)        |4     |average        |
|3626246 |961901     |5        |1        |0       |5 (good)           |5     |good           |
|3626247 |961901     |6        |1        |0       |6 (very good)      |6     |very good      |
|3626248 |961901     |7        |1        |0       |7 (extremely good) |7     |extremely good |
```

We would recommend completely abandoning the "Distractors.text" column, maybe just leave it null 
from now on.  ntext is depricated and is EXTREMELY slow.

Example INSERT...
```
INSERT INTO 
Distractors (questionID, sequence, formatID, correct, text                )
VALUES      (961901    , 1       , 1       , 0      , '1 (extremely poor)');

INSERT INTO 
Evals_DistractorTextAndScore (distractorID, score, text            )
VALUES                       (@@Identity,   1,     'extremely poor');
```

Or even ignoring the ntext value because it was bad practice and now redundant...
```
INSERT INTO 
Distractors (questionID, sequence, formatID, correct)
VALUES      (961901    , 1       , 1       , 0      );

INSERT INTO 
Evals_DistractorTextAndScore (distractorID, score, text            )
VALUES                       (@@Identity,   1,     'extremely poor');
```
