# RedCap BIBBOX application

## === REDCAP INSTALL GUIDE ===

1.) Install app from store

2.) Enter the docker container with "sudo docker exec -it CONTAINER-ID bash" (Replace CONTAINER-ID with ID from redcap docker container "sudo docker ps").

3.) Open the following files with "nano" and comment out everything, except what is mentioned here:

    # /etc/ssmtp/ssmtp.conf
    
    rewriteDomain=
    root=YOUR-ADDRESS@gmail.com
    mailhub=smtp.gmail.com:587
    hostname=smtp.gmail.com
    FromLineOverride=YES
    UseSTARTTLS=YES
    AuthUser=YOUR-ADDRESS@gmail.com
    AuthPass=YOUR-PASSWORD


    # /etc/ssmtp/revaliases
    
    root:YOUR-ADDRESS@gmail.com:smtp.gmail.com:587
    localusername:YOUR-ADDRESS@gmail.com:smtp.gmail.com:587


  **Make sure you have saved the files, then restart the RedCap app from the BIBBOX app dashboard!**


4.) Open up FileZilla or similar FTP tool and connect to your BIBBOX.

5.) Navigate to "/opt/bibbox/application-instance/YOUR-REDCAP-ID-app-redcap/www" and copy all contents of RedCap source files ("redcap7.zip/redcap/*") to this directory via FTP.

6.) Edit the "database.php" file:

      // database.php
      
      $hostname     = 'redcap-db';
      $db           = 'redcap';
      $username     = 'redcap';
      $password     = 'redcap4bibbox';

      $salt = 'RANDOM-8-DIGIT-STRING';


7.) Set permissions for "edocs" and "temp" folders to 777. -> Maybe we can have sth else here later on

8.) Now open up the RedCap app from your BIBBOX and append "/install.php" to the URL.

9.) Follow the install instructions on the screen until you get prompted to execute some SQL commands.

10.) Install an Adminer application from the store within your BIBBOX and connect to the RedCap database:

  * Server: YOUR-REDCAP-ID-redcap-db
  * Username: redcap
  * Password: redcap4bibbox
  * Database: redcap


11.) In Adminer go to "SQL-command" and copy the SQL code from RedCap installation into the Adminer SQL field. Then execute and wait.

12.) Within the RedCap installation steps click on the configuration checker link.

13.) Most of the fields should be green now and RedCap is ready to go!

14.) That's it!


Notes:
- Folder permissions at 777 should generally be avoided. Necessary for RedCap?
