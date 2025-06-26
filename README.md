#  Task 3: Writing Basic SELECT Queries – README

##  Objective:
To understand and practice the basic SQL commands used to retrieve and filter data from a database using:

- `SELECT`
- `WHERE`
- `ORDER BY`
- `LIMIT`

---

##  Concepts Learned

### 1. SELECT
**Definition:**  
Used to retrieve data from one or more columns in a table.

**Syntax:**
```sql
SELECT column1, column2 FROM table_name;
```

**Example:**
```sql
SELECT name, specialization FROM Doctors;
```

 You can also use `SELECT *` to get **all columns**:
```sql
SELECT * FROM Patients;
```

---

### 2. WHERE
**Definition:**  
Filters rows based on a specific condition.

**Syntax:**
```sql
SELECT * FROM table_name
WHERE condition;
```

**Example:**
```sql
SELECT * FROM Patients
WHERE gender = 'Female';
```

---

### 3. BETWEEN
**Definition:**  
Used with `WHERE` to filter values within a specific **range**, inclusive.

**Syntax:**
```sql
SELECT * FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

**Example:**
```sql
SELECT name, date_of_birth FROM Patients
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
```

---

### 4. OR
**Definition:**  
Returns rows when **any one of multiple conditions is true**.

**Syntax:**
```sql
SELECT * FROM table_name
WHERE condition1 OR condition2;
```

**Example:**
```sql
SELECT name FROM Doctors
WHERE specialization = 'Cardiologist' OR specialization = 'Neurologist';
```

---

### 5. ORDER BY
**Definition:**  
Sorts the result set in **ascending (`ASC`)** or **descending (`DESC`)** order.

**Syntax:**
```sql
SELECT * FROM table_name
ORDER BY column_name ASC|DESC;
```

**Example:**
```sql
SELECT name, total_amount FROM Billing
ORDER BY total_amount DESC;
```

---

### 6. LIMIT
**Definition:**  
Restricts the number of rows returned by a query.

**Syntax:**
```sql
SELECT * FROM table_name
LIMIT number;
```

**Example:**
```sql
SELECT * FROM Patients
LIMIT 2;
```

---
### 6. LIKE
**Definition:**  
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column (usually text).

**Syntax:**
```sql
SELECT column1, column2
FROM table_name
WHERE column_name LIKE pattern;

```
| Symbol | Meaning                             | Example                |
| ------ | ----------------------------------- | ---------------------- |
| `%`    | Matches **zero or more characters** | `'A%'` → Starts with A |
| `_`    | Matches **exactly one character**   | `'J_n'` → "Jan", "Jon" |



##  Outcome:

- Retrieve data using `SELECT`
- Filter records with `WHERE`, `OR`, and `BETWEEN`
- Sort results using `ORDER BY`
- Limit the output using `LIMIT`

---


