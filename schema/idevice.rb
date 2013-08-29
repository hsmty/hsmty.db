
DB.create_table :idevices do
    primary_key :id
    String      :token, :unique => true, :null => false
    String      :secret, :null => false
    String      :version, :null => false, :default => 0
end

DB.create_table :spaces do
    primary_key :id
    String      :name, :null => false
    String      :uri, :unique => true
end

DB.create_table :space_status do
    primary_key :id
    TrueClass   :status
    DateTime    :created
    foreign_key :space_id, :spaces
    index       :created
end

DB.create_join_table(:idevice => :idevices, :space => :spaces)
