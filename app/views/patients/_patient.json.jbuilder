json.extract! patient, :id, :firstname, :lastname, :address1, :address2, :city, :state, :country, :zip, :phone, :dateofbirth, :created_at, :updated_at
json.url patient_url(patient, format: :json)
