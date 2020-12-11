class Application

  def call(env)
    resp = Rack::Response.new

    time =  Time.now.to_s.split(' ')
    hour = time[1].split(":")[0].to_i
    
    if hour <= 11
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end