<bestGrades>
{
for $x in doc("Scores.xml")/restaurants/restaurant/grades/grade
where $x/score >10
return <grade>
<score> {data($x/score)}</score>
<value>{data($x/value)} </value>
</grade>
}
</bestGrades>