class Application

  @@items = ["Applies", "Carrots", "Pears"]

  def call(env)

    resp = Rack::Response
    req = Rack::Request(env)

  if req.path.match(/items/)
    @@item.each do |item|
      resp.write "#{items}\n"
    end

  elsif req.path.match(/search/)

    search_term = req.params["q"]

    if @@items.include?(search_term)
      resp.write "#{search_term} is one of our items."
    else
      resp.write "Couldn't find #{search_term}"
    end

  else
    resp.write "Path Not Found"
  end

    resp.finish
  end #end of method

end #end of class
