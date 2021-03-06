class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :code
      t.string :language
      t.integer :snip_count, :default => 0
      t.belongs_to :user
      t.timestamps
    end
  end
end
