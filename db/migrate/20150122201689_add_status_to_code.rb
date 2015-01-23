class AddStatusToCode < ActiveRecord::Migration
  def change
    add_column :codes, :status, :string
  end
end
