class Post < ActiveRecord::Base
    validates :title, presence: true 
    
    def instance_report()
        puts "This is post #{id}, my title is #{title}, and here's what I have 
        to say: #{body}, I was born #{created_at} and updated #{updated_at}"
    end
    
    def self.class_report
        puts "Hi, I'm the POST CLASS and I have #{Post.count} messages" 
    end

    def twitter_check
        if title.length <= 140
        puts "You are ready for twitter"
        else
        puts "Please shorten your message"
        end
    end

end