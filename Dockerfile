FROM trustcode/docker-odoo:v11

WORKDIR /opt/odoo/
ADD bin/entrypoint-nds.sh /opt/odoo

RUN useradd --system --home /opt --shell /bin/bash --uid 1040 odoo
RUN chown odoo:odoo /opt/odoo/entrypoint-nds.sh
RUN chmod +x /opt/odoo/entrypoint-nds.sh

ENTRYPOINT ["/opt/odoo/entrypoint-nds.sh"]
CMD ["/usr/bin/supervisord"]
