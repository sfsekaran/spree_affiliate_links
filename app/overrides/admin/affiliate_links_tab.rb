Deface::Override.new(
  :name => "affiliate_links_tab",
  :virtual_path => "spree/layouts/admin",
  :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
  :text => '<%= tab :affiliate_links %>'
)
