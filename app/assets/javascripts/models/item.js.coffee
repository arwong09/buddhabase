define ["backbone"], (Backbone) ->

  class Item extends Backbone.Model
    defaults:
      sku: ""
      name: ""
      quantity: 0
      category: ""
      state: "unsaved"

    initalize: (itemData) ->
      @set itemData