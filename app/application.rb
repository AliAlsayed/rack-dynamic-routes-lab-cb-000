require './item.rb'

class Application
  @@items = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    if req.path.match(/items/)
      item_title = req.path.split("/items/").last
    end
  end
end
