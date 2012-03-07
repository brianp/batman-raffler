Batman.mixins.Highlighter =
  initialize: ->
    @node = $(@)

  highlight: ->
    $('.winner').removeClass('highlight')
    @node.addClass('highlight')
