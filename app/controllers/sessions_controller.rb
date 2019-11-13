class SessionsController < ApplicationController
  def new
  end

  def create
    @client = Client.find_by(username: params[:username])
    if @client && @client.authenticate(params[:password])
      login_success
    else
      login_failure
    end
  end

  def delete
    session.delete(:client_id)
    redirect_to login_path
  end

  private

  def login_success
    @client = Client.find_by(username: params[:username])
    session[:client_id] = @client.id
    redirect_to client_path(@client)
  end

  def login_failure
    redirect_to login_path, notice: "Incorrect username or password"
  end

end