class CreateShps < ActiveRecord::Migration[5.0]
  def change
    create_table :shps do |t|
      t.text :shp_nm
      t.text :shp_tel
      t.text :shp_add

      t.timestamps
    end
  end
end
