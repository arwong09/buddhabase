define ["backbone"], (Backbone) ->

  class Item extends Backbone.model

    initalize: (itemData) ->
      @set itemData