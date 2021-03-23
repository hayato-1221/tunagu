class CreateMedicalTreatmentHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_treatment_histories do |t|
      t.text :subjective
      t.text :objective
      t.text :assessment
      t.text :plan
      t.text :memo
      t.references :user
      t.references :visit_history
      t.timestamps
    end
  end
end
