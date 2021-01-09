

class Coursera


    include HTTParty
    base_uri "http://edutechional-resty.herokuapp.com"

  def posts
    self.class.get('/posts.json')
  end
    

end

