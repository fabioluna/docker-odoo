FROM trustcode/docker-odoo:v11

ADD bin/entrypoint-nds.sh /opt/odoo

RUN chmod +x /opt/odoo/entrypoint.sh

ENTRYPOINT ["/opt/odoo/entrypoint.sh"]
