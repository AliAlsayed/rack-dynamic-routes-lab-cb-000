require './item.rb'

class Application
  @@items = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find{|item| item.name == item_name}
    else
      resp.write
    end
  end
end
