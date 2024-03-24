-- sets up MySQL for this project.
CREATE DATABASE IF NOT EXISTS hbnb_test_db;
import mysql.connector
def create_database_and_user():
  try:
connection = mysql.connector.connect(host="localhost", user="root", password="your_root_password")
cursor = connection.cursor()
cursor.execute("CREATE DATABASE IF NOT EXISTS hbnb_test_db")
cursor.execute("CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd'")
cursor.execute("GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost'")
cursor.execute("GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost'")
connection.commit()
print("Database and user setup completed successfully!")
except mysql.connector.Error as err:
print(f"Error: {err}")
    finally:
if connection.is_connected():
	cursor.close()
	connection.close()
if __name__ == "__main__":
	create_database_and_user()
