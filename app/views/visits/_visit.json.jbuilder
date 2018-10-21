json.extract! visit, :id, :caregiver_id, :patient_id, :scheduled_start, :scheduled_end, :notes, :actual_start, :actual_end, :created_at, :updated_at
json.url visit_url(visit, format: :json)
