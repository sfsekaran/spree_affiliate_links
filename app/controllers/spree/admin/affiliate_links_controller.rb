class Spree::Admin::AffiliateLinksController < Spree::Admin::ResourceController
  def new
    @affiliate_link = @object
  end

  def index
    @affiliate_links = if params[:placement].present?
      @affiliate_links.where(placement: params[:placement]).
                       order('sort asc')
    else
      []
    end
  end

  def edit
    @affiliate_link = @object
  end

  private

  def location_after_save
    collection_url(placement: @affiliate_link.placement)
  end
end
