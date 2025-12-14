import mysql.connector
from mysql.connector import Error

try:
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "@W28395872o",
        database = "alx_book_store"
    )

    if mydb.is_connected():
        mycursor = mydb.cursor()

        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
        print(f"Error: {e}")

finally:
    if 'cursor' in locals() and mycursor:
        mycursor.close()
    if 'connection' in locals() and mydb.is_connected():
        mydb.close()