define [
  "backbone"
  "models/item"
], (
  Backbone
  Item
) ->

  class StorefrontPage extends Backbone.Model
    initialize: (itemData) ->
      @set("Items", itemData)

    parse: (itemsData) ->
      _.each(itemsData, (itemData) ->
        new Item(itemData)
      )
