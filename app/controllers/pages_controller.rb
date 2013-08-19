class PagesController < ApplicationController
  def index

  end

  def about

  end

  def services

  end

  def register

  end


  def contact

  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      #successful
    else
      #unsuccessful
    end

  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end

end
