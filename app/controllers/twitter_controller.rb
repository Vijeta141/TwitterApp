class TwitterController < ApplicationController
  	

  def user_tweet
    require "rubygems"
    require "twitter"
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = 'wJAzOHPdtzyoJudqNC6dWkr1I'
      config.consumer_secret = 'j3fvUGNzEj93ehOO413qC0Lzxb4Q5L7zVgMgVjTk5OJVDCLnbq'
      config.access_token = '832489876792578048-fKD5Sdf1iocMP2TgJ38rFxmahuUTQRh'
      config.access_token_secret = 'RN9fXHShUBrHTHyq4imCOpEBBYQT43VbEos7iilYYihSQ'
    end   
    # Initialize your Twitter client
    # client = Twitter::Client.new

  	response = []
    # Post a status update
    
    client.search("Muslim Ban", :lang => "en", :until => "2017-10-10").take(20).collect do |tweet|

      # z = {}
      # z['id'] = tweet['id']
      # z['created_at'] = tweet['created_at']
      # z['text'] = tweet['text']
      # z['retweet_count'] = tweet['retweet_count']
      # z['favorite_count'] = tweet['favorite_count']
  	   
      # response << tweet  
  		response << tweet  	
  	end
  	render json: response
  end
end
