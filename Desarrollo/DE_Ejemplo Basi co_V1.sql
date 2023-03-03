--------------------------------------------------------------------------------
-- Version          1
-- Fecha            14 de junio del 2022
-- Objetivo         CRUD DE CONTROL DE ARTICULOS
-- Base de Datos    mtssdds
--------------------------------------------------------------------------------

-- TABLAS DEL FLUJO 
-- msmtsc_control_articulos
-- msmtsc_control_articulos_recepcion

DESCRIBE mtssdds.msmtsc_control_articulos ;
DELETE FROM mtssdds.msmtsc_control_articulos;

TRUNCATE TABLE mtssdds.msmtsc_control_articulos_recepcion;
COMMIT;
TRUNCATE TABLE mtssdds.msmtsc_control_articulos;
COMMIT;

SELECT  ID_CA,
        NO_FOLIO_CONTROL,
        FECHA,
        NO_CAMA,
        SERVICIO,
        TELEFONO,
        NOMBRE_RECIBE,
        NOMBRE_ENTREGA,
        UBICACION,
        HORARIO_ENTREGA_ARTICULO,
        RESGUARDO_FECHA,
        RESGUARDO_HORA,
        RESGUARDO_NOMBRE_RECIBE,
        RESGUARDO_NOMBRE_ENTREGA,
        RECEPCION_FECHA,
        RECEPCION_HORA,
        RECEPCION_NOMBRE_RECIBE,
        RECEPCION_NOMBRE_ENTREGA,
        RECEPCION_UBICACION,
        RECEPCION_HORARIO_ENTREGA_ARTICULO
FROM    mtssdds.msmtsc_control_articulos ;


INSERT  INTO mtssdds.msmtsc_control_articulos (
        -- ID_CA,
        NO_FOLIO_CONTROL,
        FECHA,
        NO_CAMA,
        SERVICIO,
        TELEFONO,
        NOMBRE_RECIBE,
        NOMBRE_ENTREGA,
        UBICACION,
        HORARIO_ENTREGA_ARTICULO,
        RESGUARDO_FECHA,
        RESGUARDO_HORA,
        RESGUARDO_NOMBRE_RECIBE,
        RESGUARDO_NOMBRE_ENTREGA,
        RECEPCION_FECHA,
        RECEPCION_HORA,
        RECEPCION_NOMBRE_RECIBE,
        RECEPCION_NOMBRE_ENTREGA,
        RECEPCION_UBICACION,
        RECEPCION_HORARIO_ENTREGA_ARTICULO    
        )
VALUES (
        -- ID_CA,
        '100',
        '2010-01-12 00:00:00',
        '10',
        'SERVi',
        'TELEFONO',
        'NOMBRE_RECIBE',
        'NOMBRE_ENTREGA',
        'UBICACION',
        '10:00:00',
        '2010-01-12 00:00:00',
        '10:00:00',
        'RESGUARDO_NOMBRE_RECIBE',
        'RESGUARDO_NOMBRE_ENTREGA',
        '2010-01-12 00:00:00',
        '10:00:00',
        'RECEPCION_NOMBRE_RECIBE',
        'RECEPCION_NOMBRE_ENTREGA',
        'RECEPCION',
        '2010-01-12 13:00:00'
);
COMMIT;



SELECT  MAX(ID_CA)
FROM    mtssdds.msmtsc_control_articulos 
WHERE   NO_FOLIO_CONTROL LIKE '?'
AND     FECHA = '?';



SELECT * FROM mtssdds.msmtsc_control_articulos WHERE NO_FOLIO_CONTROL = '?' ;
UPDATE mtssdds.msmtsc_control_articulos SET NO_FOLIO_CONTROL = '10-ma3' WHERE ID_CA = 3;
COMMIT;



SELECT * FROM mtssdds.msmtsc_control_articulos WHERE NO_FOLIO_CONTROL = '10-ma3';

-- QUERY PARA OBTENER LOS ARTICULOS POR FOLIO
SELECT  CAR.*
FROM    mtssdds.msmtsc_control_articulos_recepcion CAR
INNER   JOIN mtssdds.msmtsc_control_articulos CA ON CA.id_ca = CAR.id_ca
WHERE   CA.NO_FOLIO_CONTROL = '10-ma3';


SELECT  CAR.* FROM mtssdds.msmtsc_control_articulos_recepcion CAR INNER JOIN mtssdds.msmtsc_control_articulos CA ON CA.id_ca = CAR.id_ca WHERE CA.FECHA BETWEEN '2010-01-12 00:00:00' AND '2010-01-12 00:00:00';


-- QUERY PARA OBTENER LOS ARTICULOS POR RANGO DE FECHA









