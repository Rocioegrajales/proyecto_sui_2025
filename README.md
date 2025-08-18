# proyecto_sui_2025

Proyecto realizado para certificación del Bootcamp de Sui, versión agosto de 2025.

Problema que resuelve: Organiza los pasos para un proceso de manejo de sustancias.

Descripción

El módulo proceso_total está diseñado para gestionar el proceso de manejo de residuos orgánicos sólidos. Incluye estructuras para manejar recolecciones, procesos, controles y almacenajes, lo que permite un seguimiento detallado de cada etapa en la producción.

Estructuras

1. Produccion
Descripción: Representa el proceso de producción completo.
Campos:
id: Identificador único de la producción.
recolecciones: Lista de recolecciones realizadas.
procesos: Lista de procesos aplicados.
controles: Lista de controles de calidad.
almacenajes: Lista de almacenajes realizados.

2. Recoleccion
Descripción: Detalla la recolección de materias primas.
Campos:
forma: Método de recolección (ej. domicilio).
nombre: Nombre del producto recolectado.
kilos: Cantidad en kilos.
tratado: Indica si ha sido tratado.

3. Proceso
Descripción: Describe el proceso aplicado a las materias recolectadas.
Campos:
modo: Modo de procesamiento (ej. aerobico).
dias: Duración del proceso en días.
lote: Identificador del lote.

4. Control
Descripción: Controles de calidad aplicados al producto.
Campos:
color: Color del producto.
temperatura: Temperatura de almacenamiento.
ph: Nivel de pH.
humedad: Porcentaje de humedad.
tamizado: Indica si se ha tamizado.

5. Almacenaje
Descripción: Información sobre el almacenamiento del producto.
Campos:
bodega: Identificador de la bodega.
temperatura: Temperatura de almacenamiento.
dias: Días de almacenamiento.
empacado: Indica si está empacado.

Funciones

new
Descripción: Inicializa una nueva producción y la transfiere al contexto de la transacción.
residuo
Descripción: Crea un objeto Recoleccion y lo imprime.
manejo
Descripción: Crea un objeto Proceso y lo imprime.
producto
Descripción: Crea un objeto Control y lo imprime.
bodegaje
Descripción: Crea un objeto Almacenaje y lo imprime.

prueba

Descripción: Función de prueba que llama a las funciones residuo, manejo, producto y bodegaje para verificar su funcionamiento.
Ejemplo de uso
Para utilizar este módulo, primero debes inicializar una nueva producción y luego puedes agregar recolecciones, procesos, controles y almacenajes según sea necesario. Aquí tienes un ejemplo básico de cómo se vería:

Contribuciones

Si deseas contribuir a este módulo, por favor, envía un pull request a nuestro repositorio de GitHub.
