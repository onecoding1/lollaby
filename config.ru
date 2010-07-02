require 'sinatra/base'

dir = File.dirname(__FILE__)
$LOAD_PATH.unshift(dir) unless $LOAD_PATH.include? dir
require 'hai'

run Hai.new

