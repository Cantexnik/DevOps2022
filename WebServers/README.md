# DevOps2022
### Part 6 WebServer

**lesson 19**
Настроить для двух вебсерверов (apache2|nginx):
  - Статический контент /opt/apache2|nginx/www.test.com/
  - Логи /opt/apache2|nginx/logs/
  - Папка с логами должна быть смонтирована на хосте
  - Настроить алиас в конфиге веберверов www.test.com

/opt/apache2|nginx/
  Logs - помещаются и пробрасываются из контейнера на хост
    www.test.com - статика (index.html)