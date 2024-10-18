$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require 'rackapp'
require 'rack/static' 
#require 'rack/reloder'
require 'rack/auth/basic' 
#use Rack::Reloader,0
use Rack::Auth::Basic do |username,password|
    password=="secret"
end

use Rack::Static, 
  :urls => ["/stylesheets"], 
  :root => File.expand_path('../lib/public', __FILE__)


run RackApp

