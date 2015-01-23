class ChangeStatusInCode < ActiveRecord::Migration
  def change
    change_column :codes, :status, :integer, default: 1
  end
end
