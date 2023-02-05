Effect.new("AA: Yierka", 9038) do
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
      %r{You concentrate your focus upon the Aspect of the Yierka\.  .*A gruff, yet contenting inspiration courses through your senses, putting you at one with the offerings and spirits of nature\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your extra illumination of the natural fades with a final wisp of inspiration\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end