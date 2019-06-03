class AddUserToMonthlies < ActiveRecord::Migration[5.2]
  def change
    add_reference :monthlies, :user, foreign_key: true
  end
end
