class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.belongs_to :recording, foreign_key: true
      t.belongs_to :measuring_point, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
