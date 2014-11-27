require [
  "backbone"
  # "env"
  "app"
  "collections/items"
  "views/database/database_view"
  "jquery"
  "underscore"
], (
  Backbone
  # ENV
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
  
  # ENV[regionName] = app[regionName] for regionName in Object.keys(app._regionManager._regions)
  app.databaseRegion.show new DatabaseView
  
  app.start()