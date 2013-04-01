class AddSecuritylevelToUser < ActiveRecord::Migration
  def change
  	add_column :users, :securitylevel, :string
  end
end
