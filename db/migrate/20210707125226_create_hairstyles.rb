class CreateHairstyles < ActiveRecord::Migration[6.1]
  def change
    create_table :hairstyles do |t|
      t.string :hairstylename,  null: false
      t.text :detail,           null: false

      t.integer :gender_id,     null: false
      t.integer :hairlength_id, null: false
      t.integer :haircolor_id,  null: false

      t.references :user,       foreign_key: true

      t.timestamps
    end
  end
end
