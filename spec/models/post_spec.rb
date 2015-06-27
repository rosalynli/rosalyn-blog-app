require 'rails_helper'

RSpec.describe Post, type: :model do

    it "validates a post with a title present" do
        post = Post.create(title: "Testing title")
        expect(post.valid?).to eq(true)
    end
    
    describe "yell feature" do
        it "should upcase the body" do
            post = Post.new(title: 'test title', body: 'test')
            result = post.upcase_body
            
            expect(result).to eq("TEST")
        end
        
        it "should take out all the spaces of the body" do
        post = Post.new(title: "test", body: "one two three")
        
        expect(post.smush_body).to eq("onetwothree")
        end
    
        it "should return post body in all caps wth no space" do
        post = Post.new(title: "test", body: "one two three")
        
        expect(post.upcase_body).to eq("ONETWOTHREE")
        end
    end

end

