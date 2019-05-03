class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
    t.string :title
    t.string :context
    t.boolean :done_flg, default: false, null: false
    t.timestamps
    end
  end
end
