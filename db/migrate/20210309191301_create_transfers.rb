class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.references :student, foreign_key: true
      t.references :school, foreign_key: true
      t.references :cohort, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
