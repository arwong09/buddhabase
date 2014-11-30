define ["hbs/handlebars"], (Handlebars) ->

  Handlebars.registerHelper "saveCheckMark", (state) ->
    if state == "unsaved" then "<div class='save-check-mark'></div>"
    else
      "<i class='fa fa-trash'></i>"