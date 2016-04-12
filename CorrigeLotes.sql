select * from tblLote where lote_articulodescripcion like '%CHEESCAKE COOKIE DOU%' and lote_id = 13  --3048

--13	2016-03-07 00:00:00.000	INICIO	3048	E CHEESCAKE COOKIE DOUGH INV	4	4	QG	0,25	0	0	2016-03-10 02:21:24.000	0

--update tblLote set where lote_articulodescripcion like '%CHEESCAKE COOKIE DOU%' and lote_id = 13

select * from tblMovimiento 
where mov_codarticulo = 3048 and mov_fecha >= cast ('2016-04-05' as date)
and mov_almacenorigen = 'QG'

--SOLO REALIZARLO CUANDO EL STOCK ESTA EN CERO.
/*
update  tblMovimiento set mov_cantidad = 0, mov_cantidadpendiente=0 where mov_codarticulo = 3048 and mov_fecha >= cast ('2016-04-05' as date)
and mov_almacenorigen = 'QG'
*/