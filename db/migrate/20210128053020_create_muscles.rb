class CreateMuscles < ActiveRecord::Migration[6.0]
  def change
    create_table :muscles do |t|
      t.string :title,          null: false
      t.text :explain,          null: false
      t.integer :part_id,       null: false
      t.integer :difficult_id,  null: false
      t.datetime :daytime,      null: false
      t.references :user,       foreign_key: true
      t.timestamps
    end
  end
end
