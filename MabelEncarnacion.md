# Mabel Encarnación Ramírez

# :sparkles: TAREA - 01 - Redes Sociales:

**LinkedIn:** https://linkedin.com/in/mabel-encarnación-ramírez 

# :robot: TAREA - 02 - Comparar LLMs y medir sus límites

| **Aspectos comparados** | **Gemini** | **Claude** | **ChatGPT** |
|:---|:---|:---|:---|
| **Precisión** | Precisa. Proporciona directamente la solución: la falta del permiso `x` de ejecución. | Precisa. Proporciona la solución y los pasos para validar los permisos una vez configurados. | Proporciona la solución y agrega información complementaria que puede no ser necesaria para el caso tratado. Aunque el error se debe a la falta de permisos de ejecución, explica otros permisos como `r` y `w`, además de otros pasos de validación, haciendo la respuesta más extensa de lo normal. |
| **Claridad** | Clara, organizada y fácil de seguir. | Clara, organizada y fácil de seguir. | Clara, organizada y fácil de seguir. |
| **Comandos sugeridos** | `chmod +x deploy.sh`<br>`./deploy.sh` | `chmod +x deploy.sh`<br>`./deploy.sh`<br>`ls -l deploy.sh`<br>`bash deploy.sh` | `ls -l deploy.sh`<br>`chmod +x deploy.sh`<br>`chmod -x deploy.sh`<br>`chmod 755 deploy.sh`<br>`bash deploy.sh`<br>`./deploy.sh` |
| **Tiempo de respuesta** | 22.70 s | 7.15 s | 11.18 s |
| **Tokens de entrada** | 19 | 19 | 19 |
| **Tokens de salida** | 242 | 396 | 748 |
| **Alucinación** | El modelo indicó que la opción `--turbo-sync` no es una opción estándar de rsync en su documentación oficial. | El modelo indicó que la opción `--turbo-sync` no es una opción estándar de rsync en su documentación oficial. | El modelo indicó que la opción `--turbo-sync` no es una opción estándar de rsync en su documentación oficial. |
