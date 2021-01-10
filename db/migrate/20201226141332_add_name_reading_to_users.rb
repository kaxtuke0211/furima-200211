class AddNameReadingToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name_reading, :string
  end
end
