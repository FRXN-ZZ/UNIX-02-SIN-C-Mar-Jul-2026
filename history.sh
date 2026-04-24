    1 git remote add upstream https://github.com/jonathanetitoo/UNIX-02-SIN-C-Mar-Jul-2026.git
    2  git fetch upstream
    3  git checkout -b eval_p2_1_g1 upstream/eval_p2_1_g1
    4  git push -u origin eval_p2_1_g1
    5  ls -R orion/
    6  cd evaluation/
    7  ls -R orion/
    8  mv orion/notas orion/apuntes
    9  mkdir orion/respaldos
   10  git add .
   11  git commit -m "Fix problema 1: estructura de directorios corregida"~
   12  mv orion/notas orion/apuntes
   13  mkdir orion/respaldos
   14  git add .
   15  git commit -m "Fix problema 1: estructura de directorios corregida"
   16  mv orion/telemetria.log orion/apuntes/~
   17  mv orion/telemetria.log orion/apuntes/
   18  mv orion/config.tmp orion/config.conf
   19  git add .
   20  git commit -m "Fix problema 2: archivos movidos y renombrados"
   21  chmod 640 orion/apuntes/telemetria.log
   22  git add .
   23  git commit -m "Fix problema 3: permisos numericos 640 en telemetria.log"
   24  ls -l orion/apuntes/telemetria.log
   25  chmod u+x orion/script.sh
   26  chmod o-w orion/config.conf
   27  git add .
   28  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   29  chmod u+s orion/script.sh
   30  git add .
   31  git commit -m "Fix problema 5: SUID activado en script.sh"
   32  ls -l orion/script.sh
   33  mkdir -p /tmp/orion_zone
   34  chmod +t /tmp/orion_zone
   35  ls -ld /tmp/orion_zone
   36  cat > /tmp/mi_llave.batch <<'EOF'
%no-protection
Key-Type: RSA
Key-Length: 2048
Name-Real: lyra
Name-Email: lyra@orion.lab
Expire-Date: 0
%commit
EOF

   37  gpg --batch --generate-key /tmp/mi_llave.batch
   38  gpg --encrypt --recipient lyra@orion.lab orion/apuntes/telemetria.log
   39  git add .
   40  git commit -m "Fix problema 7: llave GPG generada y telemetria.log cifrado"
   41  gpg --clearsign orion/config.conf
   42  gpg --yes --detach-sign -o orion/script.sh.sig orion/script.sh
   43  git add .
   44  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   45  git log --oneline
   46  history