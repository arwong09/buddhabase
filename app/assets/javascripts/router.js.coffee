# global app

define [
  "backbone"
  "views/database/database_view"
  "views/storefront/storefront_view"
  "jquery"
], (
  Backbone
  DatabaseView
  StorefrontView
  $
) ->

  class Router extends Backbone.Router
    routes:
      "": "database"
      "api/storefront/browse": "storefront"

    database: ->
      app.databaseRegion.show new DatabaseView

    storefront: ->
      app.storefrontRegion.show new StorefrontView
