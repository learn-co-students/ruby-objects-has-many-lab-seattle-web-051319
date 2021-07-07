class Author
    attr_reader :posts
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
    
        @@all << self
    end

    def posts
        @posts
    end

    def add_post(post)
        post.author = self
        @posts << post        
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        self.add_post(post)
    end

    def self.post_count
        @@all.sum {|author| author.posts.length}
    end
end 