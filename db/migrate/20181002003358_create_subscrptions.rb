class CreateSubscrptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscrptions do |t|

      t.string :code
      t.datetime :expiration_date
      t.integer :tipo


      t.timestamps
    end
  end
end
