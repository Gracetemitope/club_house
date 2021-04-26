# frozen_string_literal: true

class AddDisplayNameToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :display_name, :string
    add_index :posts, :display_name, unique: true, null: false, index: true, unique: true

  end
end
