ECHO OFF

SET url=https://www.route4me.com/api.v4/address_book.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the locations from an address book by list of location IDs.

SET addr_id=13590492,13590498

ECHO ON

curl -o file1.txt -k -X GET "%url%?api_key=%apikey%&address_id=%addr_id%"

timeout /t 30