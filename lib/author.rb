require 'pry'

class Author

    attr_accessor :name, :author, :title
    
    @@posts = []

    def initialize(name)
        @name = name
    end

    def posts
        @@posts
    end

    def add_post(post)
        post.author = self
        @@posts << post
    end

    def add_post_by_title(title)
        post = Post.new(title)
        @@posts << post
        post.author = self
    end

    def self.post_count
        @@posts.length
    end

end