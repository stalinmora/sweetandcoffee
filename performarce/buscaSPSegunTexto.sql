-- LINEAS PARA BUSCAR EL ID SEGUN EL TEXTO A BUSCAR
select * from syscomments where ctext like '%{TEXTOABUSCAR}%'

select * from sys.sql_modules where definition like '%{TEXTOABUSCAR}%'

-- PARA SABER QUE SP SE EJECUTA CON EL TEXTO A BUSCAR

select object_name(id) from syscomments where ctext like '%{TEXTOABUSCAR}%'

 select object_name(object_id) from sys.sql_modules where definition like '%{TEXTOABUSCAR}%'
