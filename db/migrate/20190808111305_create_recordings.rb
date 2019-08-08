class CreateRecordings < ActiveRecord::Migration[5.2]
  def change
    create_table :recordings do |t|
      t.belongs_to :affected_body_part, foreign_key: true
      t.date :recorded_at

      t.timestamps
    end
  end
end
