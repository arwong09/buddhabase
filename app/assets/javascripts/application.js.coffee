require [
  "backbone"
  "app"
  "collections/items"
  "jquery"
  "underscore"
], (
  Backbone
  App
  Items
  $
  _
) ->

  window.app = new App
  Backbone.history.start({pushState: true})
  app.csrfToken = $("meta[name=csrf-token]").attr("content")
  app.start()
