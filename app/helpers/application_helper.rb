module ApplicationHelper

  def current_client
    Client.find_by(id: session[:client_id])
  end

  def logged_in?
    !!current_client
  end

  def authorize
    if !logged_in?
      flash[:notice] = "Please log in to continue!"
      redirect_to login_path
    end
  end

  def check_id(id)
    id.to_i == current_client.id
  end

end
