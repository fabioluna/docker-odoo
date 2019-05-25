FROM trustcode/docker-odoo:v11

ADD bin/entrypoint-nds.sh /opt/odoo
RUN chown odoo:odoo /opt/odoo/entrypoint-nds.sh && \
    chmod +x /opt/odoo/entrypoint.sh

ENTRYPOINT ["/opt/odoo/entrypoint-nds.sh"]
