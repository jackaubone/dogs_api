class DogsController < ApplicationController

  def index 
    dog = Dog.all
    p current_user
    render json: dog.as_json
  end

  def create 
    if current_user
      dog = Dog.new(
        name: params[:name],
        breed: params[:breed],
        age: params[:age],
        user_id: current_user.id
      )

      if product.save 
        render json: product.as_json
      else
        render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
      end
    else
    render json: {message: "u gotta be logged in"}
    end
  end
end
