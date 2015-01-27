class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :manufacturer
      t.string :distributer
      t.date :expiry_date
      t.date :manufacture_date

      t.timestamps
    end
  end
end
