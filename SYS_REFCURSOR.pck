DECLARE
    c_emp SYS_REFCURSOR;

    v_emp_id employees.employee_id%TYPE;
    v_name   employees.first_name%TYPE;
    v_salary employees.salary%TYPE;
BEGIN
    OPEN c_emp FOR
        'SELECT employee_id, first_name, salary FROM employees WHERE department_id = :dept_id'
        USING 20; 

    LOOP
        FETCH c_emp INTO v_emp_id, v_name, v_salary;
        EXIT WHEN c_emp%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_emp_id || ' - ' || v_name || ' - ' || v_salary);
    END LOOP;
    CLOSE c_emp;
END;
/
