import psycopg2
import matplotlib.pyplot as plt

username = 'khapusova_diana'
password = 'lask3w0984resh'
database = 'postgres'
host = 'localhost'
port = '5433'

query_1 = '''
SELECT state, SUM(number_of_deaths) FROM death
INNER JOIN place ON death.place_id = place.place_id
INNER JOIN state ON place.state_id = state.state_id
WHERE place.state_id != 0
GROUP BY state;
'''
query_2 = '''
SELECT country, SUM(deaths)/(
SELECT sum(deaths) FROM 
(SELECT country, sum(number_of_deaths) as deaths FROM death
INNER JOIN place ON death.place_id = place.place_id
INNER JOIN country ON place.country_id = country.country_id
group by country) AS table1) as death_percentage FROM (SELECT country, sum(number_of_deaths) as deaths FROM death
INNER JOIN place ON death.place_id = place.place_id
INNER JOIN country ON place.country_id = country.country_id
GROUP BY country) AS table2
GROUP BY country;
'''
query_3 = '''
SELECT EXTRACT(YEAR FROM date) as years, sum(number_of_deaths) as deaths FROM death
INNER JOIN time ON death.time_id = time.time_id
GROUP BY years
ORDER BY years
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    print("Database opened successfully")
    cur = conn.cursor()

    print('\n1: кількість смертей у штатах')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\n2: частка смертей по країнах')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\n3: кількість смертей по рокам')
    cur.execute(query_3)
    for row in cur:
        print(row)