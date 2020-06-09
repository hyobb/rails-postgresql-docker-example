class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :field
      t.references :employment_company, index: true, foreign_key: true
      t.integer :resume_count

      t.timestamps null: false
    end
  end
end
