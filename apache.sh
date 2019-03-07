if service httpd status; 
then 
echo 'stop'; 
service httpd stop; 
else 
echo 'check installed';
 if ! rpm -qa | grep -q '^httpd-';
 then 
 echo 'install';
 yum -y install httpd;
 fi;
 echo 'start';
 service httpd start; 
fi ) 

