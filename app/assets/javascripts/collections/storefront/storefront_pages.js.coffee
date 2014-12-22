define [
  "backbone"
  "models/storefront/storefront_page"
], (
  Backbone
  StorefrontPage
) ->

  class StorefrontPages extends Backbone.Collection
    url: -> "/api/storefront/items"
    model: StorefrontPage
    parse: (data) ->
      [_.sample(data, 5)]
