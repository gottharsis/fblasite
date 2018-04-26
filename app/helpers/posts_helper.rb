module PostsHelper
    def all_replies post
        post.replies.order("created_at desc").limit(10)
    end
end
