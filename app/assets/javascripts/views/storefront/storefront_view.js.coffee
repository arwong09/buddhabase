define [
  "backbone.marionette"
  "models/item"
  "collections/items"
  "hbs!templates/storefront/storefront_template"
], (
  Marionette
  ItemModel
  ItemsCollection
  storefrontTemplate
) ->

  class StorefrontView extends Marionette.LayoutView
    template: storefrontTemplate
    className: "storefront-container"
