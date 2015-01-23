class AddStatusToCode < ActiveRecord::Migration
  def change
    change_column :codes, :status, :string
  end
end
