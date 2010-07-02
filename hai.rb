require 'mustache/sinatra'
require 'dm-core'
require 'dm-migrations'


$LOAD_PATH.unshift(dir = File.dirname(__FILE__)) unless $LOAD_PATH.include? dir = File.dirname(__FILE__)
require 'models/quote'



class Hai < Sinatra::Base
  register Mustache::Sinatra

  set :mustaches, 'views/'
  set :views, 'templates/'
  set :public, 'public/'
  set :environment, :production
  configure do
    db = "sqlite3://#{Dir.pwd}/quotes.db"
    DataMapper.setup(:default, db.to_s)
    DataMapper::Logger.new(STDOUT, :debug)
  end

  use Rack::Auth::Basic do |password|
    [password] == ['lulzmade']
  end


  get '/' do
    @quotes = Quote.all(:order => [:date.desc])
    mustache :index
  end

  get '/new' do
    mustache :new
  end

  post '/' do
    q = Quote.create(
    :quote => params[:quote_body],
    :user => params[:coeder],
    :date => Time.now
    )
    q.save

    redirect "/"
  end
end
