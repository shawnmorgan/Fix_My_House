class MessagesController < ApplicationController
  def new
  end

  def create
    require 'textmagic'

    @phone_number = message_params[:phone_number]
    @message = message_params[:message]

    @gateway = TextMagic::API.new('shawnmorgan', 'XnytuJu9uU')
    @gateway.send message_params[:message], message_params[:phone_number]
  end

private
  def message_params
    params.require(:message).permit(:phone_number, :message)
  end
end

