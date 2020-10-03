require 'sinatra/base'

class App < Sinatra::Base

  before do
    puts "Indeed the before block is called. Change happens later."
    content_type :json
  end

  get '/' do
    {foo: :bar}.to_json
  end

end

class Main < App

  get '/other' do
    {foo: :bar}.to_json
  end

end

