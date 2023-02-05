Effect.new("Lumnis' Repose", 9077) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    30
  end
  def start_messages
   Regexp.union(
      %r{You trace the central orb of white in your brooch and your fingertips begin to tingle as ordered energy flows into you\.  Within seconds, you feel Lumnis' Repose course through your veins\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your skin tingles as the ordered energy of Lumnis' Repose slips from you and recedes into your brooch\.},
    )
  end
end