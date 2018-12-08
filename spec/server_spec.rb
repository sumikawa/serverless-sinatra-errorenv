require_relative '../app/server.rb'
require 'rack/test'

set :environment, :test

# Tests for server.rb
describe 'Hello Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # Test for HTTP GET for URL-matching pattern '/'
  it "should return successfully on GET" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("hello")
  end
end
