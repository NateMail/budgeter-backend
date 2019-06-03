class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :name
      t.decimal :amount
      t.date :due

      t.timestamps
    end
  end
end
