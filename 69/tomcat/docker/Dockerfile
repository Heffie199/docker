FROM tomcat:7
COPY java/java.security /usr/lib/jvm/java-7-openjdk-amd64/jre/lib/security/java.security
COPY bin/catalina.sh /usr/local/tomcat/bin/catalina.sh
COPY conf/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY webapps/manager/META-INF/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
VOLUME webapps :/usr/local/tomcat/webapps