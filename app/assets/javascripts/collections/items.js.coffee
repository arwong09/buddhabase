define ["backbone", "models/item"], (Backbone, Item) ->

  class Items extends Backbone.Collection
    url: -> "/items"
    comparator: "sku"
    model: Item

    filterBySearch: (searchTerm) ->
      items = @models
      filteredItems = []
      for item in items
        filteredItems.push(item) if !item.hasSearchTerm(searchTerm)

      for item in filteredItems
        @remove(item)
