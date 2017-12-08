class MessagesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_chatroom

	private

		def set_chatroom
			@chatroom = Chatroom.find(params[:chatroom_id])
		end

		def message_params
			params.require(:message).permit(:body)
		end

end