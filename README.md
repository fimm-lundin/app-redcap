# RedCap BIBBOX application

Average setup duration for medium to fast internet connection is around 20-25 minutes.


## Docker Images Used

- bibbox/redcap
- mysql:8
- busybox:latest
 
 
## Database information

- MYSQL root password: thispasswordisneverusedeveninsidethecontainer
- Database: redcap
- User: redcap
- Password: redcap4bibbox
- Host: redcap-db


## Mounted Volumes

- /var/lib/mysql
- /redcap_webroot
