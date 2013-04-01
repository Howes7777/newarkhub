class AddAccessForAdminuser < ActiveRecord::Migration
  def up
  	update('UPDATE User SET Admin = "true" where User_id = "13"')
  end

  def down
  end
end
