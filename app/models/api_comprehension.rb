class ApiComprehension
  def get_posts
    ApiWrapper.new.get("posts")
  end

  def get_comments
    ApiWrapper.new.get("comments")
  end

  def get_albums
    ApiWrapper.new.get("albums")
  end

  def get_photos
    ApiWrapper.new.get("photos")
  end

  def get_todos
    ApiWrapper.new.get("todos")
  end
  
  def get_users
    ApiWrapper.new.get("users")
  end
end
