class Author 
  
  @@all = []
  
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end 
  
  def add_post(post)
    @posts << post
    post.author = self
  end 
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
  end
  
  def self.post_count
    total = 0
    @@all.each do |author_posts|
      total += author_posts.posts.length
    end
    return total
  end

end