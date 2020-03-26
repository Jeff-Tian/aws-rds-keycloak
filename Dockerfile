FROM openjdk:11.0.5-jdk as openjdk
FROM jboss/keycloak:latest

COPY --from=openjdk /usr/local/openjdk-11/conf/security/java.security /etc/alternatives/jre/conf/security/

