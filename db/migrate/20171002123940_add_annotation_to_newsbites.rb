class AddAnnotationToNewsbites < ActiveRecord::Migration[5.1]
  def change
    add_column :newsbites, :annotation, :string, null: false
  end
end
