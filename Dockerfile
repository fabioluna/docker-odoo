FROM trustcode/docker-odoo:v11

WORKDIR /opt/odoo/
ADD bin/entrypoint-nds.sh /opt/odoo

USER root

RUN chmod +x /opt/odoo/entrypoint-nds.sh

ENTRYPOINT ["/opt/odoo/entrypoint-nds.sh"]

