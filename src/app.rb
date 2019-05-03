require 'sinatra'
require 'rubygems'
require 'rake'
set :port, 3000

get '/' do
  'hello,world'
end
