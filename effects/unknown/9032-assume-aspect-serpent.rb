Effect.new("AA: Serpent", 9032) do
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
      %r{You concentrate your focus upon the Aspect of the Serpent\.  .*Your skin suddenly feels a bit more scaled, and you notice a distinctly natural fluidity in your movements\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The scaliness of your complexion fades away, taking with it your natural-feeling fluid movements\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end