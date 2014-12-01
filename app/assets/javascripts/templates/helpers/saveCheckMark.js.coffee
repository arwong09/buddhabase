define ["hbs/handlebars"], (Handlebars) ->

  Handlebars.registerHelper "saveCheckMark", (state) ->
    if state == "unsaved" then "<i class='fa fa-check-square'></i>"
    else
      "<i class='fa fa-trash'></i>"
