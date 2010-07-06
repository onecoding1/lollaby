#$:.unshift File.dirname(__FILE__)
require 'hai'

use Rack::ShowExceptions
RACK_ENV="production"

use Rack::Auth::Basic do |password|
  [password] == "nogoaway"
end


run Hai.new
