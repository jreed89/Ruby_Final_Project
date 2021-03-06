class CreateJoinTablePatientsDoctors < ActiveRecord::Migration[5.0]
  def change
    create_join_table :patients, :doctors do |t|
      t.index [:patient_id, :doctor_id]
      t.index [:doctor_id, :patient_id]
    end
  end
end
