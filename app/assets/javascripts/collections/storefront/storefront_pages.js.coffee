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
    parse: (itemsData) ->
      items = []
      tempArray = []
      _.each(itemsData, (itemData, i) ->
        tempArray.push(itemData)
        if (i + 1) % 5 == 0
          items.push(tempArray)
          tempArray = []
      )
      items.push(tempArray) if tempArray.length
      return items
