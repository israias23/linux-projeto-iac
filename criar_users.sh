#!/bin/bash

echo "Criando diretórios..."
mkdir -p /publico /adm /ven /sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Configurando proprietários e permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Configurando usuários..."

useradd carlos -m -c "Carlos Vinicius" -s /bin/bash -g GRP_ADM -p $(opensll passwd -6 1234)
passwd carlos -e

useradd maria -m -c "Maria Eduarda" -s /bin/bash -g GRP_ADM -p $(opensll passwd -6 1234)
passwd maria -e

useradd joao -m -c "João Pedro" -s /bin/bash -g GRP_ADM -p $(opensll passwd -6 1234)
passwd joao -e

useradd debora -m -c "Debora Vazinks" -s /bin/bash -g GRP_VEN -p $(opensll passwd -6 1234)
passwd debora -e

useradd sebastiana -m -c "Sebastiana Lurdes" -s /bin/bash -g GRP_VEN -p $(opensll passwd -6 1234)
passwd sebastiana -e

useradd roberto -m -c "Roberto Leão" -s /bin/bash -g GRP_VEN -p $(opensll passwd -6 1234)
passwd roberto -e

useradd josefina -m -c "Josefina Silva" -s /bin/bash -g GRP_SEC -p $(opensll passwd -6 1234)
passwd josefina -e

useradd amanda -m -c "Amanda Galdino" -s /bin/bash -g GRP_SEC -p $(opensll passwd -6 1234)
passwd amanda -e

useradd rogerio -m -c "Rogerio Sião" -s /bin/bash -g GRP_SEC -p $(opensll passwd -6 1234)
passwd rogerio -e

echo "Finalizado!"
