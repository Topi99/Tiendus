class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :product, index: true
      t.attachment :archivo
      t.timestamps null: false
    end
    add_foreign_key :attachments, :products
  end
end
