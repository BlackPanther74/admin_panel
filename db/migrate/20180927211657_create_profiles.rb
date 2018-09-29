class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :role
      t.string :status
      t.references :user
      t.timestamps
    end
  end
end
