USE CS4450Spring2017
GO

select d.ID as 'Distractor ID', d.questionID, d.text as 'Distractor text', q.text as 'Question text'--, dts.score, dts.text
from Distractors d
join Questions q
on d.questionID = q.ID
--join Evals_DistractorTextAndScore dts
--on d.ID = dts.distractorID
where (d.text like '[0-7]%' and
d.text not like '%-%') or 
d.text like '%[Pp]oor%'
or d.text like '%[Aa]verage%'
or d.text like '%[Gg]ood%'
or d.text like '%[Aa]gree%'
or d.text like '%[Nn]eutral%'
order by d.questionID, d.ID

select CONCAT(u.FirstName, ' ', u.LastName) AS 'Instructor Name', sq1.courseNumber, sq1.ResponseCount, sq1.score--, dts.text, dts.score, dts.distractorID as 'Distractor ID'
from (
	select st.instructorID, dts.score, cs.courseNumber,  SUM(dts.score) as 'ResponseCount'
	from DistractorResponses dr
	join Distractors d
	on dr.distractorID = d.ID
	join QuestionResponses qr
	on dr.questionResponseID = qr.ID
	join Results r 
	on qr.resultID = r.ID
	join SectionsTaught st
	on r.sectionID = st.sectionID
	join Users u
	on st.instructorID = u.Id
	join CourseSections cs
	on  r.sectionID = cs.ID
	join Evals_DistractorTextAndScore dts
	on dr.distractorID = dts.distractorID
	group by st.instructorID, cs.courseNumber, dts.score
	) sq1
JOIN Users u
ON sq1.instructorID = u.Id
--JOIN Evals_DistractorTextAndScore dts
--ON -----------------------------------
ORDER BY u.LastName, u.FirstName, sq1.courseNumber, sq1.score

-------------------------------------------------------------------------------------------------------------------------------------------------
--Group by instructor, course, semester, score

--34813

select CONCAT(u.FirstName, ' ', u.LastName) as 'Name', sq2.courseNumber, sq2.Score, sq2.RC, sq2.year, sq2.semester, sq2.ID, cs.subjectCode, cs.courseNumber
from(
	select sq1.instructorID, sq1.courseNumber, sq1.year, SUM(sq1.ResponseScore)/SUM(sq1.ResponseCount) as 'Score', SUM(sq1.ResponseCount) as 'RC', sq1.semester, sq1.ID
	FROM (
		select st.instructorID, dts.score, cs.courseNumber,  SUM(dts.score) as 'ResponseScore', COUNT(dts.score) as 'ResponseCount', cs.year, cs.semester, cs.ID
		from DistractorResponses dr
		join Distractors d
		on dr.distractorID = d.ID
		join QuestionResponses qr
		on dr.questionResponseID = qr.ID
		join Results r 
		on qr.resultID = r.ID
		join SectionsTaught st
		on r.sectionID = st.sectionID
		join Users u
		on st.instructorID = u.Id
		join CourseSections cs
		on  r.sectionID = cs.ID
		join Evals_DistractorTextAndScore dts
		on dr.distractorID = dts.distractorID
		group by st.instructorID, cs.courseNumber, dts.score, cs.year, cs.semester, cs.ID
	--	HAVING st.instructorID = 880519503
		) sq1
	GROUP BY sq1.instructorID, sq1.courseNumber, sq1.year, sq1.semester, sq1.ID
) sq2
JOIN Users u
on sq2.instructorID = u.ID
JOIN CourseSections cs
on sq2.ID = cs.ID
order by sq2.instructorID, sq2.courseNumber, sq2.semester, sq2.Score
--order by sq1.instructorID, sq1.courseNumber, sq1.year

--------------------------------------------------------------------------------
select *
from (
	select st.instructorID, dts.score, cs.courseNumber,  SUM(dts.score) as 'ResponseScore', COUNT(dts.score) as 'ResponseCount', cs.year, cs.semester, cs.bannerCRN
	from DistractorResponses dr
	join Distractors d
	on dr.distractorID = d.ID
	join QuestionResponses qr
	on dr.questionResponseID = qr.ID
	join Results r 
	on qr.resultID = r.ID
	join SectionsTaught st
	on r.sectionID = st.sectionID
	join Users u
	on st.instructorID = u.Id
	join CourseSections cs
	on  r.sectionID = cs.ID
	join Evals_DistractorTextAndScore dts
	on dr.distractorID = dts.distractorID
	group by st.instructorID, cs.courseNumber, dts.score, cs.year, cs.semester, cs.bannerCRN
--	HAVING st.instructorID = 880519503
) sq1
join Users u
on sq1.instructorID = u.Id
join CourseSections cs
on sq1.bannerCRN = cs.bannerCRN

