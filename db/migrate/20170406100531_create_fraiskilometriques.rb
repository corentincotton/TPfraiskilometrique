class CreateFraiskilometriques < ActiveRecord::Migration[5.0]
  def change
    create_table :fraiskilometriques do |t|
      t.string :nom
      t.string :date
      t.integer :chevaux
      t.integer :km
      t.float :total

      t.timestamps
    end
  end
end
