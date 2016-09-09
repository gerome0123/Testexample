class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.decimal :unit, precision: 4, scale: 2

      t.timestamps
    end
  end
end
