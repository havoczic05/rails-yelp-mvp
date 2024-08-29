# frozen_string_literal: true

# Migración para crear la tabla restaurants
class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :category

      t.timestamps
    end
  end
end
