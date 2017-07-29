# fun_env.rb

require 'rack'

app = Proc.new do |env|
  echo_string = env["QUERY_STRING"][4..-1]
  ['200', {'Content-Type' => 'text/html'}, ["#{echo_string}\n\n"]]
end

Rack::Handler::WEBrick.run app
