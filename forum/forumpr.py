import psycopg2

DB = psycopg2.connect("dbname=forum")
c = DB.cursor()
c.execute("SELECT time, content FROM posts ORDER BY time DESC")
posts = ({'content': str(row[1]), 'time': str(row[0])} for row in c.fetchall())
print posts(0)
DB.close()

