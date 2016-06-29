require 'webmachine'

class Application < Webmachine::Resource
  def to_html
    "<html><body>Wassup, Webmachine!</body></html>"
  end
end

