set serveroutput on
create or replace procedure palindrome(s in varchar)is
rev varchar(10);
begin
    rev:='';
    for i in reverse 1..length(s)
    loop
        rev:=rev||substr(s,i,1);
    end loop;
    if(s=rev)
    then
        dbms_output.put_line('Palindrome');
    else
        dbms_output.put_line('Not Palindrome');
    end if;
end palindrome;
/

declare
    str varchar(10);
begin
    str:='&str';
    palindrome(str);
end;
/