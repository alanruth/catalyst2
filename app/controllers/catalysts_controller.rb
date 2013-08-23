class CatalystsController < ApplicationController

	def new
		@catalyst = Catalyst.new
  end

  def create
	  @catalyst = Catalyst.new(catalyst_params)
	  if @catalyst.save
		  # Handle a successful save.
		  flash[:success] = "Thank You! We will be in touch shortly."
		  redirect_to root_path
	  else
		  render 'new'
	  end
  end

  private

  def catalyst_params
	  params.require(:catalyst).permit(:first_name, :last_name, :email, :comments, :linkedin, :website, :phone, :city)
  end

end
