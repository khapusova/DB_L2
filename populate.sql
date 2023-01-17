INSERT INTO country(country_id, country)
VALUES
  (1, 'USA'),
  (2, 'China'),
  (3, 'Germany'),
  (4, 'Netherlands');

INSERT INTO state(state_id, state)
VALUES
  (0, '-'),
  (1, 'CA'),
  (2, 'GA'),
  (3, 'VA'),
  (4, 'UT'),
  (5, 'IL');
    
INSERT INTO place(place_id, country_id, state_id)
VALUES
  (1, 1, 1),
  (2, 1, 2),
  (3, 3, 0),
  (4, 2, 0),
  (5, 1, 3),
  (6, 1, 4),
  (7, 1, 5),
  (8, 4, 0);

INSERT INTO time(time_id, date)
VALUES
  (1, DATE('2022-8-15')),
  (2, DATE('2021-7-23')),
  (3, DATE('2021-3-10')),
  (4, DATE('2020-8-13')),
  (5, DATE('2016-1-20')),
  (6, DATE('2013-4-2')),
  (7, DATE('2018-12-30')),
  (8, DATE('2019-11-14')),
  (9, DATE('2020-03-01'));

INSERT INTO reason(reason_id, reason)
VALUES
  (1, 'Tesla veers into oncoming traffic'),
  (2, 'Tesla Driver loses control'),
  (3, 'Tesla crashes into tree'),
  (4, 'AutoPilot into street sweeper'),
  (5, 'Tesla veers into opposite lane'),
  (6, 'Single car collision'),
  (7, 'Tesla kills pedestrian');


INSERT INTO death(death_id, place_id, time_id, reason_id, number_of_deaths, is_driver_dead, is_occupant_dead)
VALUES
  (253, 1, 1, 1, 4, true, true),
  (171, 2, 2, 2, 1, true, false),
  (147, 1, 3, 3, 2, true, true),
  (125, 3, 4, 3, 1, true, false),
  (12, 4, 5, 4, 1, true, false),
  (1, 1, 6, 5, 2, false, false),
  (55, 5, 7, 6, 1, true, false),
  (88, 3, 8, 7, 1, true, false),
  (204, 6, 2, 5, 1, true, false),
  (100, 7, 8, 3, 3, true, true),
  (148, 8, 9, 1, 2, true, true);

 