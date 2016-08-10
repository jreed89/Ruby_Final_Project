class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :specialty

      t.timestamps
    end
  end
end