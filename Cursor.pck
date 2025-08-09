declare 
    cursor c_emp is 
    select  employee_id, first_name, salary
    FROM employees
    WHERE department_id = 10;

    v_emp_id employees.employee_id%TYPE;
    v_name   employees.first_name%TYPE;
    v_salary employees.salary%TYPE;
begin
    open c_emp;
    loop 
        fetch c_emp into v_emp_id, v_name, v_salary;
        exit when c_emp%notfound;
        dbms_output.put_line(v_emp_id || ' - ' || v_name || ' - ' || v_salary);
    end loop;
    close c_emp;
 end;
