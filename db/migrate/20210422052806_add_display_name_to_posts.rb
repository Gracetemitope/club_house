# frozen_string_literal: true

class AddDisplayNameToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :display_name, :string
  end
end
