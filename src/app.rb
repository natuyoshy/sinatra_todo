require 'sinatra'
require 'rubygems'
require 'rake'
require './Models/todo.rb'
set :port, 3000

get '/' do
  'hello,world'
end
