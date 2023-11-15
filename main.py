import pip install psycopg2
hostname = 'localhost'
database = 'python'
username = 'postgres'
pwd = '123'
port_id = 5432
conn = None
cur = None 
try:
    conn = psycopg2. connect (
                host = hostname,
                dbname = database,
                user = username,
                password = pwd,
                port = port_id)
    cur = conn.cursor()
    create_script = '''CREATE TABLE IF NOT EXISTS asd(
                            id      int PRIMARY KEY,
                            name    varchar(225) NOT NULL,
                            salary  int,
                            dept_id varchar(255))'''
    cur.execute(create_script)

    insert_script ='insert into asd (id, name, salary, dept_id) values (%s, %s, %s, %s)'
    insert_value = (1, 'Sultan', 123, 'asd')
    cur.execute(insert_script, insert_value)

    conn.commit()
except Exception as error:
    print (error)
finally:
    if cur is not None:
        cur.close()
    if conn is not None:
        conn.close()