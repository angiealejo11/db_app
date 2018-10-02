class AddThemesRefToPublications < ActiveRecord::Migration[5.2]
  def change
    add_reference :publications, :themes, foreign_key: true
  end
end
