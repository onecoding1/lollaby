require 'sinatra'

use Rack::Auth::Basic do |username, password|
  [username, password] == ['admin', 'admin']
end
  
get '/' do
  "You're welcome"
end
    
get '/foo' do
  "You're also welcome"
end
      
