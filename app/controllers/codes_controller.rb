require "#{Rails.root}/app/controllers/concerns/json_generate"

class CodesController < ApplicationController
  before_action :require_token

  def require_token
    unless Token.exists? params["token"]
      render json: JSONResponse.create("Authentication Failure", "You have provided an invalid key")
    end
  end

  def authenticate 
    unless Code.find_by :code => params["code"]
      render json: JSONResponse.create("Invalid Code", "The code you entered is not valid. Please report to the manufacturer.")
    else
      render json: JSONResponse.create("Code valid", "The product you have bought is genuine.")
    end
  end

  def generate
  end
end
