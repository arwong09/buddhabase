define ["backbone"], (Backbone) ->
  class Items extends Backbone.Collection
      url: -> "http://localhost:3000/items.json"