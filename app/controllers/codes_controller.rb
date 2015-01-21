class CodesController < ApplicationController
  def authenticate
    unless Code.find_by(:code => params["code"])
      render json: { :message => "Code Invalid" }
    else
      render json: { :message => "Code valid" }
    end
  end

  def generate
  end
end
