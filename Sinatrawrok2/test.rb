require "sinatra"
require "sinatra/reloader" if development?

get "/" do 
 erb :index
end

post "/calc" do
 erb :calc
end

post "/calc/bmi" do
 erb :bmi
end

post "/calc/bmi/result" do
 h = params[:height].to_f/100
 w = params[:weight].to_f

 @bmi = w/(h*h)
 
 erb :result

end

