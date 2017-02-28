select d.ID as 'Distractor ID', d.questionID, d.text as 'Distractor text', q.text as 'Question text', dts.score, dts.text
from Distractors d
join Questions q
on d.questionID = q.ID
join Evals_DistractorTextAndScore dts
on d.ID = dts.distractorID
where d.text like '[0-7]%' and
d.text not like '%-%'

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