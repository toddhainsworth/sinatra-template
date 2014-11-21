configure :development do
  # Put your database name here
  db = URI.parse('postgres://localhost/database_name')

  ActiveRecord::Base.establish_connection(
    adapter: db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    host: db.host,
    username: 'your_username',
    password: 'your_password',
    database: db.path[1..-1],
    encoding: 'utf8')
end