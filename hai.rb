require 'sinatra/base'
require 'mustache/sinatra'
require 'dm-core'
require 'dm-migrations'


$:.unshift File.dirname(__FILE__)
require 'models/user'
require 'models/rank'
require 'models/quote'

class Hai < Sinatra::Base
  register Mustache::Sinatra

  configure do
    db = "sqlite://#{ENV["PWD"]}/quotes.db"
    DataMapper.setup(:default, db.to_s)
    DataMapper.auto_migrate!
  end

  set :mustache, {
    :views     => 'views/',
    :templates => 'templates/'
  }

  set :environment, :production
  
  get '/' do
    @quotes = Quote.all
    @title = "Lulz lives"
    mustache :layout
  end

end
