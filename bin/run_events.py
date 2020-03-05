import psycopg2

try:
    conn = psycopg2.connect(
        database="db1",
        user="postgres",
        password="password",
        host="rds.amazonaws.com",
        port='5432'
    )
except:
    print "Postgres connection error."

try:
    qry1 = conn.cursor()
    qry1.execute("SELECT * FROM events")
except:
    qry2 = conn.cursor()
    qry2 = 
