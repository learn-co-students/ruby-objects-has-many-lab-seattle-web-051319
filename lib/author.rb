class Author
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @posts = []
    end

    def posts
        @posts
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(post_name)
        post = Post.new(post_name)
        @posts << post
        post.author = self
    end
    def self.post_count
        total = 0
        @@all.each do |info|
            total += info.posts.length
        end
        return total
    end

end
