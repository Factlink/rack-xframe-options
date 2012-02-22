module Rack
  class XFrameOptions

    def initialize(app, value = "SAMEORIGIN", except = [])
      @app = app
      @value = value.upcase
      @except = except
    end

    def call(env)
      status, headers, body = @app.call(env)

      if headers['Content-Type'] =~ /html/ and not @except.include?(env["PATH_INFO"])
        headers['X-Frame-Options'] = ["DENY", "SAMEORIGIN"].include?(@value) ? @value : "DENY"
      end

      [status, headers, body]
    end
  end
end