define ["backbone"], (Backbone) ->
  class Items extends Backbone.Collection
    comparator: "sku"
    url: -> "http://localhost:3000/items"