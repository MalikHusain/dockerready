# Dockerizado de Aplicaciones Web: Un Ejemplo Práctico 🐳

Este proyecto es un ejemplo sencillo y práctico de cómo **dockerizar dos aplicaciones web con Node.js y levantarlas eficientemente usando Docker Compose**. Es una excelente forma de aprender los fundamentos de la orquestación de contenedores.

## Estructura del Proyecto

La organización del repositorio es clara y fácil de seguir:

```
/proyecto
├── /app1
│   ├── index.js
│   ├── package.json
│   └── Dockerfile
├── /app2
│   ├── index.js
│   ├── package.json
│   └── Dockerfile
└── docker-compose.yml
```

  - **`app1`**: Una aplicación web básica de Node.js que se ejecuta en el puerto `3001`.
  - **`app2`**: Otra aplicación web simple de Node.js, corriendo en el puerto `3002`.
  - **`docker-compose.yml`**: El archivo clave que define y gestiona los servicios para levantar ambas aplicaciones con un solo comando.


## Guía de Uso

### Opción 1: Ejecutar sin Docker (Local)

Si prefieres ejecutar las aplicaciones de forma tradicional, sigue estos pasos. **Asegúrate de tener Node.js y npm instalados**.

1.  Navega a cada directorio e instala las dependencias:

    ```
    cd app1
    npm install
    npm start
    ```

2.  En una nueva terminal, haz lo mismo para la segunda aplicación:

    ```
    cd app2
    npm install
    npm start
    ```

  - **App1** estará disponible en `http://localhost:3001`
  - **App2** estará disponible en `http://localhost:3002`


### Opción 2: El Camino Docker (Objetivo del proyecto)

Esta es la forma más limpia y portátil. **Necesitas tener Docker y Docker Compose instalados**.

1.  Desde el directorio raíz del proyecto, ejecuta este comando:
    ```
    docker-compose up --build
    ```
    Docker se encargará de construir las imágenes y levantar los contenedores de ambas aplicaciones, ¡sin necesidad de instalar Node.js en tu máquina\!

  - **App1** estará disponible en `http://localhost:3001`
  - **App2** estará disponible en `http://localhost:3002`

2.  Para detener y eliminar los contenedores, simplemente presiona `Ctrl+C` en la terminal o ejecuta:
    ```
    docker-compose down
    ```

## Consideraciones Adicionales

  - Las carpetas **`node_modules` no están incluidas** en el repositorio. Docker se encarga de instalar estas dependencias dentro de los contenedores, garantizando que el entorno sea consistente para todos los desarrolladores.
  - Este proyecto está diseñado con fines de **aprendizaje y demostración**. Es una base sólida para entender cómo **Docker simplifica los flujos de trabajo de desarrollo** y despliegue.