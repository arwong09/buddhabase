define [
  "router"
  "backbone.marionette"
  "backbone.marionette.modals"
], (
  Router
  Marionette
  Modals
) ->

  class App extends Marionette.Application

    router: new Router

    initialize: ->
      @addRegions
        databaseRegion: "#database-region"
        storefrontRegion: "#storefront-region"
        modalRegion:
          selector: "#modal-region"
          regionClass: Modals
