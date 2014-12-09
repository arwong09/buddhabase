define [
  "backbone.modal"
  "hbs!templates/nothing_template"
  "hbs!templates/modals/item_modal_template"
  "views/modals/item_modal_view"
], (
  Modal
  nothingTemplate
  ItemModalTemplate
  ItemModalView
) ->

  class ItemModal extends Modal
    className: "item-modal"
    template: nothingTemplate
    cancelEl: ".close"
    events:
      "submit form": -> false # don't submit form on enter key down

    initialize: (@model) ->

    onShow: ->
      @addContentView = new ItemModalView(@model)
      @addContentView.render()
      @$(".bbm-modal").html @addContentView.$el

    beforeSubmit: -> false # don't close modal when hitting enter
    clickOutside: -> true # close modal when clicking on background