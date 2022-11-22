class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :equipment
      t.string :gif
      t.string :bodyPart
      t.string :target

      t.timestamps
    end
  end
end
