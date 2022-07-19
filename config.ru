require "Rack"
require './app.rb'

use Rack::Reloader, 0
use Rack::Static, :urls => ["/public"]

run App.new()
