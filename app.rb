require "bundler"
Bundler.require

get "/" do
  erb :index
end

get "/api" do
  cross_origin
  happy_json = JSONReader.new("happy.json")
  return happy_json.to_hash.to_json
end

get "/api-kittens" do
  cross_origin # so you can access from another server
  kittens = JSONReader.new("kittens.json")
  return kittens.to_hash.to_json
end
