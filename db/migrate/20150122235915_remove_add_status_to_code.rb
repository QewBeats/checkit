class RemoveAddStatusToCode < ActiveRecord::Migration
  def change
    change_column :codes, :status, :integer
  end
end
