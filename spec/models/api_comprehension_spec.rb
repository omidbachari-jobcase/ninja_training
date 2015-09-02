require 'rails_helper'

describe ApiComprehension do
  context "#get_posts", :vcr do
    it "returns posts" do
      posts = ApiComprehension.new.get_posts

      expect(posts[:body]).to be_a Array
      expect(posts[:code]).to eq 200
      expect(posts[:content_type]).to eq "posts"
    end
  end
  context "#get_comments", :vcr do
    it "returns comments" do
      comments = ApiComprehension.new.get_comments

      expect(comments[:body]).to be_a Array
      expect(comments[:code]).to eq 200
      expect(comments[:content_type]).to eq "comments"
    end
  end
  context "#get_albums", :vcr do
    it "returns albums" do
      albums = ApiComprehension.new.get_albums

      expect(albums[:body]).to be_a Array
      expect(albums[:code]).to eq 200
      expect(albums[:content_type]).to eq "albums"
    end
  end
  context "#get_photos", :vcr do
    it "returns photos" do
      photos = ApiComprehension.new.get_photos

      expect(photos[:body]).to be_a Array
      expect(photos[:code]).to eq 200
      expect(photos[:content_type]).to eq "photos"
    end
  end
  context "#get_todos", :vcr do
    it "returns todos" do
      todos = ApiComprehension.new.get_todos

      expect(todos[:body]).to be_a Array
      expect(todos[:code]).to eq 200
      expect(todos[:content_type]).to eq "todos"
    end
  end
  context "#get_users", :vcr do
    it "returns users" do
      users = ApiComprehension.new.get_users

      expect(users[:body]).to be_a Array
      expect(users[:code]).to eq 200
      expect(users[:content_type]).to eq "users"
    end
  end
end
