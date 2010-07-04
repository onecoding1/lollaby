require 'dm-core'
require 'dm-migrations'

$:.unshift File.dirname(__FILE__)
require 'hai'
require 'models/user'
require 'models/rank'
require 'models/quote'

db = "sqlite://#{ENV["PWD"]}/quotes.db"
DataMapper.setup(:default, db.to_s)
DataMapper.auto_migrate!

use Rack::ShowExceptions

run Hai.new
