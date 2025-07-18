# 📦 Prueba Técnica – Modelado Entidad-Relación para Ecommerce

## 📝 Enunciado

Una empresa desea construir una plataforma de ecommerce especializada en la venta de productos importados desde China. El sistema debe permitir gestionar productos, pedidos, clientes, proveedores chinos y la logística de importación.

### ✅ Requerimientos principales:

1. **Productos:** Cada producto tiene nombre, descripción, categoría, precio de compra en yuanes, precio de venta en soles, stock disponible y fecha de importación. Puede tener varias fotos y un video demostrativo. Pertenece a una categoría.
2. **Clientes:** Registrados con nombres, apellidos, tipo de documento (DNI, RUC, Pasaporte, Carnet de Extranjería), correo, dirección de envío y teléfono. Un cliente puede realizar varios pedidos.
3. **Pedidos:** Incluyen fecha, estado (pendiente, pagado, enviado, entregado, cancelado), total y método de pago. Contienen varios productos, con cantidad, precio unitario y subtotal.
4. **Proveedores:** Ubicados en China, con nombre, razón social, dirección, correo de contacto y teléfono.
5. **Importaciones:** Agrupan productos en un mismo embarque, con código, fecha de llegada, empresa de transporte y costo total.

---

## 🎯 Objetivo del Proyecto

- Identificar las entidades principales del sistema.
- Definir sus atributos y claves primarias.
- Establecer relaciones entre entidades con cardinalidades y claves foráneas.
- Representar el diseño en un Diagrama Entidad-Relación (DER) con notación estándar.

---

## 📁 Archivos Incluidos

| Archivo                        | Descripción                                                             |
|-------------------------------|-------------------------------------------------------------------------|
| `PruebaTecnica.sql`           | Script SQL completo para crear la base de datos en PostgreSQL          |
| `script_postgresql.txt`       | Versión alternativa del script SQL (texto plano)                        |
| `script_dbdiagram.dbml`       | Script en formato DBML para importar en [dbdiagram.io](https://dbdiagram.io) |
| `script_dbdiagram.dbml.txt`   | Copia del script DBML (compatible con otras herramientas)              |

---

## 🧰 Tecnologías Utilizadas

- **PostgreSQL** – Diseño de base de datos relacional
- **DBDiagram.io** – Herramienta para el diseño del DER
- **Git / GitHub** – Control de versiones y repositorio

---

## 📌 Instrucciones

1. Puedes abrir el archivo `script_dbdiagram.dbml` en [dbdiagram.io](https://dbdiagram.io) para visualizar el DER.
2. Para probar la base de datos, ejecuta el script `PruebaTecnica.sql` en tu entorno PostgreSQL local.
3. Puedes clonar este repositorio con:

   ```bash
   git clone https://github.com/Powerwid/Prueba.git
