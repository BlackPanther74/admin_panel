class CreateCohortsstudents < ActiveRecord::Migration[5.2]
  def change
    create_table :cohortsstudents do |t|
      t.references :cohort
      t.references :student

      t.timestamps
    end
  end
end
