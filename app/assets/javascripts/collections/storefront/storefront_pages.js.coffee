define [
  "backbone"
  "models/storefront/storefront_page"
], (
  Backbone
  StorefrontPage
) ->

  class StorefrontPages extends Backbone.Collection
    url: -> "/api/inventory/items"
    model: StorefrontPage
