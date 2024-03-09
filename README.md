# Pizza Sales Analysis 

## Dashboard Link
[Click here to view the dashboard](https://public.tableau.com/views/Pizza-Sales-Report/HOME?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)
<br>

![Dashboard Pizza](https://github.com/RajDev12/Pizza-Sales-Dashboard/assets/122223306/ce384f31-f80b-48d0-a3e9-840dbcd3fd58)


## Problem Statement
The objective of this project is to analyze the sales data of a pizza business to derive insights that can help improve operational efficiency, identify trends, and make informed business decisions.

## Dataset Description
The dataset contains information about pizza sales including order ID, order time, order date, quantity of pizzas sold, total price, etc. It serves as the primary source for our analysis.

## Tools Used
- SQL (Structured Query Language) for querying and analyzing the dataset.
- Database Management System (DBMS) for storing and managing the dataset.
- Tableau for visualization.

## Steps Followed

### Database Setup:
1. Created a database named Pizza DB.
2. Imported `pizza_sales.csv` as flat files.
3. Modified column datatypes (e.g., changed order_id/pizza_id from tinyint to int, pizza_category, pizza_ingredients, pizza_name from nvarchar(50) to varchar(50)).

### Tableau Desktop:
1. Connected data to MySQL server and imported CSV file.
2. Checked all the datatypes of the imported columns.
3. Created required KPIs:
   - Created calculated fields for Total revenue, Total orders, Avg order values.
   - Three methods to create calculated fields:
     - Menubar: Analysis => Create Calculated Field.
     - Click on the dropdown arrow beside the search column box.
     - Right-click on any column => Create => Calculated Field.
4. Dragged & dropped measure names in column and measure values in text.
5. Formatted numerical values of each measure values (e.g., changing larger number (38929) to 38.92K).
6. Adjusted Text formatting for better readability.

## Additional Considerations

### Key Performance Indicators (KPIs)
In Tableau, various chart types can effectively represent different KPIs:

- Total Revenue, Total Pizzas Sold, Total Orders: These metrics can be displayed in a single view using a Bar Chart. Each bar represents a KPI (Total Revenue, Total Pizzas Sold, Total Orders) with the height of the bar indicating the corresponding value.
- Average Order Value, Average Pizzas Per Order: Utilize a Dual Axis Chart, where one axis represents the Average Order Value plotted as a line chart, and the other axis represents Average Pizzas Per Order plotted with bars. This allows for easy comparison between the two metrics.

### Hourly Trend for Total Pizzas Sold
- Chart Type: Use a Line Chart.
- X-axis: Represents the hour of the day (1-24).
- Y-axis: Represents the total number of pizzas sold during each hour.
- Line: Connects data points for each hour, revealing trends in sales volume throughout the day.

### Weekly Trend for Orders
- Chart Type: Opt for a Heatmap.
- X-axis: Represents the weeks of the year (WeekNumber).
- Y-axis: Represents the year.
- Heatmap Cells: Colored based on the number of orders placed in each specific week. Darker colors indicate higher order volume, while lighter colors indicate lower order volume.

### Additional Considerations
- Titles: Ensure each chart has a clear and concise title summarizing the information.
- Labels: Axes should be labeled with appropriate units (e.g., hour, total pizzas sold, number of orders).
- Legends: If color coding is used to represent different categories (e.g., weekdays vs. weekends), include a legend to explain the color scheme.
