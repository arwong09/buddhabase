define ["backbone"], (Backbone) ->

  class StorefrontPage extends Backbone.Model

    initialize: (itemData) ->
      @set itemData

