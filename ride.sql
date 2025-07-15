
-- Create

CREATE TABLE ride (
  ride_id int NOT NULL AUTO_INCREMENT,
  st_time TIME,
  end_time TIME,
  ttype char(1),
  da char(1),
  PRIMARY KEY (ride_id)
);

-- Insert

INSERT INTO ride (st_time, end_time, ttype, da)
VALUES

    -- trolleybus
    ('10:23:00', '11:05:00', 't', 'd'),
    ('10:52:00', '11:32:00', 't', 'd'),
    ('08:00:00', '08:40:00', 't', 'd'),
    ('07:59:00', '08:42:00', 't', 'd'),
    ('08:06:00', '08:47:00', 't', 'd'),
    ('08:12:00', '08:58:00', 't', 'd'),
    ('08:19:00', '09:12:00', 't', 'd'),
    ('08:19:00', '09:09:00', 't', 'd'),
    ('08:05:00', '08:47:00', 't', 'd'),
    ('18:08:00', '18:55:00', 't', 'a'),
    ('18:15:00', '19:10:00', 't', 'a'),
    ('19:12:00', '19:55:00', 't', 'a'),
    ('19:22:00', '20:01:00', 't', 'a'),
    ('08:10:00', '08:55:00', 't', 'd'),
    ('09:15:00', '09:55:00', 't', 'd'),
    ('08:07:00', '08:49:00', 't', 'd'),
    ('18:08:00', '18:55:00', 't', 'a'),
    ('18:12:00', '19:05:00', 't', 'a'),
    ('19:15:00', '20:01:00', 't', 'a'),
    ('09:20:00', '10:02:00', 't', 'd'),
    ('08:15:00', '09:03:00', 't', 'd'),
    ('09:12:00', '09:55:00', 't', 'd'),
    ('18:20:00', '19:07:00', 't', 'a'),
    ('19:14:00', '19:58:00', 't', 'a'),
    ('18:07:00', '18:55:00', 't', 'a'),
    ('08:15:00', '08:51:00', 't', 'd'),
    ('09:14:00', '09:55:00', 't', 'd'),
    ('09:25:00', '10:04:00', 't', 'd'),
    ('08:12:00', '08:53:00', 't', 'd'),
    ('08:12:00', '08:53:00', 't', 'd'),
    ('19:07:00', '19:55:00', 't', 'a'),
    ('19:07:00', '19:55:00', 't', 'a'),
    ('18:07:00', '19:02:00', 't', 'a'),
    ('18:25:00', '19:13:00', 't', 'a'),
    ('19:12:00', '20:01:00', 't', 'a'),
    
    -- metro
    ('18:36:00', '19:11:00', 'm', 'a'),
    ('08:03:00', '08:37:00', 'm', 'd'),
    ('18:06:00', '18:41:00', 'm', 'a'),
    ('18:00:00', '18:38:00', 'm', 'a'),
    ('18:12:00', '18:50:00', 'm', 'a'),
    ('18:18:00', '18:55:00', 'm', 'a'),
    ('08:04:00', '08:48:00', 'm', 'd'),
    ('08:22:00', '08:57:00', 'm', 'd'),
    ('18:14:00', '18:51:00', 'm', 'a'),
    ('08:34:00', '09:08:00', 'm', 'd'),
    ('18:04:00', '18:41:00', 'm', 'a'),
    ('08:31:00', '09:05:00', 'm', 'd'),
    ('17:47:00', '18:26:00', 'm', 'a'),
    ('08:35:00', '09:08:00', 'm', 'd'),
    ('09:27:00', '10:06:00', 'm', 'd'),
    ('17:31:00', '18:10:00', 'm', 'a'),
    ('08:34:00', '09:08:00', 'm', 'd'),
    ('17:25:00', '18:01:00', 'm', 'a'),
    ('08:40:00', '09:12:00', 'm', 'd'),
    ('17:47:00', '18:26:00', 'm', 'a'), 
    ('08:36:00', '09:11:00', 'm', 'd'),
    ('17:55:00', '18:32:00', 'm', 'a'), 
    ('08:38:00', '09:14:00', 'm', 'd'),
    ('18:01:00', '18:37:00', 'm', 'a'), 
    ('09:47:00', '10:28:00', 'm', 'd'),
    ('18:31:00', '19:02:00', 'm', 'a'),
    ('17:59:00', '18:38:00', 'm', 'a'),
    ('08:43:00', '09:20:00', 'm', 'd'),
    ('08:51:00', '09:29:00', 'm', 'd'),
    ('18:05:00', '18:44:00', 'm', 'a'), 
    ('09:02:00', '09:41:00', 'm', 'd'),
    ('18:22:00', '18:59:00', 'm', 'a'), 
    ('08:36:00', '09:10:00', 'm', 'd'),
    ('08:43:00', '09:19:00', 'm', 'd'),
    ('08:38:00', '09:15:00', 'm', 'd'); 


