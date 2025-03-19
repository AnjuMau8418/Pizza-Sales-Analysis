## 📌 Dataset Description – Pizza Sales Analysis
The Pizza Sales Analysis Dataset contains transactional sales data from a pizza restaurant. This dataset helps in analyzing sales trends, customer preferences, and revenue insights. It includes details on pizza orders, such as order timestamps, pizza sizes, categories, ingredients, and pricing information.
This dataset is ideal for performing SQL-based data analysis and Excel-based dashboard visualizations to extract meaningful insights about sales performance and customer behaviour.

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

## 📑 Key Features of the Dataset
Feature	Description
 - 🛒 Order Details	Includes order_id, order_date, and order_time to track when a pizza was ordered.
 - 🍕 Pizza Information	Contains pizza_id, pizza_name_id, pizza_name, and pizza_category to identify the type of pizza sold.
 - 📏 Pizza Size	Pizzas are classified by size (S, M, L).
 - 💰 Pricing Details	unit_price (cost per pizza) and total_price (cost of the full order) are included.
 - 🥗 Ingredients	The pizza_ingredients column provides a list of ingredients for each pizza type.
 - 📈 Sales Performance  The dataset allows for analyzing total sales, popular pizzas, and peak sales times.

 ## Possible Insights from the Dataset
  - Sales Trends 📊: Identify best-selling pizzas and revenue over time.
  - Top Customers’ Preferences 🍽️: Analyze which pizza category (Classic, Supreme, Veggie, Chicken) is most popular.
  - Revenue & Pricing Strategy 💰: Understand average order value and pricing effectiveness.
  - Peak Order Hours ⏰: Discover when the restaurant experiences the highest number of sales.
  - Size-Based Preferences 🍕: Determine whether customers prefer small, medium, or large pizzas.

🛠️ How This Dataset is Used in the Project
SQL Analysis 🖥️
  - Extract insights using SQL queries to analyze sales, revenue, and customer preferences.
Excel Validation & Dashboard 📊
  - Use Excel to verify SQL results and create interactive visual dashboards.

