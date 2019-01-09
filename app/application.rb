require './item.rb'

class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  end
end
