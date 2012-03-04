class BatmanRaffler.Entry extends Batman.Model
  @storageKey: 'api/entries'
  @persist Batman.RailsStorage

  @encode "created_at", "updated_at", "name", "winner"
