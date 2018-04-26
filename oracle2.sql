---1.
CREATE OR REPLACE FUNCTION function_1(a in numeric, b in numeric, c in numeric)
RETURN varchar IS 
BEGIN
    
    IF (b >= c ) THEN
        DBMS_OUTPUT.PUT_LINE(a ||'/'|| a*b || '/andres');
    ELSE
        DBMS_OUTPUT.PUT_LINE(a ||'/'|| a*b || '/martinez');
    END IF;
    RETURN 'FIN';  

END;


BEGIN 
        DBMS_OUTPUT.PUT_LINE(function_1(3,2,1));
    
END;




----2.


CREATE OR REPLACE FUNCTION function_2(a in varchar, b in varchar, c in varchar)
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
    
    --v:=LENGTH('b');
    --FOR j IN 0..v LOOP
    --v_out  :=v_out + substr(b,j,1) ;
     --END LOOP;
    
end;

BEGIN 
        DBMS_OUTPUT.PUT_LINE(function_2('12321','martinez','254'));
    
END;



