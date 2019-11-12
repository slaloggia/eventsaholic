class ClientsController < ApplicationController
  before_action :find_client, only: [:show, :edit, :update]

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)
    redirect_to client_path(@client)
  end

  def edit
  end
  
  def update
    @client = Client.create(client_params)
    redirect_to client_path(@client)
  end

  def destroy
    find_client.destroy
    redirect_to root
  end

  private

  def find_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:username, :first_name, :last_name, :location, :business)
  end

end
