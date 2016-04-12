select * from icg_indigo_cajas where FECHA = TO_DATE('2016/04/11', 'YYYY/MM/DD');
select * from icg_indigo_compras where FECHA = TO_DATE('2016/04/11', 'YYYY/MM/DD');

delete  icg_indigo_cajas;
delete icg_indigo_compras;

insert into icg_indigo_cajas select * from vw_icg_indigo_cajas
insert into icg_indigo_compras select * from vw_icg_indigo_compras