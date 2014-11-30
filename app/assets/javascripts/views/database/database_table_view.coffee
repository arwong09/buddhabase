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
    events:
      "click .header-row-cell": "sortByColumn"
    
    sortByColumn: (event) ->
      sortBy = "#{$(event.currentTarget).text().trim()}"
      if @model.get("sortedBy") == sortBy
        if @model.get("reversed") == false
          @collection.comparator = (a, b) ->
            if a.get(sortBy) < b.get(sortBy)
              return 1
            else if a.get(sortBy) > b.get(sortBy)
              return -1
            else
              return 0
          @model.set("reversed", true)
        else
          @collection.comparator = sortBy
          @model.set("reversed", false)
      else
        @collection.comparator = sortBy
        @model.set("sortedBy", sortBy)
        @model.set("reversed", false)
      @collection.sort()
      @render()