require 'sinatra'
require 'sinatra/base'
require './app/models/tweets'
require './env_variables'
# require 'twitter'


set :public_folder, Proc.new { File.join(root, '..', 'public') }
set :views, Proc.new { File.join(root, 'views') }
set :partial_template_engine, :erb

get '/' do
  twit = Twit.new
  @tweets = twit.getUserInfo
  # @followers = twit.showFollowers
  erb :index
end