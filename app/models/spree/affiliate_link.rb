module Spree
  class AffiliateLink < ActiveRecord::Base
    attr_accessible :destination_url, :name, :image_attributes, :sort

    has_one :image, :class_name => 'Spree::Image', :as => :viewable, :dependent => :destroy, :validate => true
    accepts_nested_attributes_for :image

    before_create :default_sort

    def default_sort
      self.sort = 0 if self.sort.nil?
    end
  end
end
