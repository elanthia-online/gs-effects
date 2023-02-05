Effect.new("Ethereal Censer", 320) do
  def type
    "offensive/utility"
  end
  def availability
    "self-cast"
  end
  def duration
    0.5
  end
  def start_messages
   Regexp.union(
      %r{Mana swirls into the visible spectrum and manifests as an ethereal, [\w\s]+ censer swinging pendulously through the air beside you\.  A [\w\s]+ haze of incense smoke trails in its wake, quickly spreading in sinuous tendrils through the area\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your ethereal censer fades away, leaving only a faint lingering scent of incense\.},
    )
  end
  def mana_cost
    20
  end
end