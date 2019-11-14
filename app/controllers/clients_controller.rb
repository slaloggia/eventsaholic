class ClientsController < ApplicationController
  before_action :find_client, except: [:new, :create, :upcoming_events, :past_events]
  before_action :authorize, except: [:new, :create]

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.valid?
      @client.save
      redirect_to client_path(@client)
    else
      flash[:errors] = @client.errors.full_messages
      redirect_to new_client_path
    end
  end

  def edit
  end
  
  def update
    if @client.update(client_params)
      redirect_to client_path(@client)
    else
      flash[:errors] = @client.errors.full_messages
      redirect_to edit_client_path(@client)
    end
  end

  def destroy
    @client.destroy
    redirect_to root_path
  end

  def upcoming_events
    @client = current_client
  end

  def past_events
    @client = current_client
  end

  private

  def find_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:username, :password, :password_confirmation, :first_name, :last_name, :location)
  end

end
