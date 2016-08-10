class CreateCharts < ActiveRecord::Migration[5.0]
  def change
    create_table :charts do |t|
      t.string :date
      t.string :pre_breath
      t.string :pre_swelling
      t.string :accident_since_last_treatment
      t.string :change_mobility
      t.string :pre_digestion_problems
      t.string :access_in_place
      t.integer :blood_flow_rate
      t.string :post_breath
      t.string :post_swelling
      t.string :post_digestion_problems
      t.string :bruising
      t.string :total_time
      t.string :missed_treatment
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
