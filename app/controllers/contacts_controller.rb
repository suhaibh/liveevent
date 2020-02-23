class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
  	if @contact.save
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end

  def index
  end

  private
  	def contact_params
  		params.require(:contact).permit(:name, :email, :proposal, :brand)
  	end
end
