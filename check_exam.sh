#!/bin/bash
echo "=========================================="
echo "   REPORTE DE VERIFICACIÓN DE EXAMEN"
echo "=========================================="

echo -e "\n[1] Verificando Sticky Bit en /tmp/orion_zone:"
ls -ld /tmp/orion_zone | awk '{print "Permisos: " $1}'

echo -e "\n[2] Verificando SUID en script.sh:"
ls -l evaluation/orion/script.sh | awk '{print "Permisos: " $1}'

echo -e "\n[3] Verificando archivos GPG creados:"
ls -1 evaluation/orion/apuntes/*.gpg evaluation/orion/*.asc evaluation/orion/*.sig

echo -e "\n[4] Probando descifrado de log (Prueba de llave):"
gpg --decrypt evaluation/orion/apuntes/telemetria.log.gpg 2>/dev/null | head -n 3
if [ $? -eq 0 ]; then echo "OK: Descifrado exitoso."; else echo "ERROR: No se pudo descifrar."; fi

echo -e "\n[5] Verificando integridad de la firma del script:"
gpg --verify evaluation/orion/script.sh.sig evaluation/orion/script.sh 2>&1 | grep "Good signature"

echo -e "\n=========================================="
echo "          VERIFICACIÓN FINALIZADA"
echo "=========================================="
