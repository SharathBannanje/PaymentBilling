FROM tomcat:8.0-alpine
EXPOSE 8080
RUN rm -rf /usr/local/tomcat/webapps/*
COPY WebTest.war /usr/local/tomcat/webapps/WebTest.war
COPY PaymentBilling.war /usr/local/tomcat/webapps/PaymentBilling.war
COPY mssql-jdbc-6.4.0.jre9.jar /usr/local/tomcat/lib/mssql-jdbc-6.4.0.jre9.jar
COPY mssql-jdbc-6.4.0.jre8.jar /usr/local/tomcat/lib/mssql-jdbc-6.4.0.jre8.jar
COPY mssql-jdbc-6.4.0.jre7.jar /usr/local/tomcat/lib/mssql-jdbc-6.4.0.jre7.jar
#COPY javax.servlet-api-4.0.1.jar /usr/local/tomcat/lib/javax.servlet-api-4.0.1.jar
CMD ["catalina.sh", "run"]