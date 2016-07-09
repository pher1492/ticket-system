class TicketsController < ApplicationController
	
	def list
		@tickets = Ticket.all
	end

	def show
		@ticket = Ticket.find(params[:id])
	end

	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.new(ticket_params)

		if @ticket.save
			redirect_to :action => 'list'
		else
			redirect_to :action => 'new'
		end
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])

		if @ticket.update_attributes(ticket_params)
			redirect_to :action => 'show', :id => @ticket
		else
			redirect_to :action => 'edit'
		end
	end

	def delete
		@ticket = Ticket.find(params[:id]).destory
		redirect_to :action => 'list'
	end

		private def ticket_params
		params.require(:tickets).permit(:title, :body)
	end

end
