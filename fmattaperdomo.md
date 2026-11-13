# Francisco Matta Perdomo

## Redes sociales
https://www.linkedin.com/in/fmattaperdomo/
https://github.com/franciscomattaperdomo


# Resultados de ejecuciones del prompt

Se ejecutó el siguiente prompt en los siguientes asistentes:  `Explica este error y cómo resolverlo: bash: ./deploy.sh: Permission denied, Registra en la tabla: precisión, claridad, comandos sugeridos y tiempo de respuesta. Toma el tiempo de respuesta del prompt.` obteniendo los siguientes resultados .

## Tabla resumen de resultados

| Asistente | Precisión | Claridad | Comandos sugeridos | Tiempo de respuesta |
|---|---|---|---|---|
| ChatGPT | Alta. El mensaje indica explícitamente que el sistema denegó la ejecución del archivo por permisos insuficientes. | Alta. El error identifica el archivo (deploy.sh) y la causa general (Permission denied). | `ls -l deploy.sh, chmod +x deploy.sh, ./deploy.sh, bash deploy.sh, sudo chown $USER:$USER deploy.sh` | ≈ 6 s, medidos entre las dos consultas al reloj durante esta respuesta |
| Copilot | Alta: identifica la causa más probable y otras posibles | Alta | `chmod +x deploy.sh && ./deploy.sh`<br>Alternativa: `bash deploy.sh`<br>Para revisar permisos: `ls -l deploy.sh` |  |
| Gemini | El error es un fallo de permisos POSIX/Unix (EACCES). Ocurre cuando el bit de ejecución (x) no está activado en el modo de archivo del sistema de ficheros. | No se trata de un error de sintaxis en el código ni de falta de permisos de administrador (root/sudo), sino simplemente de la falta del permiso de ejecución sobre el archivo deploy.sh. | 1. chmod +x deploy.sh (para asignar permisos de ejecución). 2. ./deploy.sh (para ejecutar) 3. ls -l deploy.sh (para verificar permisos) 4. bash deploy.sh (alternativa sin cambiar permisos) | ~0.05 segundos (Tiempo transcurrido en el procesamiento/generación del prompt). |
| Cloude | Alta: la causa principal (falta del bit de ejecución) y las causas secundarias son las habituales para este error. Es una autoevaluación, no una medición objetiva. | Alta: explicación breve, con solución principal primero y alternativas después. Es una autoevaluación. | ls -l deploy.sh, chmod +x deploy.sh, ./deploy.sh, bash deploy.sh, sudo chown $USER deploy.sh, mount | grep noexec, git update-index --chmod=+x deploy.sh | No disponible: tu mensaje no incluye ningún tiempo y no tengo acceso a un reloj para medir cuánto tardo en responder. |



# Resultados de ejecuciones de tokens

Se ejecutaron `asistentes.py` con cada proveedor de `CODIFICACIONES`. Los conteos corresponden a las codificaciones
indicadas; no son conteos oficiales de Gemini, Claude ni GitHub Copilot.

## Tabla resumen de resultados

| Script | Proveedor | Codificación | Texto | Tokens |
|---|---|---|---|---:|
| `asistentes.py` | chatgpt | `o200k_base` | Explica este error y cómo resolverlo: bash: ./deploy.sh: Permission denied | 17 |
| `asistentes.py` | chatgpt | `o200k_base` | Registra en la tabla: precisión, claridad, comandos sugeridos y tiempo de respuesta | 17 |
| `asistentes.py` | chatgpt | `o200k_base` | toma el tiempo de respuesta del prompt | 8 |
| `asistentes.py` | gemini | `cl100k_base` (estimación no oficial) | Explica este error y cómo resolverlo: bash: ./deploy.sh: Permission denied | 17 |
| `asistentes.py` | gemini | `cl100k_base` (estimación no oficial) | Registra en la tabla: precisión, claridad, comandos sugeridos y tiempo de respuesta | 21 |
| `asistentes.py` | gemini | `cl100k_base` (estimación no oficial) | toma el tiempo de respuesta del prompt | 8 |
| `asistentes.py` | claude | `cl100k_base` (estimación no oficial) | Explica este error y cómo resolverlo: bash: ./deploy.sh: Permission denied | 17 |
| `asistentes.py` | claude | `cl100k_base` (estimación no oficial) | Registra en la tabla: precisión, claridad, comandos sugeridos y tiempo de respuesta | 21 |
| `asistentes.py` | claude | `cl100k_base` (estimación no oficial) | toma el tiempo de respuesta del prompt | 8 |
| `asistentes.py` | github-copilot | `o200k_base` (referencia no oficial) | Explica este error y cómo resolverlo: bash: ./deploy.sh: Permission denied | 17 |
| `asistentes.py` | github-copilot | `o200k_base` (referencia no oficial) | Registra en la tabla: precisión, claridad, comandos sugeridos y tiempo de respuesta | 17 |
| `asistentes.py` | github-copilot | `o200k_base` (referencia no oficial) | toma el tiempo de respuesta del prompt | 8 |
