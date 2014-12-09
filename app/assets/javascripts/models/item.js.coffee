define ["backbone"], (Backbone) ->

  class Item extends Backbone.Model
    defaults:
      sku: ""
      name: ""
      quantity: 0
      category: ""

    initialize: (itemData) ->
      @set itemData

    hasSearchTerm: (searchTerm) ->
      attributes = ["sku", "name", "category", "quantity"]
      for attribute in attributes
        return true if @get(attribute).toString() == searchTerm

      false
