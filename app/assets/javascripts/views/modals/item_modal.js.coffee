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

    onShow: ->
      @addContentView = new ItemModalView(model: @model)
      @addContentView.render()
      @$(".bbm-modal").html @addContentView.$el

    clickOutside: -> true # close modal when clicking on background
