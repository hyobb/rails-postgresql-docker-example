class CreateEmploymentCompanies < ActiveRecord::Migration
  def change
    create_table :employment_companies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
