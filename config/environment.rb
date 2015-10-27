configure :development do
  ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'my_db.db'
  )
end
