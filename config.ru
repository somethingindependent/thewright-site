require 'newrelic_rpm'
require 'new_relic/rack/agent_hooks'

app = Rack::Builder.new do
  map '/' do
    use NewRelic::Rack::AgentHooks
    use Rack::Static, urls: [''], root: '_site', index: 'index.html'
  end
end

run app
