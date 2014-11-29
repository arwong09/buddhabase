define [
  "backbone"
  "backbone.marionette"
  "hbs!templates/database/database_table_template"
  "views/database/database_item_view"
], (
  Backbone
  Marionette
  DatabaseTableTemplate
  DatabaseItemView
) ->

  class DatabaseTableView extends Marionette.CompositeView
    template: DatabaseTableTemplate
    childView: DatabaseItemView
    className: "database-table"
    childViewContainer: "#database-items-container"