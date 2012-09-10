Spree::Core::Engine.routes.prepend do
  namespace :admin do
    resources :affiliate_links
  end

  # Add your extension routes here
end
