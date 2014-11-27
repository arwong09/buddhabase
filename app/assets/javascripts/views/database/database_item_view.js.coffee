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
    events:
      "click .save-check-mark": "saveNewItem"

    saveNewItem: ->
      $inputs = @$el.find("input[type=text]")
      _.each($inputs, (input) =>
        $input = $(input)
        @model.set("#{$input.prop('class')}", $input.val())
      )
      @model.save()