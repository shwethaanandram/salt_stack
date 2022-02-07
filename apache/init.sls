install_apache:
 pkg.installed:
   - apache2

index_html:
 file.managed:
  - name: /var/www/html/index.html
  - user: apache
  - group: apache
  - mode: 644
  - source: /home/shwetha/git/salt_stack/apache/templates/index.html

service_running:
 service.running:
  - name: apache2
  - enable:  True
