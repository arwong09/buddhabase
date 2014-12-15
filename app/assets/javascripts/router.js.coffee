define [
  "backbone"
  "jquery"
], (
  Backbone
  $
) ->

  class Router extends Backbone.Router

    routes:
      "database": "database"
      "storefront": "storefront"

    storefront: ->
      debugger
