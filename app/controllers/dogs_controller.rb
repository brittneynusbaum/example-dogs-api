class DogsController < ApplicationController
  belongs_to :user

  def create
    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
      user_id: current_user
    )
    dog.save
    render json: dog.as_json
  end  
end
