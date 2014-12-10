# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141210170029) do

  create_table "course_outcomes", force: true do |t|
    t.integer  "course_work_id", precision: 38, scale: 0
    t.integer  "outcome_id",     precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_outcomes", ["course_work_id"], name: "i_cou_out_cou_wor_id"
  add_index "course_outcomes", ["outcome_id"], name: "i_course_outcomes_outcome_id"

  create_table "course_works", force: true do |t|
    t.string   "name"
    t.string   "max_points"
    t.integer  "course_id",  precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_works", ["course_id"], name: "i_course_works_course_id"

  create_table "courses", force: true do |t|
    t.string   "course_num"
    t.string   "course_title"
    t.integer  "units",        precision: 38, scale: 0
    t.integer  "program_id",   precision: 38, scale: 0
    t.integer  "teacher_id",   precision: 38, scale: 0
    t.integer  "semester_id",  precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["program_id"], name: "index_courses_on_program_id"
  add_index "courses", ["semester_id"], name: "index_courses_on_semester_id"
  add_index "courses", ["teacher_id"], name: "index_courses_on_teacher_id"

  create_table "grades", force: true do |t|
    t.integer  "course_work_id", precision: 38, scale: 0
    t.integer  "student_id",     precision: 38, scale: 0
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grades", ["course_work_id"], name: "index_grades_on_course_work_id"
  add_index "grades", ["student_id"], name: "index_grades_on_student_id"

  create_table "ipas", force: true do |t|
    t.string   "letter"
    t.integer  "outcome_id", precision: 38, scale: 0
    t.integer  "course_id",  precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ipas", ["course_id"], name: "index_ipas_on_course_id"
  add_index "ipas", ["outcome_id"], name: "index_ipas_on_outcome_id"

  create_table "outcomes", force: true do |t|
    t.string   "objective_letter"
    t.string   "description"
    t.integer  "program_id",       precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "outcomes", ["program_id"], name: "index_outcomes_on_program_id"

  create_table "programs", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "student_id",   precision: 38, scale: 0
    t.string   "full_name"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "username"
    t.string   "grade_basis"
    t.string   "academic_lev"
    t.string   "availability"
    t.integer  "course_id",    precision: 38, scale: 0
    t.integer  "program_id",   precision: 38, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["course_id"], name: "index_students_on_course_id"
  add_index "students", ["program_id"], name: "index_students_on_program_id"

  create_table "teachers", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "username"
    t.string   "availability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                           default: "", null: false
    t.string   "encrypted_password",                              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          precision: 38, scale: 0, default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "i_users_reset_password_token", unique: true

end
