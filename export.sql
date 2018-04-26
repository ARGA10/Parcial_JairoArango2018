--------------------------------------------------------
--  File created - Wednesday-April-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FUNCTION_1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "EJERCICIOS"."FUNCTION_1" (a in numeric, b in numeric, c in numeric)
RETURN varchar IS 
BEGIN

    IF (b >= c ) THEN
        DBMS_OUTPUT.PUT_LINE(a ||'/'|| a*b || '/andres');
    ELSE
        DBMS_OUTPUT.PUT_LINE(a ||'/'|| a*b || '/martinez');
    END IF;
    RETURN 'FIN';  

END;
--------------------------------------------------------
--  DDL for Function FUNCTION_2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "EJERCICIOS"."FUNCTION_2" (a in varchar, b in varchar, c in varchar)
RETURN varchar as
        n number;
        m number;
        rev number;
        r number;
        v numeric;
z numeric;
BEGIN
        n:=to_number(a);
        m:=n;
        rev :=0;

    while n > 0
    loop
             r:=mod(n,10);
        rev:=(rev*10)+r;
        n:=trunc(n/10);
    end loop;

    if m=rev
    then
        dbms_output.put_line('True');
    else
        dbms_output.put_line('False');
    end if;
end;
--------------------------------------------------------
--  DDL for Function ISPALIN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "EJERCICIOS"."ISPALIN" (a in varchar, b in varchar, c in varchar)
RETURN varchar IS 
BEGIN
    declare
        n number:= TO_NUMERIC(a);
        m number:=n;
        rev number:=0;
        r number;


    while n>0
    loop
             r:=mod(n,10);
        rev:=(rev*10)+r;
        n:=trunc(n/10);
    end loop;

    if m=rev
    then
        dbms_output.put_line('number is palindrome');
    else
        dbms_output.put_line('number is not palindrome');
    end if;
    return 'fin'
end;
