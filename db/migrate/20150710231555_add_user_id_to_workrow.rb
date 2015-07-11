class AddUserIdToWorkrow < ActiveRecord::Migration
  def change
    add_column :workrows, :user_id, :integer
  end
end
