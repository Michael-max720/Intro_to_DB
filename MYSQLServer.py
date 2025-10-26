import mysql.connector
from mysql.connector import Error
try:
    connection = mysql.connector.connect(
    host ="localhost",
    user="root",
    password="1234",
    database="alx_book_store"
    )
    if connection.is_connected():
        print("successfull connected to MYSQL")
        mycursor=connection.cursor()
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store ")
        print ("Database successfully created.")
except Error as e:
  print ('Error while connecting to MYSQL:',e)
finally:
 if 'connection' in locals() and connection.is_connected():
    mycursor.close()
    connection.close()
    print("MYSQL connection closed.")




    