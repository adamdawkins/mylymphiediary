class CreateAffectedBodyParts < ActiveRecord::Migration[5.2]
  def change
    create_table :affected_body_parts do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :body_part, foreign_key: true

      t.timestamps
    end
  end
end
