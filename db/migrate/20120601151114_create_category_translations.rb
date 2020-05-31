class CreateCategoryTranslations < ActiveRecord::Migration[4.2]
  create_table :refinery_blog_category_translations do |t|
    t.string :slug
    t.string :title

    t.string :locale, null: false
    t.integer :refinery_blog_category_id, null: false

    t.timestamps null: false
  end

  def down
    drop_table :refinery_blog_category_translations
  end
end

