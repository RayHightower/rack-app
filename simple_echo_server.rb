# my_rack_app.rb

require 'rack'

app = Proc.new do |env|
  ['200', {'Content-Type' => 'text/html'}, ["A barebones rack app. env = #{env}"]]
end

Rack::Handler::WEBrick.run app
