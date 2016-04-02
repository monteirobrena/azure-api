class CreateProgrammingLanguages < ActiveRecord::Migration
  def change
    create_table :programming_languages do |t|
      t.string :name
      t.string :creator
      t.integer :creation_year

      t.timestamps null: false
    end
  end
end
