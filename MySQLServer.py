import mysql.connector

# Database connection details
host = "localhost"
user = "your_username"
password = "your_password"

try:
  # Connect to the MySQL server
  db = mysql.connector.connect(
      host=host,
      user=user,
      password=password
  )

  # Create a cursor object
  cursor = db.cursor()

  # Create database query (using IF NOT EXISTS to avoid failure if it exists)
  create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
  cursor.execute(create_db_query)

  # Commit the changes
  db.commit()

  # Print success message
  print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
  # Print error message
  print("Error creating database:", err)

finally:
  # Close the cursor and connection (if opened)
  if cursor:
    cursor.close()
  if db:
    db.close()
