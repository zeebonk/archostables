class ContactMessagesController < ApplicationController
  # GET /contact_messages
  # GET /contact_messages.xml
  def index
    @contact_messages = ContactMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contact_messages }
    end
  end

  # GET /contact_messages/1
  # GET /contact_messages/1.xml
  def show
    @contact_message = ContactMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact_message }
    end
  end

  # GET /contact_messages/new
  def new
	
    @contact_message = ContactMessage.new
		render :layout => 'home'
  end

  # GET /contact_messages/1/edit
  def edit
    @contact_message = ContactMessage.find(params[:id])
  end

  # POST /contact_messages
  def create
    @contact_message = ContactMessage.new(params[:contact_message])

		if @contact_message.save
			flash[:notice] = 'Uw bericht is succesvol verstuurd.'
			redirect_to :controller =>"home"
		else
			flash[:error] = "Let op dat u alles heeft ingevuld. Zowel Naam, Email adres als een bericht."
			render :action => "new", :layout => 'home'
		end
  end

  # PUT /contact_messages/1
  # PUT /contact_messages/1.xml
  def update
    @contact_message = ContactMessage.find(params[:id])

    respond_to do |format|
      if @contact_message.update_attributes(params[:contact_message])
        format.html { redirect_to(@contact_message, :notice => 'ContactMessage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact_message.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_messages/1
  # DELETE /contact_messages/1.xml
  def destroy
    @contact_message = ContactMessage.find(params[:id])
    @contact_message.destroy

    respond_to do |format|
      format.html { redirect_to(contact_messages_url) }
      format.xml  { head :ok }
    end
  end

end
