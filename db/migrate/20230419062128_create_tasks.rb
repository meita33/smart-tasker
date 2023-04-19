class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :user,             null: false, foreign_key: true
      t.references :project,          null: false, foreign_key: true
      t.string     :task_title,       null: false
      t.text       :task_detail,      null: false
      t.integer    :label_id,         null: false

      t.timestamps
    end
  end
end
