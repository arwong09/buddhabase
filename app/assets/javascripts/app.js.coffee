define [
  "router"
  "backbone.marionette"
  "views/navbar"
  "views/storefront/storefront_page_view"
], (
  Router
  Marionette
  NavbarView
  StorefrontView
) ->

  class App extends Marionette.Application
    router: new Router

    initialize: ->
      @addRegions
        inventoryRegion: "#inventory-region"
        storefrontRegion: "#storefront-region"
        modalRegion: "#modal-region"
        navbarRegion: "#navbar-region"

      @navbarRegion.show(new NavbarView)
