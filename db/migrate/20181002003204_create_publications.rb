class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|

      t.string :code
      t.string :title
      t.datetime :datetime
      t.integer :tipo
      t.timestamps
    end
  end
end
