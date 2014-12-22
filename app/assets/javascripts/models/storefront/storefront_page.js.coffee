define [
  "backbone"
  "models/item"
], (
  Backbone
  Item
) ->

  class StorefrontPage extends Backbone.Model
    url: "/?start=78&limit=5"

    initialize: (itemData) ->
      @set("Items", itemData)

    parse: (itemsData) ->
      _.each(itemsData, (itemData) ->
        new Item(itemData)
      )
