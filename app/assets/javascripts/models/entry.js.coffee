class BatmanRaffler.Entry extends Batman.Model
  @storageKey: 'entries'
  @persist Batman.RailsStorage

  @encode "created_at", "updated_at", "name", "winner"

  win: ->
    @set('winner', true)
    @save
    @trigger('highlight')
