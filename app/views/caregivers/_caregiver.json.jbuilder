json.extract! caregiver, :id, :firstname, :lastname, :address1, :address2, :city, :state, :country, :zip, :email, :phone, :drivers_license_number, :drivers_license_state, :is_stna, :stna_license_id, :is_lpn, :lpn_license_id, :is_verified, :created_at, :updated_at
json.url caregiver_url(caregiver, format: :json)
