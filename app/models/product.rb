class Product < ActiveRecord::Base
  has_many :codes, dependent: :destroy

  def self.empty?
    Product.all.length == 0
  end
end
