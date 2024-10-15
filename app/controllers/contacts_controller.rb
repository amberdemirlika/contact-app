class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render :index
  end

  def create
    @contact = Contact.create(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      address: params[:address],
    )
    render :show
  end
end
