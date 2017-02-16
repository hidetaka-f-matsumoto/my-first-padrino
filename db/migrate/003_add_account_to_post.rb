Sequel.migration do
  up do
    alter_table :posts do
      add_column :account_id, Integer
    end
    # and assigns a user to all existing posts
    first_account = Account.first
    Post.all.each {|p| p.update(account_id: first_account.id) }
  end

  down do
    alter_table :posts do
      drop_column :account_id
    end
  end
end
