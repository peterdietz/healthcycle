class CreateCaregivers < ActiveRecord::Migration[5.1]
  def change
    create_table :caregivers do |t|
      t.string :firstname
      t.string :lastname
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :email
      t.string :phone
      t.string :drivers_license_number
      t.string :drivers_license_state
      t.boolean :is_stna
      t.string :stna_license_id
      t.boolean :is_lpn
      t.string :lpn_license_id
      t.boolean :is_verified

      t.timestamps
    end
  end
end
