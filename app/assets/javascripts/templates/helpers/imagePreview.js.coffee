define ["hbs/handlebars"], (Handlebars) ->

  Handlebars.registerHelper "imagePreview", (image_url) ->
    "<img class='modal-image-preview' src=#{image_url}>"
