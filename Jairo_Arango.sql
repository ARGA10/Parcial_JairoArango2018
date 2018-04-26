
plsql.execute <<-SQL
 -- CREACION TABLESPACE SIN PUNTO Y COMA
 -- EJEMPLO CREATE TABLESPACE ...

CREATE TABLESPACE mid_term
        DATAFILE 'D:\Project\AdminDatabase\mid_term' SIZE 25M

plsql.execute <<-SQL
 -- CREACION PERFIL SIN PUNTO Y COMA
 -- EJEMPLO CREATE PROFILE ...

alter session set "_ORACLE_SCRIPT"=true
  
 CREATE PROFILE exam LIMIT
        IDLE_TIME           10
        FAILED_LOGIN_ATTEMPTS   4



plsql.execute <<-SQL
 -- CREACION USUARIO SIN PUNTO Y COMA
 -- EJEMPLO CREATE USER

CREATE USER ejercicios
		IDENTIFIED BY ejercicios
		PROFILE exam
		DEFAULT TABLESPACE mid_term

    GRANT DBA, CONNECT TO ejercicios
