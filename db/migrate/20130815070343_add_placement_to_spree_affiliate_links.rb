class AddPlacementToSpreeAffiliateLinks < ActiveRecord::Migration
  def change
    add_column :spree_affiliate_links, :placement, :string
  end
end
