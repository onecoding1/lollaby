require 'dm-core'
require 'dm-migrations'

$:.unshift File.dirname(__FILE__)
require 'models/user'
require 'models/rating'
require 'models/quote'

db = "sqlite://#{ENV["PWD"]}/quotes.db"
DataMapper.setup(:default, db.to_s)
