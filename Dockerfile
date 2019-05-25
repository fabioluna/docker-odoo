FROM trustcode/docker-odoo:v11

ADD bin/entrypoint-nds.sh /opt/odoo

ENTRYPOINT ["/opt/odoo/entrypoint-nds.sh"]
