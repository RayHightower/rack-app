# simple_echo_server.rb

require 'rack'

app = Proc.new do |env|
  echo_string = env["QUERY_STRING"][4..-1]
  ['200', {'Content-Type' => 'text/html'}, ["#{echo_string}"]]
end

Rack::Handler::WEBrick.run app
