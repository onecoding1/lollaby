require 'sinatra/base'
require 'erb'
require 'dm-core'
require 'dm-migrations'


$:.unshift File.dirname(__FILE__)
require 'models/user'
require 'models/quote'

DataMapper.finalize

class Hai < Sinatra::Base

  db = "sqlite://#{ENV["PWD"]}/quotes.db"
  DataMapper.setup(:default, db.to_s)

  set :views, File.dirname(__FILE__) + '/templates'

  set :public, 'public/'

  set :environment, :production
  
  get '/' do
    @quotes = Quote.all
    @title = "Lulz lives"
    erb :index
  end

end
