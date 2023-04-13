class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :user,             null: false, foreign_key: true
      t.string     :project_title,    null: false
      t.text       :project_detail,   null: false
      t.date    :start_date,       null: false
      t.date    :end_date,         null: false
      t.timestamps
    end
  end
end
