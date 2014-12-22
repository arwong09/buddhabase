define [
  "backbone.marionette"
  "hbs!templates/storefront/storefront_page_template_A"
  "hbs!templates/storefront/storefront_page_template_B"
], (
  Marionette
  storefrontPageTemplateA
  storefrontPageTemplateB
) ->

  class StorefrontPageView extends Marionette.ItemView
    className: "container"
    getTemplate: ->
      number = Math.floor((Math.random() * 2) + 1)
      switch number
        when 1
          storefrontPageTemplateA
        when 2
          storefrontPageTemplateB
        else
          console.error "unhandled else in getTemplate"
