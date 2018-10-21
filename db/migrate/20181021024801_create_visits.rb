class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.references :caregiver, foreign_key: true
      t.references :patient, foreign_key: true
      t.datetime :scheduled_start
      t.datetime :scheduled_end
      t.text :notes
      t.datetime :actual_start
      t.datetime :actual_end

      t.timestamps
    end
  end
end
