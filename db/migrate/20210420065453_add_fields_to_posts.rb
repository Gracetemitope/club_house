# frozen_string_literal: true

class AddFieldsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :title, :string
  end
end
