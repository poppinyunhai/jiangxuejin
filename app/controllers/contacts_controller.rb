class ContactsController < ApplicationController
  def index
    @contact = Contact.last
  end
end
