class Post < ActiveRecord::Base
    validates :title, presence: true 
    
    def instance_report()
        puts "This is post #{id}, my title is #{title}, and here's what I have to say: #{body}"
    end
end
