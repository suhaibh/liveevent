class SitePagesController < ApplicationController
  def home
  	@contact = Contact.new
  end
end
