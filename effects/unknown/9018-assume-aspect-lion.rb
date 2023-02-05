Effect.new("AA: Lion", 9018) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    2
  end
  def start_messages
   Regexp.union(
      %r{You concentrate your focus upon the Aspect of the Lion\.  .*You feel yourself infused with a regal air, as a wave of power ripples through your muscles\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your regal influence and extra strength swiftly drift away\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end