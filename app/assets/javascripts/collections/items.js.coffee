define ["backbone", "models/item"], (Backbone, Item) ->

  class Items extends Backbone.Collection
    url: -> "/items"
    comparator: "sku"
    model: Item

    filterBySearch: (searchTerm) ->
      items = @models
      for item in items
        @remove(item) if item.hasSearchTerm(searchTerm)
