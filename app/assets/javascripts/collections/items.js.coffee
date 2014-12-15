define [
  "backbone"
  "models/item"
], (
  Backbone
  Item
) ->

  class Items extends Backbone.Collection
    url: -> "/api/inventory/items"
    comparator: "sku"
    model: Item

    filterBySearch: (searchTerm) ->
      filteredItems = _.filter(@models, (item) ->
        return !item.hasSearchTerm(searchTerm)
      )

      _.each(filteredItems, (item) =>
        @remove(item)
      )
