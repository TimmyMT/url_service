# frozen_string_literal: true

class CreateRequestCounters < ActiveRecord::Migration[7.1]
  def change
    create_table :request_counters do |t|
      t.string :date, null: false
      t.integer :value, null: false, default: 0

      t.timestamps
    end

    add_index :request_counters, :date, unique: true
  end
end
