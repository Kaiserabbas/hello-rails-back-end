class Api::V1::GreetingsController < ApplicationController
  def random
    @greeting = Greeting.order('RANDOM()').first
    headers['Access-Control-Allow-Origin'] = 'http://localhost:3001'
    render json: @greeting
  end
end
