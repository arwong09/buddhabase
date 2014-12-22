define [
  "backbone.marionette"
  "hbs!templates/storefront/storefront_page_template_A"
  "hbs!templates/storefront/storefront_page_template_B"
  "hbs!templates/storefront/storefront_page_template_C"
  "hbs!templates/storefront/storefront_page_template_D"
  "hbs!templates/storefront/storefront_page_template_E"
  "hbs!templates/storefront/storefront_page_template_F"
], (
  Marionette
  storefrontPageTemplateA
  storefrontPageTemplateB
  storefrontPageTemplateC
  storefrontPageTemplateD
  storefrontPageTemplateE
  storefrontPageTemplateF
) ->

  class StorefrontPageView extends Marionette.ItemView
    className: "container"
    getTemplate: ->
      number = Math.floor((Math.random() * 6) + 1)
      switch number
        when 1
          storefrontPageTemplateA
        when 2
          storefrontPageTemplateB
        when 3
          storefrontPageTemplateC
        when 4
          storefrontPageTemplateD
        when 5
          storefrontPageTemplateE
        when 6
          storefrontPageTemplateF
        else
          console.error "unhandled else in getTemplate"
