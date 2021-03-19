require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  erb :index, layout: :my_always
end

get '/calc' do
  erb :calc, layout: :my_always
end

post '/calc' do
  erb :calc, layout: :my_always
end

get '/calc/bmi' do
  erb :bmi, layout: :my_always
end

post '/calc/bmi' do
  erb :bmi, layout: :my_always
end

get '/calc/bmi/result' do
  erb :result2, layout: :my_always
end

post '/calc/bmi/result' do
  h = params[:height].to_f/100
  w = params[:weight].to_f
  bmi = w/(h*h)
  erb :result, locals: {result: bmi}, layout: :my_always  
end