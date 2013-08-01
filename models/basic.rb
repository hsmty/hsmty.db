require 'sequel'

def create_tables(db)
    db.create_table(:users) do
        primary_key :id
        String      :name
        String      :last_name
        String      :email
        String      :nick
        String      :password
    end

    db.create_table(:roles) do
        primary_key :id
        String      :name
    end

    db.create_join_table(:user_id=>:users, :role_id=>:roles)
        
    db.create_table(:happenings) do
        primary_key :id
        String      :name
        DateTime    :date
        Numeric     :cost
        DateTime    :created
        foreign_key :created_by, :users
    end
end
