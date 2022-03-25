Prerequisites :
1. MySQL 5.7 or above.
2. JRE 8 or above.

How to deploy Telescope :

1. Run database script present in database_scripts directory.
2. Update application.properties file.
    2.1. server.port : Update port on which you want to run Telescope. Default port number is 8081.
    2.2. spring.datasource.url : Update ip address of machine on which database in running.
    2.3. spring.datasource.username : Update database username. Default username is root.
    2.4. spring.datasource.password : Update database password. Default password is root.
3. Run application : Double click on wfh_reporting.jar file or run "java -jar wfh_reporting.jar" from terminal.