-----------------------------------------------
--Kimberly Strickland id = 550100208
select CONCAT(u.FirstName, ' ', u.LastName) as 'InstructorName', cs.subjectCode, cs.courseNumber, cs.bannerCRN, cs.year, cs.semester, dts.score
	from DistractorResponses dr
	join Distractors d
	on dr.distractorID = d.ID
	join QuestionResponses qr
	on dr.questionResponseID = qr.ID
	join Results r 
	on qr.resultID = r.ID
	join SectionsTaught st
	on r.sectionID = st.sectionID
	join Users u
	on st.instructorID = u.Id
	join CourseSections cs
	on  r.sectionID = cs.ID
	join Evals_DistractorTextAndScore dts
	on dr.distractorID = dts.distractorID
where st.instructorID = 550100208
order by cs.bannerCRN, dts.score, cs.year, cs.semester


select COUNT(*) as 'responseCount', cs.ID
from DistractorResponses dr
join Distractors d
on dr.distractorID = d.ID
join QuestionResponses qr
on dr.questionResponseID = qr.ID
join Results r 
on qr.resultID = r.ID
join SectionsTaught st
on r.sectionID = st.sectionID
join Users u
on st.instructorID = u.Id
join CourseSections cs
on  r.sectionID = cs.ID
join Evals_DistractorTextAndScore dts
on dr.distractorID = dts.distractorID
group by st.instructorID, cs.ID
having st.instructorID = 550100208

----------------------------------------------------------------------------------------------------------------------------
---Debuging and number testing
----------------------------------------------------------------------------------------------------------------------------


USE CS4450Spring2017
GO

--46,066 unique distractor responses
select * from DistractorResponses

-- 1130 distractors
select COUNT(*) from DistractorResponses
group by distractorID

-- Find how many instructors have responses -- 11 with dts table, 41 without
select st.instructorID, count(*)
from DistractorResponses dr
join Distractors d
on dr.distractorID = d.ID
join QuestionResponses qr
on dr.questionResponseID = qr.ID
join Results r 
on qr.resultID = r.ID
join SectionsTaught st
on r.sectionID = st.sectionID
join Users u
on st.instructorID = u.Id
join CourseSections cs
on  r.sectionID = cs.ID
group by st.instructorID
--where d.text not like '[0-7]%' --and
--d.text not like '%-%'
--join Evals_DistractorTextAndScore dts
--on dr.distractorID = dts.distractorID
--order by qr.questionID

select * from Questions
where ID = 1496426

--The 11 instructors that currently have eval responses. Joins in dts table
--Without dts table, 41 instructors have eval responses
select Id, CONCAT(FirstName, ' ', LastName)
FROM Users
Where Id = 550100208 or
Id = 882385840 or
Id = 888367300 or
Id = 881497850 or
Id = 550113977 or
Id = 550139167 or
Id = 550062811 or
Id = 884395752 or
Id = 880519503 or
Id = 881216556 or
Id = 550107246 or
Id = 550002835

---
select *
from DistractorResponses dr
join Distractors d
on dr.distractorID = d.ID
join QuestionResponses qr
on dr.questionResponseID = qr.ID
join Results r 
on qr.resultID = r.ID
join SectionsTaught st
on r.sectionID = st.sectionID
join Users u
on st.instructorID = u.Id
join CourseSections cs
on  r.sectionID = cs.ID
where st.instructorID = 550002835

--
select d.ID as 'Distractor ID', d.questionID, d.text as 'Distractor text', q.text as 'Question text'--, dts.score, dts.text
from Distractors d
join Questions q
on d.questionID = q.ID
--join Evals_DistractorTextAndScore dts
--on d.ID = dts.distractorID
where (d.text like '[0-7]%' and
d.text not like '%-%') or 
d.text like '%[Pp]oor%'
or d.text like '%[Aa]verage%'
or d.text like '%[Gg]ood%'
or d.text like '%[Aa]gree%'
or d.text like '%[Nn]eutral%'
order by d.questionID, d.ID

select sq1.dCount, count(*)
FROM(
	select d.questionID, COUNT(*) as 'dCount'
	from Distractors d
	join Questions q
	on d.questionID = q.ID
	group by d.questionID
) sq1
group by sq1.dCount