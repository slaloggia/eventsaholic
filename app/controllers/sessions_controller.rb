class SessionsController < ApplicationController
  def new
  end

  def create
    @client = Client.find_by(username: params[:username])
    return head(:forbidden) unless @client.authenticate(params[:password])
    session[:client_id] = @client.id
    redirect_to client_path(@client)
  end

  def delete
    session.delete(:client_id)
    redirect_to login_path
  end
end