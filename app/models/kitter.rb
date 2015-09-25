class Kitter < ActiveRecord::Base

  def self.get_stream
    TweetStream::Client.new.sample do |status|
      puts "#{status.text}"
      puts "#{status.created_at}"
    end
  end

  # def self.get_cat_stream
  #   TweetStream::Client.new.track('cat', 'cats', 'kitten', 'kittens') do |status|
  #     return "#{status.text}"
  #   end
  # end

  def self.get_cat_stream
    CAT_REGEX = /[#]*cats[s]*/
    TweetStream::Client.new.sample do |status|
      return "#{status.text}" if !!status.text.scan(CAT_REGEX)
    end
  end

end
