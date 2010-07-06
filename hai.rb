require 'sinatra/base'
require 'erb'
require 'dm-core'
require 'dm-migrations'


$:.unshift File.dirname(__FILE__)
require 'models/user'
require 'models/quote'

DataMapper.finalize

class Hai < Sinatra::Base

  db = "sqlite://quotes.db"
  DataMapper.setup(:default, db.to_s)

  set :views, File.dirname(__FILE__) + '/templates'

  set :public, 'public/'

  set :environment, :production

  get '/' do
    @quotes = Quote.all
    @title = "Lulz lives"
    erb :index
  end

  get '/new' do
    erb :new
  end
  
  post '/' do
    q = Quote.create(
    :body => params[:body],
    :source => params[:body],
    :data => Time.now,
    )
    
    q.save
    
    DataMapper.auto_upgrade!
  end
end
