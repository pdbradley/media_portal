class MessagesController < ApplicationController

  def new
  end

  def create
    Message.create(params[:message])
    redirect_to root_path
  end
end
