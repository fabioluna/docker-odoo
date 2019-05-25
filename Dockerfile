FROM trustcode/docker-odoo:v11

ADD bin/autoupdate /opt/odoo
ADD bin/entrypoint-nds.sh /opt/odoo

USER root

RUN chown odoo:odoo /opt/odoo/autoupdate && \
    chmod +x /opt/odoo/autoupdate && \
    chmod +x /opt/odoo/entrypoint-nds.sh

VOLUME ["/opt/", "/etc/odoo"]
ENTRYPOINT ["/opt/odoo/entrypoint-nds.sh"]
CMD ["/usr/bin/supervisord"]
