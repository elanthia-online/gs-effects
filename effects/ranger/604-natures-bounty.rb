Effect.new("Nature's Bounty", 604) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.ranger
  end
  def start_messages
   Regexp.union(
      %r{You feel your vision sharpen\.|You feel more in tune with the natural surroundings\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel your vision return to normal\.|You feel less in tune with your natural surroundings\.},
    )
  end
  def mana_cost
    4
  end
end