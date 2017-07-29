# simple_echo_server.rb

require 'rack'

app = Proc.new do |env|
  ['200', {'Content-Type' => 'text/html'}, ["#{env["QUERY_STRING"]}"]]
end

Rack::Handler::WEBrick.run app
