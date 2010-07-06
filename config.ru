#$:.unshift File.dirname(__FILE__)
require 'hai'

use Rack::ShowExceptions
RACK_ENV="production"

run Hai.new
