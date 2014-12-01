define [
  "backbone"
  "backbone.marionette"
  "hbs!templates/database/database_item_template"
  "jquery"
  "underscore"
], (
  Backbone
  Marionette
  DatabaseItemTemplate
  $
  _
) ->

  class DatabaseItemView extends Marionette.ItemView
    template: DatabaseItemTemplate
    className: "database-row"
    modelEvents:
      "change": "render"
    events:
      "click .fa-check-square": "saveNewItem"
      "click .fa-trash": "deleteItem"

    deleteItem: ->
      @model.destroy()

    saveNewItem: ->
      $inputs = @$el.find("input[type=text]")
      attributes = {state: "saved"}
      _.each($inputs, (input) ->
        $input = $(input)
        attributes["#{$input.prop('class')}"] = $input.val()
      )
      @model.save(attributes)

    