SELECT description from crime_scene_report
WHERE date=20180115 AND city="SQL City" AND type=”murder”

--Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".

SELECT * FROM  person
	WHERE (name LIKE "Annabel%" AND address_street_name LIKE "Franklin Ave")
	OR (address_street_name LIKE "Northwestern Dr" AND 
	   (SELECT MAX(address_number) FROM person)=address_number)

Select * from interview where person_id = 14887 or person_id = 16371



Select * from get_fit_now_check_in where membership_id like "48Z7A" or membership_id like "48Z55"
