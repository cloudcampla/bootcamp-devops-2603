Hola, soy Ana Paula Santillan 👋😄. Mi linkedin es https://www.linkedin.com/in/anisantillans/

# Lab: Comparar LLMs y medir sus límites

El prompt que se utilizó: *'Explica este error y cómo resolverlo: bash: ./deploy.sh: Permission denied'*

Pregunta usada para la alucinación: *'Explica la opción `--turbo-sync` de rsync.'*

| Tipo | GPT-6 | Gemini 3 | Sonnet 5.5 |
|---|---|---|---|
| Precisión | Alta | Baja | Media |
| Claridad | Alta | Baja | Media |
| Comandos sugeridos | `chmod +x deploy.sh`<br>`./deploy.sh`<br>Verificar permisos: `ls -l deploy.sh`<br>`-rw-r--r-- deploy.sh`<br>`-rwxr-xr-x deploy.sh`<br>`bash deploy.sh` | Abre tu terminal y ejecuta: `chmod +x deploy.sh`<br>*Verificación:* ejecuta `ls -l deploy.sh`, luego `./deploy.sh` | `chmod +x deploy.sh`<br>`./deploy.sh`<br>Para que no te vuelva a pasar en git: `git update-index --chmod=+x deploy.sh`<br>`git commit -m "make deploy.sh executable"` |
| Tiempo de respuesta | 5,64 s | 8,76 s | 7,98 s |
| Número de tokens de entrada | 17 | 17 | 17 |
| Número de tokens de salida | 307 tokens | 258 tokens | 299 tokens |
| Test de alucinación | `--turbo-sync` no es una opción estándar de rsync. No aparece en la documentación oficial. | `--turbo-sync` no es un parámetro nativo u oficial del comando rsync. No existe ninguna opción con ese nombre. | `--turbo-sync` no existe en rsync. Seguramente lo viste en un tutorial inventado, un post generado por IA, o lo confundes con otra herramienta. |