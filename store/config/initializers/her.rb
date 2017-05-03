PRODUCT_API = Her::API.new
PRODUCT_API.setup url: 'http://127.0.0.1:3005' do |c|
  c.use Faraday::Request::UrlEncoded
  c.use Her::Middleware::DefaultParseJSON
  c.use Faraday::Adapter::NetHttp
end


PROVIDER_API = Her::API.new
PROVIDER_API.setup url: 'http://127.0.0.1:3006' do |c|
  c.use Faraday::Request::UrlEncoded
  c.use Her::Middleware::DefaultParseJSON
  c.use Faraday::Adapter::NetHttp
end
