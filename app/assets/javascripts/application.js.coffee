require [
  "backbone"
  "app"
  "collections/items"
  "views/database/database_view"
  "jquery"
  "underscore"
], (
  Backbone
  App
  Items
  DatabaseView
  $
  _
) ->

  window.app = new App
  Backbone.history.start({pushState: true})

  app.csrfToken = $("meta[name=csrf-token]").attr("content")
  app.databaseRegion.show new DatabaseView

  app.start()
