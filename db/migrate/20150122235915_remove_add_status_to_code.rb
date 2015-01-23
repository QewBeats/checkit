class RemoveAddStatusToCode < ActiveRecord::Migration
  def change
    change_column :codes, :status, :integer, 'integer USING CAST("status" AS integer)'
  end
end
