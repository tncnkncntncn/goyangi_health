class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|

      t.timestamps              
      t.string :name         ,null:false, default: ""
      t.boolean :gender      
      t.string :cat_type         ,default: ""
      t.boolean :castration
      t.integer :cat_weight  ,default: ""
      t.date :birth_day
      t.date :family_day
      t.string :hospital      ,default: ""
      t.references :user, null: false, foreign_key: true

    end
  end
end

