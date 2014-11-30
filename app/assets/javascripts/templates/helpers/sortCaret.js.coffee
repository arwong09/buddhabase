define ["hbs/handlebars"], (Handlebars) ->

  Handlebars.registerHelper "sortCaret", (sortedBy, reversed, name) ->
    return unless sortedBy == name
    if reversed
      "<i class='fa fa-caret-up' />"
    else 
      "<i class='fa fa-caret-down' />"