class ContactsController < ApplicationController

	def index
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			# Handle a successful save.
			flash[:success] = "Thank You! Your message has been submited."
			redirect_to root_path
		else
			render 'index'
		end
	end

	private

	def contact_params
		params.require(:contact).permit(:first_name, :last_name, :email, :subject,
		                             :message)
	end
end