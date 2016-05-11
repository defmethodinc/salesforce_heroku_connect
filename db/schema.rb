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

ActiveRecord::Schema.define(version: 20160511152548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account", force: true do |t|
    t.string   "accountsource"
    t.string   "active__c"
    t.datetime "systemmodstamp"
    t.string   "name"
    t.datetime "createddate"
    t.string   "billingcity"
    t.boolean  "isdeleted"
    t.string   "sfid"
    t.decimal  "annualrevenue"
    t.string   "_hc_err"
    t.string   "_hc_lastop"
    t.string   "accountnumber"
  end

  create_table "contact", force: true do |t|
    t.string   "accountsource"
    t.string   "active__c"
    t.datetime "systemmodstamp"
    t.string   "name"
    t.datetime "createddate"
    t.string   "billingcity"
    t.boolean  "isdeleted"
    t.string   "sfid"
    t.decimal  "annualrevenue"
    t.string   "_hc_err"
    t.string   "_hc_lastop"
    t.string   "accountnumber"
  end

  create_table "non_salesforce_tables", force: true do |t|
    t.string "name"
  end

end
