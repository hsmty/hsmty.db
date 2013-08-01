require 'sequel'

create_table(:users) do
    primary_key :id
    String      :name
    String      :last_name
    String      :email
    String      :nick
    String      :password
end

create_table(:roles) do
    primary_key :id
    String      :name
end

create_join_table(:user_id=>:users, :role_id=>:roles)
    
create_table(:happenings) do
    primary_key :id
    String      :name
    DateTime    :date
    Numeric     :cost
    DateTime    :created
    foreign_key :created_by, :users
end
