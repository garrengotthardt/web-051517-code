require 'pry'
require 'erb'
class Montana
  def call(env)
    # binding.pry
    request  = Rack::Request.new(env)
    @test = "test"
    case request.path
          when "/" then Rack::Response.new(render("index.html.erb"))
          when "/home" then Rack::Response.new(render("home.html.erb"))
          else Rack::Response.new("Not Found get out creep!", 404)
    end
  end

  #create the render method
  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
