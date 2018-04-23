#!/usr/bin/python2.4
#
# Small script to show PostgreSQL and Pyscopg together
#

import psycopg2

try:
    conn = psycopg2.connect("dbname='d30ja9oeokuudf' user='oxajqwvmxwcygq' host= 'ec2-54-221-192-231.compute-1.amazonaws.com' password='88649658013b5e0cbdf162b20cc5c46160b147eb6837d4bcc36a79b3fe107cbd'")
    cur = conn.cursor()
    cur.execute("""SELECT * FROM student""")
    rows = cur.fetchall() 
    for row in rows:
		print "   ", row[0], row[1], row[2]
except:
    print "I am unable to connect to the database"

