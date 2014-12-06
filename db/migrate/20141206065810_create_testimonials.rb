class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.datetime :date
      t.string :name
      t.string :company
      t.string :comment

      t.timestamps
    end
  end
end
