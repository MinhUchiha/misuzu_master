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

ActiveRecord::Schema.define(version: 20151012024657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "JOBマスタ", force: :cascade do |t|
    t.string   "job番号"
    t.string   "job名"
    t.date     "開始日"
    t.date     "終了日"
    t.string   "ユーザ番号"
    t.string   "ユーザ名"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "kaishamaster_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "社員番号"
    t.datetime "開始"
    t.datetime "終了"
    t.string   "状態コード"
    t.string   "場所コード"
    t.string   "JOB"
    t.string   "所属コード"
    t.string   "工程コード"
    t.string   "工数"
    t.string   "計上"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "shainmaster_id"
    t.integer  "joutaimaster_id"
    t.integer  "bashomaster_id"
    t.integer  "kouteimaster_id"
    t.string   "所在コード"
    t.integer  "shozai_id"
    t.integer  "jobmaster_id"
    t.text     "comment"
    t.string   "帰社区分"
  end

  create_table "jpt_holiday_msts", force: :cascade do |t|
    t.date     "event_date"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "keihi_bodies", force: :cascade do |t|
    t.integer  "申請番号"
    t.integer  "行番号"
    t.datetime "日付"
    t.string   "社員番号"
    t.string   "相手先"
    t.string   "機関名"
    t.string   "発"
    t.string   "着"
    t.integer  "発着kubun"
    t.decimal  "交通費"
    t.decimal  "日当"
    t.decimal  "宿泊費"
    t.decimal  "その他"
    t.string   "JOB"
    t.text     "備考"
    t.integer  "領収書kubun"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keihi_heads", force: :cascade do |t|
    t.integer  "申請番号"
    t.datetime "日付"
    t.string   "社員番号"
    t.string   "承認者"
    t.decimal  "交通費合計"
    t.decimal  "日当合計"
    t.decimal  "宿泊費合計"
    t.decimal  "その他合計"
    t.decimal  "旅費合計"
    t.decimal  "仮払金"
    t.decimal  "合計"
    t.decimal  "支給品"
    t.decimal  "過不足"
    t.integer  "承認kubun"
    t.datetime "清算予定日"
    t.datetime "清算日"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kintais", force: :cascade do |t|
    t.date     "日付"
    t.string   "曜日"
    t.string   "勤務タイプ"
    t.datetime "出勤時刻"
    t.datetime "退社時刻"
    t.decimal  "実労働時間"
    t.decimal  "遅刻時間"
    t.decimal  "早退時間"
    t.decimal  "普通残業時間"
    t.decimal  "深夜残業時間"
    t.decimal  "普通保守時間"
    t.decimal  "深夜保守時間"
    t.decimal  "保守携帯回数"
    t.integer  "状態1"
    t.integer  "状態2"
    t.integer  "状態3"
    t.text     "備考"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "会社マスタ", force: :cascade do |t|
    t.string   "会社コード"
    t.string   "会社名"
    t.text     "備考"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "作業場所マスタ", force: :cascade do |t|
    t.string   "作業場所コード",    limit: 255
    t.string   "作業場所名",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "場所マスタ", force: :cascade do |t|
    t.string   "場所コード"
    t.string   "場所名"
    t.string   "場所名カナ"
    t.string   "SUB"
    t.string   "場所区分"
    t.string   "会社コード"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "kaishamaster_id"
  end

  create_table "工程マスタ", force: :cascade do |t|
    t.string   "所属コード"
    t.string   "工程コード"
    t.string   "工程名"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "shozokumaster_id"
  end

  create_table "役職テーブル", force: :cascade do |t|
    t.string   "役職コード"
    t.string   "役職名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "所在マスタ", force: :cascade do |t|
    t.string   "所在コード"
    t.string   "所在名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "背景色"
    t.string   "文字色"
  end

  create_table "所属マスタ", force: :cascade do |t|
    t.string   "所属コード"
    t.string   "所属名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "承認者マスタ", force: :cascade do |t|
    t.string   "申請者"
    t.string   "承認者"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "担当者マスタ", force: :cascade do |t|
    t.string   "担当者コード",              limit: 255
    t.string   "担当者名称",               limit: 255
    t.string   "パスワード",               limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "shainmaster_id"
    t.boolean  "admin",                           default: false
  end

  create_table "状態マスタ", force: :cascade do |t|
    t.string   "状態コード"
    t.string   "状態名"
    t.string   "状態区分"
    t.string   "勤怠状態名"
    t.string   "マーク"
    t.string   "色"
    t.string   "WEB使用区分"
    t.string   "勤怠使用区分"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "文字色",        default: "#EFEFEF"
  end

  create_table "社員マスタ", force: :cascade do |t|
    t.string   "社員番号"
    t.string   "連携用社員番号"
    t.string   "氏名"
    t.string   "所属コード"
    t.string   "直間区分"
    t.string   "役職コード"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "shozokumaster_id"
    t.integer  "yakushokumaster_id"
  end

end
