require 'sinatra'
require 'rubygems'
require 'rake'
require 'sinatra/reloader'
require './Models/todo.rb'
set :port, 3000


get '/' do
  'hello,world'
end

get '/todo' do
  Todo.all.to_json
end

get '/todo/:id' do
  Todo.find(params[:id]).to_json
end

post '/todo' do
  json = JSON.parse(request.body.read)
  todo = Todo.new(json)
  if todo.save
    { result: 'success', code: 200 }.to_json
  else
    { result: 'failure' }.to_json
  end
end

put '/todo/:id' do
  json = JSON.parse(request.body.read)
  todo = Todo.find(params[:id])
  if todo.update(json)
    { result: 'success', code: 200 }.to_json
  else
    { result: 'failure' }.to_json
  end
end

put '/todo/:id/done' do
  todo = Todo.find(params[:id])
  if todo.update(done_flg: true)
    { result: 'success', code: 200 }.to_json
  else
    { result: 'failure' }.to_json
  end
end

delete '/todo/:id' do
  todo = Todo.find(params[:id])
  if todo.destroy
    { result: 'success', code: 200 }.to_json
  else
    { result: 'failure' }.to_json
  end
end
