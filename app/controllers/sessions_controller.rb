class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to '/sessions/new'
    else
      redirect_to '/show'
      session[:name] = params[:name]
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to 'sessions/new'
  end

end
