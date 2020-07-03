class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  # POST /leads
  # POST /leads.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        flash[:notice] = 'Success'
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :phone_number, :message)
    end
end
