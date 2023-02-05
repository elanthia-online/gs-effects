Effect.new("Weapon Flurry", 9657) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    20
  end
  def start_messages
   Regexp.union(
      %r{You rotate your wrist, your .+ executing a casual spin to establish your flow as you advance upon .+!},
    )
  end
  def end_messages
    Regexp.union(
      %r{The mesmerizing sway of body and blade glides to its inevitable end with one final twirl of your .+\.},
      %r{Distracted, you hesitate, and your assault is broken\. You give the blade of your .+ a quick, sweeping flick of annoyance as you lower it\.},
    )
  end
end