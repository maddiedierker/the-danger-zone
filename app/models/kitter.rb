class Kitter < ActiveRecord::Base

  # def self.get_stream
  #   TweetStream::Client.new.sample do |status|
  #     puts "#{status.text}"
  #     puts "#{status.created_at}"
  #   end
  # end

  # def self.get_cat_stream
  #   TweetStream::Client.new.track('cat', 'cats', 'kitty', 'kitten', 'kittens') do |status|
  #     return "#{status.text}"
  #   end
  # end

end
