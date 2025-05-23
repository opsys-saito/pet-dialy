class CreatePets < ActiveRecord::Migration[8.0]
  def change
    create_table :pets do |t|
      t.integer :animal_type, null: false, default: 0
      t.date :birthed_on
      t.integer :gender, null: false, default: 0
      t.string :name, null: false, default: ""
      t.string :note, null: false, default: ""
      t.references :user, null: false, foreign_key: true, type: :string

      t.timestamps
    end
  end
end
