# simple_echo_server.rb

require 'rack'

number_of_requests = 0

app = Proc.new do |env|
  number_of_requests = number_of_requests + 1
  puts "\n\nRequest # #{number_of_requests}:\n#{env}" # This should appear on the console
  echo_string = env["QUERY_STRING"][4..-1]
  ['200', {'Content-Type' => 'text/html'}, ["#{echo_string}"]]
end

Rack::Handler::WEBrick.run app
