Effect.new("Mystic Impedance", 1708) do
  def type
    "attack"
  end
  def availability
    "all"
  end
  def duration
    3
  end
  def start_messages
   Regexp.union(
      %r{A dizzying array of golden runes surround and suffuse you before being absorbed into your body\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Golden runes enscribe themselves upon your body, quickly fading into nothingness\.},
    )
  end
  def mana_cost
    8
  end
end