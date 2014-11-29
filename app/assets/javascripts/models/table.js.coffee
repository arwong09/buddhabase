define ["backbone"], (Backbone) ->

  class Item extends Backbone.Model
    defaults:
      sortedBy: "sku"
      reversed: false