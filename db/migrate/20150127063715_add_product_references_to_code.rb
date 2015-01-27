class AddProductReferencesToCode < ActiveRecord::Migration
  def change
    add_reference :codes, :product, index: true
  end
end
