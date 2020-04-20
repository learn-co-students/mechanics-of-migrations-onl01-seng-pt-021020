#some gems, including active_record are required; something happens with Bundler; our database connection is established; the artist.rb file is read

require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'
require 'bundler/setup'
Bundler.require




# put the code to connect to the database here
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)



sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL
 
ActiveRecord::Base.connection.execute(sql)
require_relative "../artist.rb"


#Using migrations, we will still need establish Active Record's connection to the database, but we no longer need the SQL! Instead of dealing with SQL directly, we provide the migrations body (in Ruby) and Active Record takes care of creating complex SQL commands. This is less error-prone and much easier to read.
