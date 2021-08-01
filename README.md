# CS157AProject
OTC Medicine Handbook  
#Tools  
Install Eclipse Java EE  
Install Tomcat 9.0  

+ After installing the docker, store Oracle DB in your docker using command  
     docker pull epiclabs/docker-oracle-xe-11g

+ Create an DB folder at your C drive (This will be the path of DB folder: C:/DB)
+ Create a container with Volume support and if you want the DB to be connected remotely with port 1521 opened  
     docker run -v C:/DB:/mnt/db -p 1521:1521 -e ORACLE_ALLOW_REMOTE=true epiclabs/docker-oracle-xe-11g
+The above command also make a link from C:/DB directory from your computer to mnt/db directory in the container.

+ Run the container  
    docker exec –it < your hash code/ container name> /bin/bash
   
+ Run sqlplus  
   sqlplus
  
+ Enter username and password

+ You need to store your sql files at your C:/DB local directory.
+ If you want to run your sql files (example : createdb.sql), using the below command  
     @/mnt/db/createdb.sql  
     
# Run the app
+ Right click on OTC.jsp file  
+ Choose Run As -> run on server -> Select Tomcat v9.0 
+ Click Finish

#Fix The superclass "javax.servlet.http.HttpServlet" was not found on the Java Build Path
+paste servlet jar file to lib under src/main/webapp/WEB-INF/lib 
[jar_files.zip](https://github.com/HannyDuong/CS157AProject/files/6819318/jar_files.zip)

#paste ojdbc8 jar file to lib under src/main/webapp/WEB-INF/lib  (if needed)
[ojdbc8.zip](https://github.com/HannyDuong/CS157AProject/files/6844579/ojdbc8.zip)
