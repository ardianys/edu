# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_19_013924) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.string "picture"
    t.string "content"
    t.integer "total"
    t.integer "target"
    t.datetime "close_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.index ["category_id"], name: "index_campaigns_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "post_id", null: false
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "donations", force: :cascade do |t|
    t.integer "campaign_id", null: false
    t.integer "amount"
    t.string "name"
    t.string "email"
    t.string "telephone"
    t.boolean "anonymous"
    t.string "payment_type"
    t.string "dua"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_donations_on_campaign_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "pict"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "spp_batches", force: :cascade do |t|
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spp_categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spp_invoices", force: :cascade do |t|
    t.integer "spp_student_id", null: false
    t.integer "spp_category_id", null: false
    t.integer "amount"
    t.integer "paid_amount"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spp_category_id"], name: "index_spp_invoices_on_spp_category_id"
    t.index ["spp_student_id"], name: "index_spp_invoices_on_spp_student_id"
  end

  create_table "spp_payments", force: :cascade do |t|
    t.integer "spp_batch_id", null: false
    t.integer "user_id"
    t.integer "spp_student_id", null: false
    t.integer "spp_invoice_id", null: false
    t.string "tipe", default: "CASH"
    t.integer "amount"
    t.datetime "pay_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spp_batch_id"], name: "index_spp_payments_on_spp_batch_id"
    t.index ["spp_invoice_id"], name: "index_spp_payments_on_spp_invoice_id"
    t.index ["spp_student_id"], name: "index_spp_payments_on_spp_student_id"
    t.index ["user_id"], name: "index_spp_payments_on_user_id"
  end

  create_table "spp_students", force: :cascade do |t|
    t.integer "spp_batch_id", null: false
    t.string "nis"
    t.string "name"
    t.string "gender"
    t.datetime "birth_at"
    t.string "address"
    t.string "pict"
    t.string "father"
    t.string "mother"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spp_batch_id"], name: "index_spp_students_on_spp_batch_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "role", default: "USER"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "donations", "campaigns"
  add_foreign_key "spp_invoices", "spp_categories"
  add_foreign_key "spp_invoices", "spp_students"
  add_foreign_key "spp_payments", "spp_batches"
  add_foreign_key "spp_payments", "spp_invoices"
  add_foreign_key "spp_payments", "spp_students"
  add_foreign_key "spp_payments", "users"
  add_foreign_key "spp_students", "spp_batches"
end
