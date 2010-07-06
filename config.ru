#$:.unshift File.dirname(__FILE__)
require 'hai'

use Rack::ShowExceptions
RACK_ENV="production"

use Rack::Auth::Basic do |username, password|
  [username, password] == ["coeder", "nogoaway"]
end


run Hai.new
