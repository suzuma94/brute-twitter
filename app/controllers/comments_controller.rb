class CommentsController < ApplicationController
    def create
        10.times do
            puts comment_params
        end
        @tweet = Tweet.find(params[:tweet_id])
        @comment = @tweet.comments.create(comment_params)
        
        redirect_to root_path
    end

    private
    def comment_params
        params.require(:comment).permit(:body, :user_id)
    end
end
