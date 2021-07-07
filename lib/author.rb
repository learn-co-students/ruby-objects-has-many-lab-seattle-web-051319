class Author
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @posts = []
end

def posts
  @posts
end

def add_post(post)
  @posts << post
  post.author = self
  @@all << post
end

def add_post_by_title(post_title)
  post = Post.new(post_title)
  @posts << post
  @@all << post
  post.author = self
end

def self.post_count
  @@all.length
end

end
