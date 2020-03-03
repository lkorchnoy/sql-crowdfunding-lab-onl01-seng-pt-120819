require 'bundler/setup'
Bundler.require

require_relative 'sql_runner'
require_relative '../lib/sql_queries'
require 'sqlite3'

 
#DB = {:conn => SQLite3::Database.new('../db/lab_database.db')}
#db = SQLite3::Database.new('../db/lab_database.db')