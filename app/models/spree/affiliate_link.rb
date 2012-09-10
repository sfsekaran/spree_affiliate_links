module Spree
  class AffiliateLink < ActiveRecord::Base
    attr_accessible :destination_url, :name, :image_attributes

    has_one :image, :class_name => 'Spree::Image', :as => :viewable, :dependent => :destroy, :validate => true
    accepts_nested_attributes_for :image
  end
end
