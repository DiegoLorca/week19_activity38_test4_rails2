class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.boolean :completed, default: false
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
