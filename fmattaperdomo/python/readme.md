# Python — Bootcamp DevOps

Esta carpeta contiene ejercicios en Python que cubren los fundamentos del lenguaje aplicados a tareas DevOps.

## Requisitos

- Python 3.10 o superior.
- (Opcional pero recomendado) Un entorno virtual activo:

```bash
# Verificar la versión (debe ser 3.10 o superior)
python3 --version

# Crear y activar un entorno virtual aislado
python3 -m venv .venv
source .venv/bin/activate        

# Actualizar pip y confirmar que usamos el Python del entorno
python -m pip install --upgrade pip
python -c "import sys; print(sys.executable)"

# Evitar subir el entorno al repo
echo ".venv/" >> .gitignore
python3 -m venv .venv
source .venv/bin/activate
```

## Descripción de los archivos

### [variables.py](./variables.py)

Muestra los tipos de datos básicos de Python (`str`, `int`, `float`, `bool`) usando datos típicos de un servidor (nombre, puerto, uso de CPU, estado). Incluye operaciones aritméticas, comparaciones, división entera/módulo y formateo de cadenas con f-strings.

```bash
python3 variables.py
```

### [condicionales-bucles.py](./condicionales-bucles.py)

Recorre una lista de códigos de estado HTTP y los clasifica con `if/elif/else` (OK, error del cliente, error del servidor). También muestra un bucle `while` que simula reintentos de conexión.

```bash
python3 condicionales-bucles.py
```

### [estructura-datos.py](./estructura-datos.py)

Repasa las estructuras de datos principales:

- **Lista**: inventario de servidores con `append`.
- **Tupla**: conexión `(host, puerto)` con desempaquetado.
- **Diccionario**: conteo de códigos HTTP con `get`.
- **Set**: eliminación de IPs duplicadas.

```bash
python3 estructura-datos.py
```

### [funciones-errores.py](./funciones-errores.py)

Define la función `porcentaje_errores(errores, total)` con docstring y manejo de excepciones (`try/except`): captura `ZeroDivisionError` cuando el total es 0 y `TypeError` cuando se pasan datos inválidos.

```bash
python3 funciones-errores.py
```

### [manejo-archivos.py](./manejo-archivos.py)

Demuestra lectura y escritura de archivos con `with open(...)`:

1. Crea `servidores.txt` con el estado de dos servidores.
2. Lee el archivo y separa las líneas en campos (maneja `FileNotFoundError`).
3. Genera `reporte.csv` con encabezados usando el módulo `csv`.

```bash
python3 manejo-archivos.py
```

Al ejecutarlo se generan los archivos `servidores.txt` y `reporte.csv` en el directorio actual.

### [venv-gitignore.py](./venv-gitignore.py)

> **Nota:** aunque tiene extensión `.py`, este archivo contiene **comandos de bash**, no código Python. No se ejecuta con `python3`; sus comandos se copian y ejecutan directamente en la terminal.

Es una guía paso a paso para:

1. Verificar la versión de Python (`python3 --version`).
2. Crear y activar un entorno virtual aislado (`python3 -m venv .venv` + `source .venv/bin/activate`).
3. Actualizar `pip` y confirmar que se usa el Python del entorno.
4. Agregar `.venv/` al `.gitignore` para no subir el entorno al repositorio.

## Forma de ejecución

Desde esta carpeta (`fmattaperdomo/python/`), ejecutar cada script con:

```bash
python3 <nombre-del-archivo>.py
```

Ejemplo:

```bash
cd fmattaperdomo/python
python3 variables.py
```
