
require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'bnb_test')
  connection.exec("TRUNCATE spaces;")
end

def add_row_to_test_database
  connection = PG.connect(dbname: 'bnb_test')
  connection.exec("INSERT INTO spaces (name) values ('This is a space!');")
end