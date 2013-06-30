class Spree::Admin::AffiliateLinksController < Spree::Admin::ResourceController
  def new
    @affiliate_link = @object
  end

  def index
    @affiliate_links = @affiliate_links.order('sort asc')
  end

  def edit
    @affiliate_link = @object
  end
end
