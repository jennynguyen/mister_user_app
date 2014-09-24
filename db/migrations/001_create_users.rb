Sequel.migration do
  # if we can infer
  # the opposite action we can use change
  up do
    create_table(:users) do
      primary_key :id
      String :email, :size => 255, :null => false
      String :name, :size => 127, :null => false
      String :gender, :size => 50, :null => false
      String :picture, :size => 50, :null => false
      Integer :dob
      String :phone, :size => 127, :null => false
      String :location, :size => 127, :null => false
      String :password, :size => 127, :null => false
    end
  end

  down do
    drop_table(:users)
  end
end

