# 📖 Data Dictionary – Pizza Sales Analysis

This dataset contains **pizza sales data** from a pizza restaurant. Each row represents an individual pizza sold in an order.

## **📝 Column Descriptions**

| **Column Name**      | **Data Type** | **Description** |
|----------------------|-------------|----------------|
| `pizza_id`          | `INTEGER`    | **Primary key** that uniquely identifies each pizza sold. |
| `order_id`          | `INTEGER`    | Represents a **unique customer order**. Multiple pizzas can be linked to the same order. |
| `pizza_name_id`     | `TEXT`       | Unique identifier for each pizza type. |
| `quantity`          | `INTEGER`    | Number of pizzas ordered in a single transaction. |
| `order_date`        | `DATE`       | The **date** when the order was placed (`DD-MM-YYYY` format). |
| `order_time`        | `TIME`       | The **exact time** when the order was placed (`HH:MM:SS` format). |
| `unit_price`        | `DECIMAL`    | The **price of a single pizza** from the menu. |
| `total_price`       | `DECIMAL`    | The total cost for the ordered quantity (`unit_price × quantity`). |
| `pizza_size`        | `TEXT`       | The size of the pizza ordered (`S`, `M`, `L`). |
| `pizza_category`    | `TEXT`       | The category of the pizza (e.g., `Classic`, `Supreme`, `Veggie`, `Chicken`). |
| `pizza_ingredients` | `TEXT`       | A list of ingredients used in the pizza recipe. |
| `pizza_name`        | `TEXT`       | The full name of the pizza as it appears on the menu. |
