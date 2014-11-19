class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :uid
      t.decimal :overweight_percentage
      t.decimal :obese_percentage
      t.references :county, index: true

      t.timestamps
    end
  end
end