-- Select
 
SELECT 
ROUND(AVG(HOUR(TIMEDIFF(end_time, st_time))*60 + 
       MINUTE(TIMEDIFF(end_time, st_time))),1) as avg_time_t,
MAX(HOUR(TIMEDIFF(end_time, st_time))*60 + 
       MINUTE(TIMEDIFF(end_time, st_time))) AS max_time_t,
MIN(HOUR(TIMEDIFF(end_time, st_time))*60 + 
       MINUTE(TIMEDIFF(end_time, st_time))) AS min_time_t
FROM ride
WHERE ttype ='t';

SELECT 
ROUND(AVG(HOUR(TIMEDIFF(end_time, st_time))*60 + 
       MINUTE(TIMEDIFF(end_time, st_time))),1) as avg_time_m,
MAX(HOUR(TIMEDIFF(end_time, st_time))*60 + 
       MINUTE(TIMEDIFF(end_time, st_time))) AS max_time_m,
MIN(HOUR(TIMEDIFF(end_time, st_time))*60 + 
       MINUTE(TIMEDIFF(end_time, st_time))) AS min_time_m
FROM ride
WHERE ttype ='m';

SELECT (SELECT ROUND(AVG(HOUR(TIMEDIFF(end_time, st_time))*60 + 
       MINUTE(TIMEDIFF(end_time, st_time))),1)
        FROM ride
        WHERE ttype ='t') -
        (SELECT ROUND(AVG(HOUR(TIMEDIFF(end_time, st_time))*60 + 
       MINUTE(TIMEDIFF(end_time, st_time))),1)
        FROM ride
        WHERE ttype ='m') as delta_avg,
      
      (SELECT 
          MAX(HOUR(TIMEDIFF(end_time, st_time))*60 + 
          MINUTE(TIMEDIFF(end_time, st_time)))
          FROM ride
          WHERE ttype ='t') - 
      (SELECT 
          MAX(HOUR(TIMEDIFF(end_time, st_time))*60 + 
          MINUTE(TIMEDIFF(end_time, st_time)))
          FROM ride
          WHERE ttype ='m') as delta_max_t,
      
      (SELECT 
          MIN(HOUR(TIMEDIFF(end_time, st_time))*60 + 
          MINUTE(TIMEDIFF(end_time, st_time)))
          FROM ride
          WHERE ttype ='t') - 
      (SELECT 
          MIN(HOUR(TIMEDIFF(end_time, st_time))*60 + 
          MINUTE(TIMEDIFF(end_time, st_time)))
          FROM ride
          WHERE ttype ='m') as delta_min_t;
          
SELECT 
(SELECT COUNT(*)
FROM ride
WHERE ttype = 't') as t_rides, 
(SELECT COUNT(*)
FROM ride
WHERE ttype = 'm') as m_rides;

SELECT FLOOR((AVG(HOUR(st_time))*60 + AVG(MINUTE(st_time)))/60) AS Avg_Departure_m_Hours,
       ROUND(((AVG(HOUR(st_time))*60 + AVG(MINUTE(st_time)))/60 - 
       FLOOR((AVG(HOUR(st_time))*60 + AVG(MINUTE(st_time)))/60)) * 60, 0) AS Minutes
FROM ride 
WHERE ttype = 'm' AND da = 'd';

SELECT FLOOR((AVG(HOUR(end_time))*60 + AVG(MINUTE(end_time)))/60) AS Avg_Arrival_m_Hours,
       ROUND(((AVG(HOUR(end_time))*60 + AVG(MINUTE(end_time)))/60 - 
       FLOOR((AVG(HOUR(end_time))*60 + AVG(MINUTE(end_time)))/60)) * 60, 0) AS Minutes
FROM ride 
WHERE ttype = 'm' AND da = 'a'


