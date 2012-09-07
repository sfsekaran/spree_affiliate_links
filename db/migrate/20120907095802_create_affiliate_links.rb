class CreateAffiliateLinks < ActiveRecord::Migration
  def change
    create_table :affiliate_links do |t|
      t.string :name
      t.string :image
      t.string :destination_url

      t.timestamps
    end
  end
end
