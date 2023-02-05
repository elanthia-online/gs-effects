Effect.new("Sacrifice Cooldown", 9008) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    10.0 - ([Skills.slnecromancy, 120].min * 2)/60.0 - ([[(Skills.slnecromancy - 120), 0].max, 80].min * 0.75)/60.0 - ([(Skills.slnecromancy - 200), 0].max * 1.5)/60.0
  end
  def start_messages
   Regexp.union(
      %r{Your senses tingle, then become awash in a flood of power as the life leaves your hapless foe!},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel refreshed enough to sacrifice another animus\.},
    )
  end
end