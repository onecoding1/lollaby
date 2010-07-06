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
  require 'views/layout'

  configure do
    db = "sqlite://#{ENV["PWD"]}/quotes.db"
    DataMapper.setup(:default, db.to_s)
    DataMapper.auto_migrate!
    set :environment, :production
  end

  set :mustache, {
    :views     => 'views/',
    :templates => 'templates/'
  }

  get '/' do
    @quotes = Quote.all
    @title = "Lulz lives"
    mustache :index
  end

end
