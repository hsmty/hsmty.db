require 'sequel'

DB.create_table :status  do
    DateTime    :changed
    TrueClass   :state
    String      :message
    foreign_key :created_by, :users
end

DB.create_table :happenings  do
    primary_key :id
    String      :name
    String      :desc
    DateTime    :time
    Numeric     :cost
    DateTime    :created
    foreign_key :created_by, :users
end

DB.create_table :events  do
    primary_key :id
    String      :name
    String      :type
    DateTime    :time
    String      :extra
    foreign_key  :created_by, :users
end

DB.create_table :projects do
    primary_key :id
    String      :name
    String      :url
    DateTime    :created
    foreign_key :created_by, :users
end

DB.create_table :feed_classes do
    primary_key :id
    String      :name
end

DB.create_table :feed_types do
    primary_key :id
    String      :name
end

DB.create_table :feeds do
    primary_key :id
    String      :url
    DateTime    :created
    foreign_key :type_id, :feed_types
    foreign_key :class_id, :feed_classes
    foreign_key :created_by, :users
end
