# global app

define [
  "backbone"
  "views/storefront/storefront_view"
  "jquery"
], (
  Backbone
  StorefrontView
  $
) ->

  class Router extends Backbone.Router

    routes:
      "database": "database"
      "api/storefront/browse": "storefront"

    storefront: ->
      app.storefrontRegion.show new StorefrontView
