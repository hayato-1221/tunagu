class CreateClientEarnings < ActiveRecord::Migration[6.1]
  def change
    create_table :client_earnings do |t|
      t.references :client, null: false, foreign_key: true
      t.references :earning, null: false, foreign_key: true
      t.integer :client_monthly_earnings

      t.timestamps
    end
  end
end
