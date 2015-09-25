class Kitter < ActiveRecord::Base

  def self.get_stream
    TweetStream::Client.new.sample do |status|
      puts "#{status.text}"
      puts "#{status.created_at}"
    end
  end


  def self.get_cat_stream
    cat_regex = /( |^)#*cats*\s/i
    kitten_regex = /( |^)#*kittens*\s/i
    TweetStream::Client.new.track('cat', 'cats', "😺", 'kitten', 'kittens') do |status|
      return "#{status.text}" if (status.text =~ (cat_regex) || status.text =~ (kitten_regex))
    end
  end
end
