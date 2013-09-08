class Admin::ContactsController < Admin::ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params[:contact])
    redirect_to admin_contacts_path
  end

  def index
    @contact = Contact.last
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update_attributes(params[:contact])
    redirect_to admin_contacts_path
  end
end
