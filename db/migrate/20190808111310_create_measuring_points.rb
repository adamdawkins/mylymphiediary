class CreateMeasuringPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :measuring_points do |t|
      t.decimal :value
      t.belongs_to :affected_body_part, foreign_key: true

      t.timestamps
    end
  end
end
