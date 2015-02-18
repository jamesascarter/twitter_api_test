require 'sinatra'
require 'sinatra/base'
require './app/models/tweets'
# require './app/models/whatwords'
# require 'twitter'


set :public_folder, Proc.new { File.join(root, '..', 'public') }
set :views, Proc.new { File.join(root, 'views') }
set :partial_template_engine, :erb

get '/' do
  twit = Twit.new
  @twitters = twit.showAllTweets
  @single_follower = twit.showAllUserTweets('GSElevator')
  @tweets = twit.getUserInfo
  @followers = twit.folowers
  erb :index
end