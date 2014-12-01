require [
  "backbone"
  # "env"
  "backbone.marionette.modals"
  "app"
  "collections/items"
  "views/database/database_view"
  "jquery"
  "underscore"
], (
  Backbone
  # ENV
  Modals
  App
  Items
  DatabaseView
  $
  _
) ->
  
  # ENV.vent = new Backbone.Wreqr.EventAggregator
  window.app = new App
  Backbone.history.start()
  app.addRegions
    databaseRegion: "#database-region"
    modalRegion: 
      selector: "#modal-region"
      regionClass: Modals

  app.csrfToken = $("meta[name=csrf-token]").attr("content")
  # ENV[regionName] = app[regionName] for regionName in Object.keys(app._regionManager._regions)
  app.databaseRegion.show new DatabaseView
  
  app.start()