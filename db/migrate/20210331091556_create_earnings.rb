class CreateEarnings < ActiveRecord::Migration[6.1]
  def change
    create_table :earnings do |t|
      t.date :month
      t.integer :monthly_earnings

      t.timestamps
    end
  end
end
