#$:.unshift File.dirname(__FILE__)
require 'hai'
require 'lol'

use Rack::ShowExceptions
RACK_ENV="production"

use Rack::Auth::Basic do |password|
  [password] == [pass]
end


run Hai.new
