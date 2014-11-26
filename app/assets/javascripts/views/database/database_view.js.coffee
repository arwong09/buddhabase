define ["backbone.marionette"], (Marionette) ->
  
  class DatabaseView extends Marionette.ItemView
    template: "database/database_template"
  
    initialize: ->
      console.log "yoyoyo!"