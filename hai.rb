require 'sinatra/base'
require 'mustache/sinatra'

class Hai < Sinatra::Base
  register Mustache::Sinatra
  require 'views/layout'

  set :mustache, {
    :views     => 'views/',
    :templates => 'templates/'
  }

  get '/' do
    @title = "Lulz lives"
    mustache :index
  end

end
