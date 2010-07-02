require 'dm-core'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/quotes.db")

DataMapper.finalize

require  'dm-migrations'
dir = File.dirname(__FILE__)
$LOAD_PATH.unshift(dir) unless $LOAD_PATH.include? dir
require 'models/quote'
DataMapper.auto_migrate!
DataMapper.finalize
DataMapper.auto_upgrade!
    q = Quote.create(
    :quote => "haloa",
    :user => "hellO!",
    :date => Time.now
    )
    q.save
