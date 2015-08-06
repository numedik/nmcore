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

ActiveRecord::Schema.define(version: 20150806043135) do

  create_table "accounts", force: :cascade do |t|
    t.string   "code",           limit: 255
    t.string   "name",           limit: 255
    t.string   "add1",           limit: 255
    t.string   "add2",           limit: 255
    t.string   "add3",           limit: 255
    t.string   "postcode",       limit: 255
    t.string   "city",           limit: 255
    t.integer  "state_id",       limit: 4
    t.integer  "accounttype_id", limit: 4
    t.decimal  "eligibility",                precision: 8, scale: 2
    t.boolean  "disabled",       limit: 1,                           default: false
    t.datetime "created_at",                                                         null: false
    t.datetime "updated_at",                                                         null: false
  end

  add_index "accounts", ["accounttype_id"], name: "index_accounts_on_accounttype_id", using: :btree
  add_index "accounts", ["state_id"], name: "index_accounts_on_state_id", using: :btree

  create_table "accounttypes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "billings", force: :cascade do |t|
    t.string   "refnum",         limit: 255
    t.integer  "patient_id",     limit: 4
    t.integer  "treatment_id",   limit: 4
    t.integer  "billingstat_id", limit: 4
    t.string   "remark",         limit: 255
    t.datetime "closetime"
    t.string   "closeremark",    limit: 255
    t.integer  "user_id",        limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.date     "invoicedate"
  end

  add_index "billings", ["billingstat_id"], name: "index_billings_on_billingstat_id", using: :btree
  add_index "billings", ["patient_id"], name: "index_billings_on_patient_id", using: :btree
  add_index "billings", ["treatment_id"], name: "index_billings_on_treatment_id", using: :btree
  add_index "billings", ["user_id"], name: "index_billings_on_user_id", using: :btree

  create_table "billingstats", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "billitems", force: :cascade do |t|
    t.integer  "billing_id",      limit: 4
    t.integer  "patienttype_id",  limit: 4
    t.integer  "price_id",        limit: 4
    t.decimal  "adjustedprice",               precision: 7, scale: 2
    t.integer  "quantity",        limit: 4,                           default: 1
    t.integer  "user_id",         limit: 4
    t.integer  "billitemstat_id", limit: 4
    t.integer  "plan_id",         limit: 4
    t.integer  "chargegroup_id",  limit: 4
    t.integer  "account_id",      limit: 4
    t.integer  "gstcode_id",      limit: 4
    t.boolean  "inpackage",       limit: 1,                           default: false
    t.string   "editedname",      limit: 255
    t.string   "debitsn",         limit: 255
    t.boolean  "reversed",        limit: 1,                           default: false
    t.integer  "warehouse_id",    limit: 4
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
    t.decimal  "debit",                       precision: 7, scale: 2
    t.decimal  "credit",                      precision: 7, scale: 2
    t.decimal  "tax",                         precision: 7, scale: 2
  end

  add_index "billitems", ["account_id"], name: "index_billitems_on_account_id", using: :btree
  add_index "billitems", ["billing_id"], name: "index_billitems_on_billing_id", using: :btree
  add_index "billitems", ["billitemstat_id"], name: "index_billitems_on_billitemstat_id", using: :btree
  add_index "billitems", ["chargegroup_id"], name: "index_billitems_on_chargegroup_id", using: :btree
  add_index "billitems", ["gstcode_id"], name: "index_billitems_on_gstcode_id", using: :btree
  add_index "billitems", ["patienttype_id"], name: "index_billitems_on_patienttype_id", using: :btree
  add_index "billitems", ["plan_id"], name: "index_billitems_on_plan_id", using: :btree
  add_index "billitems", ["price_id"], name: "index_billitems_on_price_id", using: :btree
  add_index "billitems", ["user_id"], name: "index_billitems_on_user_id", using: :btree
  add_index "billitems", ["warehouse_id"], name: "index_billitems_on_warehouse_id", using: :btree

  create_table "billitemstats", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "bloodtypes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "chargegroups", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "designations", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "serialnum",       limit: 255
    t.integer  "documenttype_id", limit: 4
    t.integer  "patient_id",      limit: 4
    t.integer  "user_id",         limit: 4
    t.text     "html",            limit: 65535
    t.integer  "documentstat_id", limit: 4
    t.string   "remark",          limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "documents", ["documentstat_id"], name: "index_documents_on_documentstat_id", using: :btree
  add_index "documents", ["documenttype_id"], name: "index_documents_on_documenttype_id", using: :btree
  add_index "documents", ["patient_id"], name: "index_documents_on_patient_id", using: :btree
  add_index "documents", ["user_id"], name: "index_documents_on_user_id", using: :btree

  create_table "documentstats", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "documenttypes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.text     "html",       limit: 65535
    t.boolean  "disabled",   limit: 1,     default: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "drugdosages", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "drugdurations", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.integer  "multiplier", limit: 4,   default: 1
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "drugfrequencies", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.float    "multiplier", limit: 24,  default: 1.0
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "drugprocedures", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "drugroutes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "drugstrengths", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "drugtypes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "gstcodes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.string   "gsttype",    limit: 255
    t.integer  "rate",       limit: 4
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "code",             limit: 255
    t.string   "name",             limit: 255
    t.string   "scientificname",   limit: 255
    t.integer  "inventorytype_id", limit: 4
    t.integer  "drugtype_id",      limit: 4
    t.integer  "minstock",         limit: 4
    t.integer  "maxstock",         limit: 4
    t.integer  "orderstock",       limit: 4
    t.decimal  "strength",                     precision: 5, scale: 2
    t.integer  "drugstrength_id",  limit: 4
    t.integer  "dosage",           limit: 4
    t.integer  "drugdosage_id",    limit: 4
    t.integer  "drugroute_id",     limit: 4
    t.integer  "drugfrequency_id", limit: 4
    t.decimal  "duration",                     precision: 5, scale: 2
    t.integer  "drugduration_id",  limit: 4
    t.integer  "drugprocedure_id", limit: 4
    t.boolean  "prn",              limit: 1,                           default: false
    t.boolean  "disabled",         limit: 1,                           default: false
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
  end

  add_index "inventories", ["drugdosage_id"], name: "index_inventories_on_drugdosage_id", using: :btree
  add_index "inventories", ["drugduration_id"], name: "index_inventories_on_drugduration_id", using: :btree
  add_index "inventories", ["drugfrequency_id"], name: "index_inventories_on_drugfrequency_id", using: :btree
  add_index "inventories", ["drugprocedure_id"], name: "index_inventories_on_drugprocedure_id", using: :btree
  add_index "inventories", ["drugroute_id"], name: "index_inventories_on_drugroute_id", using: :btree
  add_index "inventories", ["drugstrength_id"], name: "index_inventories_on_drugstrength_id", using: :btree
  add_index "inventories", ["drugtype_id"], name: "index_inventories_on_drugtype_id", using: :btree
  add_index "inventories", ["inventorytype_id"], name: "index_inventories_on_inventorytype_id", using: :btree

  create_table "inventorytypes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "labcharges", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "labitems", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "name",        limit: 255
    t.string   "unit",        limit: 255
    t.string   "normalvalue", limit: 255
    t.boolean  "disabled",    limit: 1,   default: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "labrequestitems", force: :cascade do |t|
    t.integer  "labrequest_id", limit: 4
    t.integer  "labitem_id",    limit: 4
    t.text     "remark",        limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "labrequestitems", ["labitem_id"], name: "index_labrequestitems_on_labitem_id", using: :btree
  add_index "labrequestitems", ["labrequest_id"], name: "index_labrequestitems_on_labrequest_id", using: :btree

  create_table "labrequests", force: :cascade do |t|
    t.integer  "treatment_id", limit: 4
    t.integer  "user_id",      limit: 4
    t.datetime "requestdate"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "labrequests", ["treatment_id"], name: "index_labrequests_on_treatment_id", using: :btree
  add_index "labrequests", ["user_id"], name: "index_labrequests_on_user_id", using: :btree

  create_table "labresults", force: :cascade do |t|
    t.integer  "labrequestitem_id", limit: 4
    t.integer  "labtemplate_id",    limit: 4
    t.text     "html",              limit: 65535
    t.text     "json",              limit: 65535
    t.string   "attachmenturl",     limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "labresults", ["labrequestitem_id"], name: "index_labresults_on_labrequestitem_id", using: :btree
  add_index "labresults", ["labtemplate_id"], name: "index_labresults_on_labtemplate_id", using: :btree

  create_table "labtemplates", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.text     "html",       limit: 65535
    t.boolean  "disabled",   limit: 1,     default: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "maritals", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "nationalities", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "oauth_access_grants", force: :cascade do |t|
    t.integer  "resource_owner_id", limit: 4,     null: false
    t.integer  "application_id",    limit: 4,     null: false
    t.string   "token",             limit: 255,   null: false
    t.integer  "expires_in",        limit: 4,     null: false
    t.text     "redirect_uri",      limit: 65535, null: false
    t.datetime "created_at",                      null: false
    t.datetime "revoked_at"
    t.string   "scopes",            limit: 255
  end

  add_index "oauth_access_grants", ["token"], name: "index_oauth_access_grants_on_token", unique: true, using: :btree

  create_table "oauth_access_tokens", force: :cascade do |t|
    t.integer  "resource_owner_id", limit: 4
    t.integer  "application_id",    limit: 4
    t.string   "token",             limit: 255, null: false
    t.string   "refresh_token",     limit: 255
    t.integer  "expires_in",        limit: 4
    t.datetime "revoked_at"
    t.datetime "created_at",                    null: false
    t.string   "scopes",            limit: 255
  end

  add_index "oauth_access_tokens", ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true, using: :btree
  add_index "oauth_access_tokens", ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id", using: :btree
  add_index "oauth_access_tokens", ["token"], name: "index_oauth_access_tokens_on_token", unique: true, using: :btree

  create_table "oauth_applications", force: :cascade do |t|
    t.string   "name",         limit: 255,                null: false
    t.string   "uid",          limit: 255,                null: false
    t.string   "secret",       limit: 255,                null: false
    t.text     "redirect_uri", limit: 65535,              null: false
    t.string   "scopes",       limit: 255,   default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "oauth_applications", ["uid"], name: "index_oauth_applications_on_uid", unique: true, using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "mrn",                  limit: 255
    t.string   "mykadno",              limit: 255
    t.string   "oldic",                limit: 255
    t.string   "passport",             limit: 255
    t.string   "birthcert",            limit: 255
    t.string   "fullname",             limit: 255
    t.integer  "gender_id",            limit: 4
    t.string   "add1",                 limit: 255
    t.string   "add2",                 limit: 255
    t.string   "add3",                 limit: 255
    t.string   "city",                 limit: 255
    t.string   "postcode",             limit: 255
    t.integer  "state_id",             limit: 4
    t.integer  "nationality_id",       limit: 4
    t.string   "homephone",            limit: 255
    t.string   "mobilephone",          limit: 255
    t.string   "email",                limit: 255
    t.date     "dob"
    t.integer  "defaultplan_id",       limit: 4
    t.integer  "defaultaccount_id",    limit: 4
    t.string   "profession",           limit: 255
    t.string   "employer",             limit: 255
    t.string   "employerphone",        limit: 255
    t.integer  "religion_id",          limit: 4
    t.integer  "marital_id",           limit: 4
    t.integer  "race_id",              limit: 4
    t.integer  "bloodtype_id",         limit: 4
    t.integer  "patientstat_id",       limit: 4
    t.text     "remarkgeneral",        limit: 65535
    t.text     "remarkallergy",        limit: 65535
    t.text     "remarkmedicalhistory", limit: 65535
    t.text     "remarkfamilyhistory",  limit: 65535
    t.integer  "rnstat_id",            limit: 4
    t.integer  "designation_id",       limit: 4
    t.string   "relativename",         limit: 255
    t.string   "relationrelation",     limit: 255
    t.string   "relativeadd",          limit: 255
    t.string   "relativetel",          limit: 255
    t.integer  "registrar_id",         limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "patients", ["bloodtype_id"], name: "index_patients_on_bloodtype_id", using: :btree
  add_index "patients", ["designation_id"], name: "index_patients_on_designation_id", using: :btree
  add_index "patients", ["gender_id"], name: "index_patients_on_gender_id", using: :btree
  add_index "patients", ["marital_id"], name: "index_patients_on_marital_id", using: :btree
  add_index "patients", ["nationality_id"], name: "index_patients_on_nationality_id", using: :btree
  add_index "patients", ["patientstat_id"], name: "index_patients_on_patientstat_id", using: :btree
  add_index "patients", ["race_id"], name: "index_patients_on_race_id", using: :btree
  add_index "patients", ["religion_id"], name: "index_patients_on_religion_id", using: :btree
  add_index "patients", ["rnstat_id"], name: "index_patients_on_rnstat_id", using: :btree
  add_index "patients", ["state_id"], name: "index_patients_on_state_id", using: :btree

  create_table "patientstats", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "patienttypes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "poitems", force: :cascade do |t|
    t.integer  "purchaseorder_id", limit: 4
    t.integer  "inventory_id",     limit: 4
    t.string   "description",      limit: 255
    t.decimal  "quantity",                     precision: 7, scale: 2
    t.decimal  "price",                        precision: 7, scale: 2
    t.string   "accountnum",       limit: 255
    t.integer  "user_id",          limit: 4
    t.decimal  "orderunit",                    precision: 4, scale: 2
    t.boolean  "disabled",         limit: 1,                           default: false
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
  end

  add_index "poitems", ["inventory_id"], name: "index_poitems_on_inventory_id", using: :btree
  add_index "poitems", ["purchaseorder_id"], name: "index_poitems_on_purchaseorder_id", using: :btree
  add_index "poitems", ["user_id"], name: "index_poitems_on_user_id", using: :btree

  create_table "postats", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "prices", force: :cascade do |t|
    t.string   "code",             limit: 255
    t.string   "name",             limit: 255
    t.integer  "plan_id",          limit: 4
    t.decimal  "actualcost",                   precision: 7, scale: 2
    t.decimal  "recommendedprice",             precision: 7, scale: 2
    t.integer  "pricetype_id",     limit: 4
    t.integer  "gstcode_id",       limit: 4
    t.integer  "chargegroup_id",   limit: 4
    t.boolean  "reducestock",      limit: 1,                           default: false
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
  end

  add_index "prices", ["chargegroup_id"], name: "index_prices_on_chargegroup_id", using: :btree
  add_index "prices", ["gstcode_id"], name: "index_prices_on_gstcode_id", using: :btree
  add_index "prices", ["plan_id"], name: "index_prices_on_plan_id", using: :btree
  add_index "prices", ["pricetype_id"], name: "index_prices_on_pricetype_id", using: :btree

  create_table "pricetypes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "purchaseorders", force: :cascade do |t|
    t.string   "ponumber",     limit: 255
    t.integer  "vendor_id",    limit: 4
    t.date     "podate"
    t.integer  "user_id",      limit: 4
    t.string   "accountnum",   limit: 255
    t.integer  "postat_id",    limit: 4
    t.string   "department",   limit: 255
    t.date     "expecteddate"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "purchaseorders", ["postat_id"], name: "index_purchaseorders_on_postat_id", using: :btree
  add_index "purchaseorders", ["user_id"], name: "index_purchaseorders_on_user_id", using: :btree
  add_index "purchaseorders", ["vendor_id"], name: "index_purchaseorders_on_vendor_id", using: :btree

  create_table "races", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "religions", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "rnstats", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "treatmentnotes", force: :cascade do |t|
    t.integer  "treatment_id",         limit: 4
    t.integer  "treatmentnotetype_id", limit: 4
    t.text     "note",                 limit: 65535
    t.integer  "user_id",              limit: 4
    t.boolean  "disabled",             limit: 1,     default: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "treatmentnotes", ["treatment_id"], name: "index_treatmentnotes_on_treatment_id", using: :btree
  add_index "treatmentnotes", ["treatmentnotetype_id"], name: "index_treatmentnotes_on_treatmentnotetype_id", using: :btree
  add_index "treatmentnotes", ["user_id"], name: "index_treatmentnotes_on_user_id", using: :btree

  create_table "treatmentnotetypes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.string   "sn",               limit: 255
    t.integer  "patient_id",       limit: 4
    t.integer  "patienttype_id",   limit: 4
    t.integer  "treatmentstat_id", limit: 4
    t.integer  "registrar_id",     limit: 4
    t.integer  "plan_id",          limit: 4
    t.integer  "discipline_id",    limit: 4
    t.integer  "doctor_id",        limit: 4
    t.boolean  "legalcase",        limit: 1,   default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "treatments", ["discipline_id"], name: "index_treatments_on_discipline_id", using: :btree
  add_index "treatments", ["patient_id"], name: "index_treatments_on_patient_id", using: :btree
  add_index "treatments", ["patienttype_id"], name: "index_treatments_on_patienttype_id", using: :btree
  add_index "treatments", ["plan_id"], name: "index_treatments_on_plan_id", using: :btree
  add_index "treatments", ["treatmentstat_id"], name: "index_treatments_on_treatmentstat_id", using: :btree

  create_table "treatmentstats", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               limit: 255
    t.integer  "workorder_id",           limit: 4
    t.string   "fullname",               limit: 255
    t.string   "phone",                  limit: 255
    t.integer  "role_id",                limit: 4
    t.integer  "discipline_id",          limit: 4
    t.integer  "department_id",          limit: 4
    t.integer  "userstat_id",            limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["department_id"], name: "index_users_on_department_id", using: :btree
  add_index "users", ["discipline_id"], name: "index_users_on_discipline_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["userstat_id"], name: "index_users_on_userstat_id", using: :btree
  add_index "users", ["workorder_id"], name: "index_users_on_workorder_id", using: :btree

  create_table "userstats", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "code",           limit: 255
    t.string   "roc",            limit: 255
    t.string   "name",           limit: 255
    t.string   "contactname",    limit: 255
    t.string   "contactphone",   limit: 255
    t.string   "contactemail",   limit: 255
    t.date     "registereddate"
    t.string   "remark",         limit: 255
    t.string   "add1",           limit: 255
    t.string   "add2",           limit: 255
    t.string   "add3",           limit: 255
    t.string   "city",           limit: 255
    t.string   "postcode",       limit: 255
    t.integer  "state_id",       limit: 4
    t.integer  "user_id",        limit: 4
    t.boolean  "disabled",       limit: 1,   default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "vendors", ["state_id"], name: "index_vendors_on_state_id", using: :btree
  add_index "vendors", ["user_id"], name: "index_vendors_on_user_id", using: :btree

  create_table "warehouse_inventories", force: :cascade do |t|
    t.integer  "warehouse_id", limit: 4
    t.integer  "inventory_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "warehouse_inventories", ["inventory_id"], name: "index_warehouse_inventories_on_inventory_id", using: :btree
  add_index "warehouse_inventories", ["warehouse_id"], name: "index_warehouse_inventories_on_warehouse_id", using: :btree

  create_table "warehouses", force: :cascade do |t|
    t.integer  "store_id",         limit: 4
    t.integer  "purchaseorder_id", limit: 4
    t.decimal  "initialquantity",              precision: 7, scale: 2
    t.decimal  "stockquantity",                precision: 7, scale: 2
    t.integer  "user_id",          limit: 4
    t.boolean  "warehousestat",    limit: 1,                           default: true
    t.decimal  "orderunit",                    precision: 4, scale: 2
    t.decimal  "orderprice",                   precision: 7, scale: 2
    t.string   "batchnum",         limit: 255
    t.date     "expireddate"
    t.string   "accountnum",       limit: 255
    t.boolean  "disabled",         limit: 1,                           default: false
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
  end

  add_index "warehouses", ["purchaseorder_id"], name: "index_warehouses_on_purchaseorder_id", using: :btree
  add_index "warehouses", ["store_id"], name: "index_warehouses_on_store_id", using: :btree
  add_index "warehouses", ["user_id"], name: "index_warehouses_on_user_id", using: :btree

  create_table "workflows", force: :cascade do |t|
    t.integer  "treatment_id",    limit: 4
    t.integer  "workorder_id",    limit: 4
    t.integer  "sequenceorder",   limit: 4
    t.integer  "assigner_id",     limit: 4
    t.integer  "assignee_id",     limit: 4
    t.integer  "workflowstat_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "workflows", ["treatment_id"], name: "index_workflows_on_treatment_id", using: :btree
  add_index "workflows", ["workflowstat_id"], name: "index_workflows_on_workflowstat_id", using: :btree
  add_index "workflows", ["workorder_id"], name: "index_workflows_on_workorder_id", using: :btree

  create_table "workflowstats", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "workflowtemplateitems", force: :cascade do |t|
    t.integer  "workflowtemplate_id", limit: 4
    t.integer  "workorder_id",        limit: 4
    t.integer  "sequence",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "workflowtemplateitems", ["workflowtemplate_id"], name: "index_workflowtemplateitems_on_workflowtemplate_id", using: :btree
  add_index "workflowtemplateitems", ["workorder_id"], name: "index_workflowtemplateitems_on_workorder_id", using: :btree

  create_table "workflowtemplates", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "workorders", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.boolean  "disabled",   limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_foreign_key "accounts", "accounttypes"
  add_foreign_key "accounts", "states"
  add_foreign_key "billings", "billingstats"
  add_foreign_key "billings", "patients"
  add_foreign_key "billings", "treatments"
  add_foreign_key "billings", "users"
  add_foreign_key "billitems", "accounts"
  add_foreign_key "billitems", "billings"
  add_foreign_key "billitems", "billitemstats"
  add_foreign_key "billitems", "chargegroups"
  add_foreign_key "billitems", "gstcodes"
  add_foreign_key "billitems", "patienttypes"
  add_foreign_key "billitems", "plans"
  add_foreign_key "billitems", "prices"
  add_foreign_key "billitems", "users"
  add_foreign_key "billitems", "warehouses"
  add_foreign_key "documents", "documentstats"
  add_foreign_key "documents", "documenttypes"
  add_foreign_key "documents", "patients"
  add_foreign_key "documents", "users"
  add_foreign_key "inventories", "drugdosages"
  add_foreign_key "inventories", "drugdurations"
  add_foreign_key "inventories", "drugfrequencies"
  add_foreign_key "inventories", "drugprocedures"
  add_foreign_key "inventories", "drugroutes"
  add_foreign_key "inventories", "drugstrengths"
  add_foreign_key "inventories", "drugtypes"
  add_foreign_key "inventories", "inventorytypes"
  add_foreign_key "labrequestitems", "labitems"
  add_foreign_key "labrequestitems", "labrequests"
  add_foreign_key "labrequests", "treatments"
  add_foreign_key "labrequests", "users"
  add_foreign_key "labresults", "labrequestitems"
  add_foreign_key "labresults", "labtemplates"
  add_foreign_key "patients", "bloodtypes"
  add_foreign_key "patients", "designations"
  add_foreign_key "patients", "genders"
  add_foreign_key "patients", "maritals"
  add_foreign_key "patients", "nationalities"
  add_foreign_key "patients", "patientstats"
  add_foreign_key "patients", "races"
  add_foreign_key "patients", "religions"
  add_foreign_key "patients", "rnstats"
  add_foreign_key "patients", "states"
  add_foreign_key "poitems", "inventories"
  add_foreign_key "poitems", "purchaseorders"
  add_foreign_key "poitems", "users"
  add_foreign_key "prices", "chargegroups"
  add_foreign_key "prices", "gstcodes"
  add_foreign_key "prices", "plans"
  add_foreign_key "prices", "pricetypes"
  add_foreign_key "purchaseorders", "postats"
  add_foreign_key "purchaseorders", "users"
  add_foreign_key "purchaseorders", "vendors"
  add_foreign_key "treatmentnotes", "treatmentnotetypes"
  add_foreign_key "treatmentnotes", "treatments"
  add_foreign_key "treatmentnotes", "users"
  add_foreign_key "treatments", "disciplines"
  add_foreign_key "treatments", "patients"
  add_foreign_key "treatments", "patienttypes"
  add_foreign_key "treatments", "plans"
  add_foreign_key "treatments", "treatmentstats"
  add_foreign_key "users", "departments"
  add_foreign_key "users", "disciplines"
  add_foreign_key "users", "roles"
  add_foreign_key "users", "userstats"
  add_foreign_key "users", "workorders"
  add_foreign_key "vendors", "states"
  add_foreign_key "vendors", "users"
  add_foreign_key "warehouse_inventories", "inventories"
  add_foreign_key "warehouse_inventories", "warehouses"
  add_foreign_key "warehouses", "purchaseorders"
  add_foreign_key "warehouses", "stores"
  add_foreign_key "warehouses", "users"
  add_foreign_key "workflows", "treatments"
  add_foreign_key "workflows", "workflowstats"
  add_foreign_key "workflows", "workorders"
  add_foreign_key "workflowtemplateitems", "workflowtemplates"
  add_foreign_key "workflowtemplateitems", "workorders"
end
