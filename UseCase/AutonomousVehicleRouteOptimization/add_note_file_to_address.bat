@ECHO OFF

:: Add a note to the route using of file uploading

SET url=https://www.route4me.com/actions/addRouteNotes.php
SET apikey=11111111111111111111111111111111
SET routeid=27EB5DF5960A906AEE1FBA09AB55C897
SET addrid=192168013
SET dev_lat=33.132675170898
SET dev_lng=-83.244743347168
SET dev_type=web
SET "filename=flags.pdf"

ECHO ON

curl -o file1.txt -g -k -X POST -F "strFilename=@%filename%" "%url%?api_key=%apikey%&route_id=%routeid%&address_id=%addrid%&dev_lat=%dev_lat%&dev_lng=%dev_lng%&device_type=%dev_type%&strUpdateType=ANY_FILE"

timeout /t 30