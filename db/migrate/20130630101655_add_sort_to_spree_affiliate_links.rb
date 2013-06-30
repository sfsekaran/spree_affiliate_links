class AddSortToSpreeAffiliateLinks < ActiveRecord::Migration
  def change
    add_column :spree_affiliate_links, :sort, :integer
  end
end
