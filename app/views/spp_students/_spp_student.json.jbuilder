json.extract! spp_student, :id, :spp_batch_id, :nis, :name, :gender, :birth_at, :address, :pict, :father, :mother, :phone, :email, :created_at, :updated_at
json.url spp_student_url(spp_student, format: :json)
