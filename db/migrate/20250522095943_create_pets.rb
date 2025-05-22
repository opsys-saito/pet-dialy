class CreatePets < ActiveRecord::Migration[8.0]
  def change
    create_table :pets do |t|
      t.integer :animal_type
      t.string :name, null: false, default: ""
      t.references :user, null: false, foreign_key: true, type: :string

      t.timestamps
    end
  end
end
