class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :description
      t.string :lecture
      t.string :period
      t.date :period_start
      t.date :period_end

      t.timestamps
    end
  end
end
