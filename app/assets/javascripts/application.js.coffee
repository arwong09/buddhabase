require [
  "backbone"
  "backbone.marionette.modals"
  "app"
  "collections/items"
  "views/database/database_view"
  "jquery"
  "underscore"
], (
  Backbone
  Modals
  App
  Items
  DatabaseView
  $
  _
) ->

  window.app = new App
  Backbone.history.start()
  app.addRegions
    databaseRegion: "#database-region"
    storefrontRegion: "#storefront-region"
    modalRegion:
      selector: "#modal-region"
      regionClass: Modals

  app.csrfToken = $("meta[name=csrf-token]").attr("content")
  app.databaseRegion.show new DatabaseView

  app.start()
