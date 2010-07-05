$:.unshift File.dirname(__FILE__)
require 'hai'

use Rack::ShowExceptions

run Hai.new
