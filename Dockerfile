FROM alpine

RUN apk add openldap openldap-back-mdb openldap-clients bash

RUN install -m 755 -o ldap -g ldap -d /etc/openldap/slapd.d

# Removing default configuration
RUN rm /etc/openldap/slapd.conf

# Importing configuration...
RUN slapadd -n 0 -F /etc/openldap/slapd.d -l /etc/openldap/slapd.ldif
RUN chown -R ldap:ldap /etc/openldap/slapd.d/*

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ARG LDAP_PORT=389
EXPOSE $LDAP_PORT

ENTRYPOINT ["bash", "/entrypoint.sh"]
