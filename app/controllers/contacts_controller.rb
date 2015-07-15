class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :comments)
  end
      
  public
  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:body]
      
      # camel case here means underscore in file (mailers) later.
      # ex. ContactMailer = contact_mailer.rb
      # send the email
      ContactMailer.contact_email(name, email, body).deliver
      
      flash[:success] = 'Message and email sent/saved.'
      redirect_to new_contact_path
    else
      flash[:danger] = 'Error occured, message has not been sent/saved.'
      redirect_to new_contact_path
    end
    
  end
  #end of ContactsController class
    

  
end