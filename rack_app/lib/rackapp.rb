require 'rack/request'  
require 'rack/response'  
require 'erb'

class RackApp
    def self.call(env)
    new(env).response
    end

  def initialize(env)
    @request = Rack::Request.new(env)
  end
  def response 
    case @request.path 
    when "/" 
      @response = Rack::Response.new(render("index.html.erb"))
      @response.finish
  
    when "/change" 
        @response= Rack::Response.new 
        @response.set_cookie("greet",@request.params["name"])
        @response.redirect("/")
        @response.finish

    
          
            
    
      else  

      Rack::Response.new("not found", 404).finish
    end
  end

  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end 
  def greet_name 
    if @request.cookies["greet"]=='' 
        "Word"
    else 
        @request.cookies["greet"] 
    end
  end
end

## i installed gem for rack 
## create a config file to start the server 
## i used a shoutgun gem to reload all changes in the sorces 
## if i reload the paje the changes will apper 
