require 'sequel'

create_table('devices') do
    primary_key :id
    String      :token
    String      :secret
    String      :version
end

create_table('spaces') do
    primary_key :id
    String      :name
    String      :url
end

create_table('space_status') do
    primary_key :id
    TrueClass   :status
    DateTime    :created
    foreign_key :space_id, :spaces
    index       :created
end

create_join_table(:device_id => :devices, :space_id => :spaces)