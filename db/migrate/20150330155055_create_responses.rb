class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :question, null: false
      t.belongs_to :taker, null: false
      t.references :choice, null: false

      t.timestamps null: false
    end
  end
end
