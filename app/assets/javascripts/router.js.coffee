# global app

define [
  "backbone"
  "views/inventory/inventory_view"
  "views/storefront/storefront_view"
  "jquery"
], (
  Backbone
  InventoryView
  StorefrontView
  $
) ->

  class Router extends Backbone.Router
    routes:
      "": "inventory" # temporary
      "inventory/items": "inventory"
      "storefront/browse": "storefront"

    inventory: ->
      app.inventoryRegion.show new InventoryView

    storefront: ->
      app.storefrontRegion.show new StorefrontView
