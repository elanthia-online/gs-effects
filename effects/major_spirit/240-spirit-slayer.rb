Effect.new("Spirit Slayer", 240) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    0.5
  end
  def start_messages
   Regexp.union(
      %r{A small mote of bright white light swirls into existence around you\.},
      %r{A pulse of bright white light flows from your hand into the mote\.  You feel the spirit's presence grow stronger\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The mote of white light next to you disappears\.},
    )
  end
  def mana_cost
    40
  end
end