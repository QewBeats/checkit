class AddCodeIndexToCode < ActiveRecord::Migration
  def change
    change_column :codes, :code, :string, unique: true
  end
end
