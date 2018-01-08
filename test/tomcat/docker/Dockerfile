FROM tomcat:8.5
COPY conf/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY webapps/manager/META-INF/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
VOLUME webapps :/usr/local/tomcat/webapps