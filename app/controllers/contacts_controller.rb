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

  def show
    @contact = Contact.find_by(id: params[:id])
    render :show
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      name: params[:name] || @contact.name,
      email: params[:email] || @contact.email,
      phone: params[:phone] || @contact.phone,
      address: params[:address] || @contact.address,
    )
    render :show
  end
end
