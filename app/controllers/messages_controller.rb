class MessagesController < ApplicationController
  def random 
    greet = Message.order('RANDOM()').first
    render json: {greetings: greet}
  end
end
