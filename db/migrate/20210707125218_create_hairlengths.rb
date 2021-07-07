class CreateHairlengths < ActiveRecord::Migration[6.1]
  def change
    create_table :hairlengths do |t|

      t.timestamps
    end
  end
end
