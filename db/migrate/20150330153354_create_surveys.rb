class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.belongs_to :creator, null: false

      t.timestamps null: false
    end
  end
end
