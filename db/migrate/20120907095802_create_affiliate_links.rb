class CreateAffiliateLinks < ActiveRecord::Migration
  def change
    create_table :spree_affiliate_links do |t|
      t.string :name
      t.string :destination_url

      t.timestamps
    end
  end
end
