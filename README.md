# Sara Pastelería - Sistema de Gestión

Este es un sistema de gestión web ligero y responsivo diseñado especialmente para pastelerías, panaderías o negocios gastronómicos afines. Permite administrar productos, controlar el stock de insumos, asociar recetas a los productos, registrar ventas diarias y visualizar reportes financieros mensuales.

El sistema está desarrollado con tecnologías web estándar (HTML, CSS, JS) y utiliza **Supabase** como backend en la nube sin necesidad de dependencias o librerías pesadas (interactúa directamente a través de fetch con la API REST de Supabase).

---

## 🚀 Características Principales

*   🧁 **Productos:** Catálogo completo donde definir el precio de venta y costo de producción. Calcula de forma automática la ganancia neta y el margen de ganancia porcentual de cada producto.
*   📦 **Insumos (Stock):** Control detallado de inventario. Lleva el cálculo del stock actual considerando: `Stock Inicial + Compras - Consumo`. Alerta visualmente si el stock es bajo o si se encuentra agotado.
*   📋 **Recetas:** Permite asociar insumos e ingredientes a cada producto especificando las cantidades necesarias.
*   💰 **Ventas:** Registro ágil de ventas diarias. Calcula automáticamente los totales y permite filtrar por mes y producto.
*   📊 **Resumen (Dashboard):** Sección analítica mensual con KPIs clave:
    *   Total de Ventas
    *   Total de Costos
    *   Ganancia Neta Total
    *   Margen de Ganancia Promedio
    *   Gráfico comparativo de Ventas vs Ganancia por mes.
*   🔍 **Herramienta de Diagnóstico:** Incluye un validador integrado en la parte superior para testear la conectividad en tiempo real con las tablas de tu base de datos de Supabase.

---

## 🛠️ Tecnologías Utilizadas

*   **Frontend:** HTML5, CSS3 (diseño moderno con gradientes, alertas estilizadas y animaciones suaves) y JavaScript Moderno (ES6+).
*   **Backend & DB:** Supabase REST API (las credenciales se guardan de forma segura localmente en el navegador usando `localStorage`).
*   **Servidor local:** Python (servidor HTTP ligero integrado).

---

## 💻 Instalación y Configuración Local

### Paso 1: Configurar la Base de Datos en Supabase
1. Ingresá en [supabase.com](https://supabase.com/), create una cuenta gratuita y creá un nuevo proyecto.
2. Una vez creado el proyecto, ve al menú lateral izquierdo: **SQL Editor** -> haz clic en **New Query**.
3. Copiá el contenido del archivo `supabase-setup.sql` de este repositorio, pegalo en el editor y presioná **Run** para crear la estructura de las tablas e índices necesarios.

### Paso 2: Ejecutar la Aplicación Localmente
1. Cloná este repositorio o descargá los archivos.
2. Hacé doble clic en el archivo ejecutable **`Iniciar App.bat`**.
   *(Este script levantará un servidor local rápido en Python en el puerto 8080 y abrirá automáticamente tu navegador en `http://localhost:8080`).*

### Paso 3: Conectar la Aplicación
1. En la barra superior amarilla del sistema, verás los campos para ingresar las credenciales de Supabase:
   *   **URL:** Copiala desde tu proyecto de Supabase en *Settings -> API -> Project URL* (ej: `https://xxxx.supabase.co`).
   *   **Anon Key:** Copiá la clave pública larga que empieza con `eyJ...` desde *Settings -> API -> Project API keys (anon / public)*.
2. Hacé clic en **Conectar**. El sistema se conectará de inmediato y cambiará la barra de estado superior a verde indicando conexión exitosa.
3. Podés utilizar el botón **🔍 Diagnosticar** para verificar si hay algún problema de red, tabla inexistente o credenciales erróneas.
