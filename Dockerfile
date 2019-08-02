FROM payara/server-full
USER payara
COPY --chown=payara:payara ojdbc8.jar .
COPY --chown=payara:payara ojdbc8.jar appserver/glassfish/domains/domain1/lib/ext/ojdbc8.jar
COPY --chown=payara:payara ojdbc8.jar appserver/glassfish/domains/production/lib/ext/ojdbc8.jar
#RUN ./appserver/bin/asadmin add-library ojdbc8.jar