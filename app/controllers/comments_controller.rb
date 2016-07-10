class CommentsController < ApplicationController

	def create
		@ticket = Ticket.find(params[:id])
		@comment = @ticket.comments.create(comment_params)
		redirect_to ticket_path(@ticket)
	end

	private 
	def comment_params
		params.require(:comment).permit(:body)
	end

end
