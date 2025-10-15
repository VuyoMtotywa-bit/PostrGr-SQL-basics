SELECT
    stay,
    COUNT(*) AS count_int,
    ROUND(AVG(todep)::numeric, 2) AS average_phq, --	Total score of depression (PHQ-9 test)
    ROUND(AVG(tosc)::numeric, 2) AS average_scs, -- Total score of social connectedness (SCS test)
    ROUND(AVG(toas)::numeric, 2) AS average_as --Total score of acculturative stress (ASISS test)
FROM
    students
WHERE
    inter_dom = 'Inter' --International
GROUP BY
    stay
ORDER BY
    stay DESC;