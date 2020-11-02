class Application
 
  def call(env)
    resp = Rack::Response.new
 
    if  Time.now.to_i < 12 
      resp.write "Good morning"
    else
      resp.write "Good afternoone"
    end
 
    resp.finish
  end
 
end