class CreateMonthlies < ActiveRecord::Migration[5.2]
  def change
    create_table :monthlies do |t|
      t.decimal :income
      t.date :deposited

      t.timestamps
    end
  end
end
