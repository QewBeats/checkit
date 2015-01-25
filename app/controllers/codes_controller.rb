#require "#{Rails.root}/app/controllers/concerns/json_generate"

class CodesController < ApplicationController
  before_action :require_token, only: [:authenticate]
  before_action :authenticate_admin!, except: [:authenticate]

  def require_token
    unless Token.exists? params["token"]
      render json: JSONResponse.create("Authentication Failure", "You have provided an invalid key")
    end
  end

  def authenticate 
    response = Code.genuine params["code"]

    if response == 'used'
      render json: JSONResponse.create("Code used", "This product code has already been used.")
    elsif response == 'unused'
      render json: JSONResponse.create("Code valid", "The product you have bought is genuine.")
    else
      render json: JSONResponse.create("Invalid Code", "The code you entered is not valid. Please report to the manufacturer.")
    end
  end

  def generate
    @codes = Code.generate(params[:code].to_i)
  end

  def new
  end

  private
    def code_params
      params.require(:code).permit(:code)
    end
end
