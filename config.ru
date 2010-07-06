require 'hai'

use Rack::ShowExceptions
RACK_ENV=production

run Hai.new
