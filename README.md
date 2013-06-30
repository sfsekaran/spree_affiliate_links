SpreeAffiliateLinks
===================

I needed a way to give my Spree client a way to add footer affiliate
images with links, and so I created an extension for that. Simple.

*This doesn't have to be tied to affiliate links. It can be used as a
flexible image + url storage system. For example, I used it in a project
needing a carousel with links to products that were configurable by the client.*

You'll find an "Affiliate Links" section in the admin tabs. An example
on how to display the links in the layout is below.

Installation
============

    rake spree_affiliate_links:install:migrations
    rake db:migrate

What It Does
============

Stores a `name` associated with a `link`, `image`, and
`sort`. That's it! The rest is up to you.

You'll find a new tab in /admin where you can maintain these.

Example
=======

It's not hard to use, but here's a seed to get you started:

    # app/overrides/footer_affiliate_links.rb
    Deface::Override.new(
      :name => "footer_affiliate_links",
      :virtual_path => "spree/layouts/spree_application",
      :insert_bottom => "#footer",
      :partial => "affiliate_links/footer"
    )

    # app/views/affiliate_links/_footer.html.erb
    <%= Spree::AffiliateLink.each do |link| %>
      <a href="<%= link.destination_url %>">
        <%= image_tag link.image.attachment.url(:small) %>
      </a>
    <% end %>

That'll get you all of the affiliate links in the footer. Currently,
there's no way to order them, and you'll have to add your own image size
to the Spree::Image paperclip configuration dynamically if you want
that.

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2012 Sathya Sekaran, released under the New BSD License
