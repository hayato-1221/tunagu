class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :gender
      t.data :birth_date
      t.integer :age
      t.string :address
      t.references :user

      t.timestamps
    end
  end
end
