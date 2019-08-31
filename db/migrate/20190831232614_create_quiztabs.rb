class CreateQuiztabs < ActiveRecord::Migration[5.2]
  def change
    create_table :quiztabs do |t|
      t.string :text001
      t.timestamps
    end
  end
end
