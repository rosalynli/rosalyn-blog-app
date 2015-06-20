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
        difference = 140 - title.length
        if title.length <= 140
        puts "You are ready for twitter and you have #{difference} characters left"
        else
        puts "Please shorten your message, you are #{difference} characters over the limit"
        end
    end
    
    #make a preview method for the body
    #it should display the first 5 characters of the body as a preview
    
    def preview_post
        bodyArray = body.split(//)
        print bodyArray[0..4].join("")
    end
        

    def word_count
        how_many = body.split.slice(0..1).join("")
        puts "#{how_many}..."
    end
    
end