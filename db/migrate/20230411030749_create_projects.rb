class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :user,             null: false, foreign_key: true
      t.string     :title,            null: false
      t.text       :project_detail,   null: false
      t.integer    :start_date,       null: false
      t.integer    :end_date,         null: false
      t.timestamps
    end
  end
end
