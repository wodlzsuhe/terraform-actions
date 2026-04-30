# Rebase: limpieza de commits

## Estado inicial
El historial tenia commits con mensajes genericos.

## Proceso
1. Use git rebase -i HEAD~3.
2. Reword en el primero y squash en los siguientes.
3. Reescribi el mensaje final con un texto claro.

## Sincronizacion remota
Use git push origin main --force para actualizar el historial.
