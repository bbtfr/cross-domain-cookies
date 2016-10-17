require 'json'

class JSONP
  def call(env)
    request = Rack::Request.new(env)
    params = request.params
    cookies = request.cookies
    content = "#{params["callback"]}(#{cookies.to_json})"
    [200, {"Content-Type" => "text/html"}, [content]]
  end
end

run JSONP.new
