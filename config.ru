# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

# Reverse Proxy to point neueve.com/blog at neueve.blogspot.com
use Rack::ReverseProxy do
  reverse_proxy /^\/blog(\/.*)$/, 'http://18.210.137.171$1', :timeout => 500, :preserve_host => true
end

run Lavax::Application
