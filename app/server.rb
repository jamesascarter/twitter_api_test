require 'sinatra'
require 'sinatra/partial'


set :public_folder, Proc.new { File.join(root, '..', 'public') }
set :views, Proc.new { File.join(root, 'views') }
set :partial_template_engine, :erb

get '/' do
  erb :index
end