class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.float :height
      t.float :weight
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
