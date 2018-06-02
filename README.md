# RedCap BIBBOX application

This container can be installed as [BIBBOX APP](http://bibbox.readthedocs.io/en/latest/admin-documentation/ "BIBBOX App Store") or standalone. 

* after the docker installation follow these [instructions](https://github.com/bibbox/app-redcap/blob/master/INSTALL-APP.md)

## Standalone Installation

Clone the github repsoitory and start the install.sh. If necessary change the ports and volume mounts in `docker-compose.yml`.  

`sudo git clone https://github.com/redcap/app-seeddms`

`sudo chmod +x install.sh`

`sudo ./install.sh`


## Install within BIBBOX

The BIBBOX framework can be installed 
* as a [virtual machine](http://bibbox.bbmri-eric.eu/resources/machine/), 
* using [vagrant/puppet](http://bibbox.readthedocs.io/en/latest/installation-vagrant/) 
* are on any Ubuntu System following these [instructions](http://bibbox.readthedocs.io/en/latest/installation-source/)  

After BIBBOX is up and running, you can use the [BIBBOX APP Store](http://bibbox.readthedocs.io/en/latest/admin-documentation/ "BIBBOX App Store") to install a lot of software tools. 

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
