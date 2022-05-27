class FriendRequestsController < ApplicationController

    

    def create
        @friend_request = current_user.friend_requests.new(friend_request_params)
        respond_to do |format|
            if @friend_request.save
                format.html { redirect_to root_path }
            else
                format.html { redirect_to root_path }
            end
        end
    end

    private
    def friend_request_params
        params.require(:friend_request).permit(:request_id)
    end
end