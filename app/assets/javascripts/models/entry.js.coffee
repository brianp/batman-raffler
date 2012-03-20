class BatmanRaffler.Entry extends Batman.Model
  @storageKey: 'entries'
  @persist Batman.RailsStorage

  @encode "created_at", "updated_at", "name", "winner"

  win: ->
    @set('winner', true)
    $('.winner').removeClass('highlight')
    $('#'+@id).addClass('highlight')
    @save()

  @drawWinner: (node, event)->
    entries = BatmanRaffler.Entry.get('all')
    num = Math.floor(Math.random()*(entries.length))
    entry = entries.toArray()[num]
    entry.win()
