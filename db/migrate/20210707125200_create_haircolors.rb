class CreateHaircolors < ActiveRecord::Migration[6.1]
  def change
    create_table :haircolors do |t|

      t.timestamps
    end
  end
end
