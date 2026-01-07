SELECT
    utbildningsnamn,
    utbildningsområde,
    "yh-poäng",
    beslut,
    "utbildningsanordnare administrativ enhet",
    kommun INTO it_educations
FROM
    myh_2024
WHERE
    utbildningsområde = "Data/IT";

SELECT
    COUNT(*) AS total_applied
FROM
    it_educations;