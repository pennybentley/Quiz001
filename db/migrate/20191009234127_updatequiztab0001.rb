class Updatequiztab0001 < ActiveRecord::Migration[5.2]
  def change
    add_column :quiztabs, :artist, :string
  end
end
