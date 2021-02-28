class CreateVisitHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :visit_histories do |t|
      t.date :visit_date
      t.integer :fee
      t.references :client
      t.references :user

      t.timestamps
    end
  end
end
