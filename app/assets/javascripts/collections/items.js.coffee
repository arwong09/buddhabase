define ["backbone"], (Backbone) ->
  class Items extends Backbone.Collection
    sortedBy: "sku"
    comparator: "sku"
    url: -> "http://localhost:3000/items"