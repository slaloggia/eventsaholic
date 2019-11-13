class SessionsController < ApplicationController
  
  def new
  end

  def create
    @client = Client.find_by(username: params[:username])
    @client && @client.authenticate(params[:password]) ? login_success : login_failure
  end

  def delete
    session.delete(:client_id)
    redirect_to login_path
  end

  private

  def login_success
    session[:client_id] = @client.id
    redirect_to client_path(@client)
  end

  def login_failure
    flash[:notice] = "Incorrect username and/or password"
    redirect_to login_path
  end

end