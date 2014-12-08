define ["hbs/handlebars"], (Handlebars) ->

  Handlebars.registerHelper "saveCheckMark", (sku) ->
    if !sku then "<i class='fa fa-check-square'></i>"
    else
      "<i class='fa fa-trash'></i>"
