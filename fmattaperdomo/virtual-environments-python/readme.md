# Virtual Environments Python

Ejercicios de Python usando **entornos virtuales (venv)** para aislar las dependencias de cada proyecto.

## Preparación del entorno virtual

Antes de ejecutar cualquier proyecto, se recomienda crear y activar un entorno virtual:

```bash
# Crear el entorno virtual
python3 -m venv .venv

# Activar el entorno virtual (Linux/macOS)
source .venv/bin/activate

# Desactivar al terminar
deactivate
```

## Estructura de carpetas

```text
virtual-environments-python/
├── apirest/
│   ├── main.py            # API REST con Flask
│   ├── client.py          # Cliente HTTP que consume la API
│   └── utils/
│       └── example.json   # Datos de ejemplo (PokeAPI)
└── my-first-package/
    ├── main.py            # Script principal
    └── utils/
        └── red.py         # Módulo con función es_exitoso()
```

---

## 📁 apirest

### Funcionalidad

Proyecto de API REST construido con **Flask**:

- **`main.py`**: define una aplicación Flask con una ruta raíz (`/`) que responde con el contenido del archivo `utils/example.json` (un listado de pokémones obtenido de la PokeAPI).
- **`client.py`**: cliente que usa la librería **requests** para hacer una petición `GET` a la API local (`http://127.0.0.1:5000/`) e imprimir la respuesta JSON en consola.
- **`utils/example.json`**: archivo JSON de ejemplo que la API entrega como respuesta.

### Dependencias

```bash
pip install flask requests
```

### Comandos de ejecución

1. Levantar el servidor Flask (desde la carpeta `apirest`):

```bash
cd apirest
flask --app main run
```

2. En otra terminal (con el entorno virtual activo), ejecutar el cliente:

```bash
python client.py
```

El cliente imprimirá el JSON devuelto por la API.

---

## 📁 my-first-package

### Funcionalidad

Ejemplo de **organización de código en paquetes/módulos** propios:

- **`main.py`**: script principal que importa la función `es_exitoso` desde el paquete `utils` y la prueba con varios códigos de estado HTTP (200, 301, 404, 503), imprimiendo `OK` o `FALLA` según corresponda.
- **`utils/red.py`**: módulo que define la función `es_exitoso(codigo)`, la cual devuelve `True` si el código HTTP indica éxito (entre 200 y 399).

### Dependencias

No requiere librerías externas, solo Python estándar.

### Comando de ejecución

```bash
cd my-first-package
python main.py
```

Salida esperada:

```text
200 OK
301 OK
404 FALLA
503 FALLA
```
