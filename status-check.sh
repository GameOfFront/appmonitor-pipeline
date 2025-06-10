#!/bin/bash

# status-check.sh - Verifica se a aplicação está online (simulado)

echo "[INFO] Iniciando verificação de status da aplicação..."

# Simulação de verificação
status="online"

if [ "$status" == "online" ]; then
  echo "[OK] Aplicação está funcionando normalmente."
  exit 0
else
  echo "[ERRO] Aplicação está fora do ar!"
  exit 1
fi
