class ClientsController < ApplicationController
	before_action :signed_in_user
 def index

 end

 def new
  @client = Client.new
 end


 def create
  @client = Client.new(params_client)
  if @client.save
    redirect_to client_path(@client)
  else
    render 'new'
  end
 end

 def edit

 end

 def update

 end

 def destroy

 end

 private

 def set_client

 end

 def params_client
  params.require(:client).permit(:image)
 end

end
