require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key = "ajzIbWzn2qaje5QYoAcdaDMI7"
  config.consumer_secret = "w39cLASMHNjMnHifr6P8yTBw2F7getcqZMPbb6lY9QpGLrtHBR"
  config.oauth_token = "3229054291-zThshBdxwBfAJ4uoVTqwBDPIFb2zPOIyJLdeGuZ"
  config.oauth_token_secret = "wPW9OHiHSP1LaGpVUpzwSm1yuI6WReOnAypD55yu14q4d"
  config.auth_method = :oauth
end

class Kitter

  def self.get_stream
    TweetStream::Client.new.sample do |status|
      puts "#{status.text}"
      puts "#{status.created_at}"
    end
  end

  def self.get_cat_stream
    TweetStream::Client.new.track('cat', 'cats', 'kitty', 'kitten', 'kittens') do |status|
      puts "#{status.text}"
    end
  end

end
