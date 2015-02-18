require 'twitter'
class Twit
    attr_accessor :client

    def initialize
        @client = Twitter::REST::Client.new do |config|
          config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
          config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
          config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
          config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
        end
    end

    def getUserInfo
        return user = {
            "name" => client.current_user.name,
            "id" => client.current_user.id
        }
    end

    def showAllFriends
        client.friends.each { |item| puts item.name }
    end

    def showFollowers
        return followers = client.followers.map { |item| item.screen_name}
    end

    def showAllTweets
        client.user_timeline.map {|item| item.text}
    end

    def showAllUserTweets(userScreenName)
         client.user_timeline(userScreenName).each {|item| puts item.text}
    end

    def sendTweet(content)
        client.update(content)
    end

    def folowers
        client.followers("this_william")
    end
end