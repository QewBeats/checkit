class Token < ActiveRecord::Base

  def self.exists? token
    Token.find_by :key => token
  end
end
