# encoding: utf-8
require 'spec_helper'

class SampleApp
  def call(env)
    [200, {"Content-Type" => "text/html"}, "Sample Response"]
  end
end

describe Rack::XFrameOptions do
  include Rack::Test::Methods

  describe "X-Frame-Options" do
    describe "DENY" do
      let(:app) {
        Rack::Builder.new do
          use Rack::XFrameOptions, "DENY"
          run SampleApp.new
        end
      }

      it "should be added to response headers" do
        get '/'
        last_response.headers['X-Frame-Options'].should == "DENY"
      end
    end

    describe "SAMEORIGIN" do
      let(:app) {
        Rack::Builder.new do
          use Rack::XFrameOptions, "SAMEORIGIN"
          run SampleApp.new
        end
      }

      it "should be added to response headers" do
        get '/'
        last_response.headers['X-Frame-Options'].should == "SAMEORIGIN"
      end
    end
  end
end