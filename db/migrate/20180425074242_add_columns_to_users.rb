class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, :default => nil
    add_column :users, :last_name, :string, :default => nil
  end
end

