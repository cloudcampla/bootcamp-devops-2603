from utils.red import es_exitoso


def main():
    for codigo in (200, 301, 404, 503):
        print(codigo, "OK" if es_exitoso(codigo) else "FALLA")

if __name__ == "__main__":
    main()