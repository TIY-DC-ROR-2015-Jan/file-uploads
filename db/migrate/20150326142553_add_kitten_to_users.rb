class AddKittenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :kitten, :string
  end
end
