class CreateShpowns < ActiveRecord::Migration[5.0]
  def change
    create_table :shpowns do |t|
      t.text :shpown_email
      t.text :shpown_pwd
      t.text :shpown_nm

      t.timestamps
    end
  end
end
