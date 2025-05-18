class ContactController < ApplicationController
  def create
  @message = Message.new(params.permit(:name, :email, :phone, :caption, :message))
  if @message.save
    flash.now[:notice] = "Üzeneted sikeresen elküldve!"
      render :'kp/contact'
    else
      flash.now[:alert] = "Hiba történt az üzenet elküldésekor."
      render :'kp/contact'
  end
end

  def index
  end

  def show
  end
end
