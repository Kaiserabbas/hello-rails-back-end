class Api::V1::GreetingsController < ApplicationController
    def random
        @greeting = Greeting.order(Arel.sql('RANDOM()')).first
        render json: @greeting::greeting
    end
end
