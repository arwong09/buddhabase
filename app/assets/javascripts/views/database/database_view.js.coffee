define [
  "backbone.marionette"
  "hbs!templates/database/database_template"
], (
  Marionette
  databaseTemplate
) ->
  
  class DatabaseView extends Marionette.LayoutView
    template: databaseTemplate

      