unless ENV['CI']
  require 'simplecov'
  SimpleCov.start
end

require 'lama'
require 'rspec'
require 'webmock/rspec'

def a_get(url)
  a_request(:get, lama_url(url))
end

def stub_get(url, login = 'test@example.com', pass = '12345')
  s = stub_request(:get, lama_url(url, login, pass))
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end

def lama_url(url, login = 'test@example.com', pass = '12345')
  "https://#{login}:#{pass}@dev-lama01.cityofno.com/CFA/rest/incidents#{url}"
end
