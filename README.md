# oracle-cursor-vs-sysrefcursor

This repository contains two PL/SQL examples demonstrating the difference between a static `CURSOR` and a dynamic `SYS_REFCURSOR` in Oracle.
It also includes a sample `employees` table with data for testing.

## 🔍 Differences between CURSOR and SYS_REFCURSOR

| Feature             | CURSOR (Static)                          | SYS_REFCURSOR (Dynamic)                    |
|---------------------|------------------------------------------|---------------------------------------------|
| Query definition    | Fixed at compile time                    | Can be defined at runtime                  |
| Flexibility         | Low                                      | High                                        |
| Column structure    | Must be known at compile time            | Can vary based on runtime query             |
| Use case            | Fixed queries with known structure       | Variable queries, passing cursors to procs |
| Type                | Strongly typed                           | Weakly typed (more generic)                 |
