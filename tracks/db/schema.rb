# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 7) do

  create_table "contexts", :force => true do |t|
    t.column "name", :string, :default => "", :null => false
    t.column "hide", :integer, :limit => 4, :default => 0, :null => false
    t.column "position", :integer, :default => 0, :null => false
    t.column "user_id", :integer, :default => 1
  end

  create_table "notes", :force => true do |t|
    t.column "user_id", :integer, :default => 0, :null => false
    t.column "project_id", :integer, :default => 0, :null => false
    t.column "body", :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "projects", :force => true do |t|
    t.column "name", :string, :default => "", :null => false
    t.column "position", :integer, :default => 0, :null => false
    t.column "done", :integer, :limit => 4, :default => 0, :null => false
    t.column "user_id", :integer, :default => 1
    t.column "description", :text
  end

  create_table "sessions", :force => true do |t|
    t.column "session_id", :string
    t.column "data", :text
    t.column "updated_at", :datetime
  end

  add_index "sessions", ["session_id"], :name => "sessions_session_id_index"

  create_table "todos", :force => true do |t|
    t.column "context_id", :integer, :default => 0, :null => false
    t.column "description", :string, :limit => 100, :default => "", :null => false
    t.column "notes", :text
    t.column "done", :integer, :limit => 4, :default => 0, :null => false
    t.column "created_at", :datetime
    t.column "due", :date
    t.column "completed", :datetime
    t.column "project_id", :integer
    t.column "user_id", :integer, :default => 1
  end

  create_table "users", :force => true do |t|
    t.column "login", :string, :limit => 80
    t.column "password", :string, :limit => 40
    t.column "word", :string
    t.column "is_admin", :integer, :limit => 4, :default => 0, :null => false
    t.column "preferences", :text
  end

end
