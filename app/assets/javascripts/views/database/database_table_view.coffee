define [
  "backbone"
  "backbone.marionette"
  "views/database/database_item_view"
], (
  Backbone
  Marionette
  DatabaseItemView
) ->

  class DatabaseTableView extends Marionette.CollectionView
    childView: DatabaseItemView
    className: "database-table"

    addNewItem: ->

