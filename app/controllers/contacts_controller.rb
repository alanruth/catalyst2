class ContactsController < ApplicationController

	def index
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			# Handle a successful save.
		else
			#render 'new'
		end
	end

	private

	def contact_params
		params.require(:contact).permit(:first_name, :last_name, :email, :subject,
		                             :message)
	end
end