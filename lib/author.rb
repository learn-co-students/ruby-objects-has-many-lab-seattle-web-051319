class Author
	attr_reader :name, :posts
	
	@@count = 0
	
	def initialize(name)
		@name = name
		@posts = []
	end
	
	def add_post(post)
		post.author = self
		@posts.push(post)
		@@count += 1
	end
	
	def add_post_by_title(post)
		item = Post.new(post)
		self.add_post(item)
	end
	
	def self.post_count
		@@count
	end
end