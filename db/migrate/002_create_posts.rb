Sequel.migration do
  up do
    create_table :posts do
      primary_key :id
      String :title
      Text :body
      DateTime :created_at, null: false, default: Sequel::CURRENT_TIMESTAMP
      DateTime :updated_at, null: false, default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table :posts
  end
end
