
DB.create_table :users do
    primary_key :id
    String      :name
    String      :last_name
    String      :email
    String      :nick
    String      :password
end

DB.create_table :roles do
    primary_key :id
    String      :name
end

DB.create_join_table(:user_id=>:users, :role_id=>:roles)
