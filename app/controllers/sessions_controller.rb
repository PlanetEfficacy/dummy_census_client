class SessionsController < ApplicationController
  def create
    byebug
    render json: params
  end
end
