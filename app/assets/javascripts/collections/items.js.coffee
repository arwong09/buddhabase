define ["backbone"], (Backbone) ->
  class Items extends Backbone.Collection
      url: -> "/items"
      