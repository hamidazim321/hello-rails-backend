class MessagesController < ApplicationController
  def random
    greet = Message.order('RANDOM()').first
    render json: { greetings: greet.text }
  end
end
