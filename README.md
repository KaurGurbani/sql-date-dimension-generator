# SQL Date Dimension Generator 📅

This project provides a SQL Server stored procedure that generates a comprehensive **Date Dimension** table for use in data warehousing, reporting, or analytics.

## 🧩 Features

- Generates 365 or 366 rows (leap year aware)
- Single `INSERT` using a recursive CTE
- Includes calendar and fiscal attributes
- Uses input date to determine the target year

## 🏗️ Table Schema

The table `DateDimension` includes the following attributes:

| Column             | Description                           |
|--------------------|---------------------------------------|
| SKDate             | Surrogate key in YYYYMMDD format      |
| KeyDate, Date      | The actual date                       |
| CalendarDay        | Day of month                          |
| CalendarMonth      | Month (1-12)                          |
| CalendarQuarter    | Quarter (1-4)                         |
| CalendarYear       | Year                                  |
| DayNameLong        | Full name of the weekday              |
| DayNameShort       | Short name (3-letter) of weekday      |
| DayNumberOfWeek    | Weekday number (1–7)                  |
| DayNumberOfYear    | Day of year (1–366)                   |
| DaySuffix          | 1st, 2nd, 3rd, etc.                   |
| FiscalWeek         | Week of fiscal year                   |
| FiscalPeriod       | Period (default: month)               |
| FiscalQuarter      | Quarter (default: calendar quarter)   |
| FiscalYear         | Year (default: calendar year)         |
| FiscalYearPeriod   | Fiscal Year + Period, e.g., 202004    |

## 📦 How to Use

1. Clone this repo:
    ```bash
    git clone https://github.com/yourusername/sql-date-dimension-generator.git
    cd sql-date-dimension-generator/scripts
    ```

2. Run the SQL scripts in the following order:
    - `create_table.sql` — Creates the target table
    - `populate_date_dimension_proc.sql` — Creates the stored procedure
    - `sample_execution.sql` — Example call to generate data

## 🔧 Example

```sql
EXEC PopulateDateDimension @InputDate = '2025-07-14';
SELECT * FROM DateDimension WHERE CalendarYear = 2025;
