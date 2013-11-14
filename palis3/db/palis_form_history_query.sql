select * from (select 'education' as fact_name, date as date, title as label, education_key as id from palis.dbo.education_fact union select 'rounds'as fact_name, encounter_date as date, notes as label, rounds_key as id from palis.dbo.rounds_fact union select 'non-case based' as fact_name, request_date as date, convert(varchar(50),type_of_request) as label, non_case_based_key as id from palis.dbo.non_case_based_fact) as "a" order by "a".date desc;
-- old palis data lookup
--select top 50 education_key as id, initiative_label as initiative, date, area_label as area, title from palis.dbo.education_fact as a, palis.dbo.area as b, palis.dbo.initiative as c where a.area = b.area_key and a.initiative = c. initiative_key order by education_key desc