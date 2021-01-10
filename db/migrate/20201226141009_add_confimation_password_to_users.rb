class AddConfimationPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :confimation_password, :string
  end
end
