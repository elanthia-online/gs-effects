Effect.new("Decaying", 6666) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    16
  end
  def start_messages
   Regexp.union(
      %r{The time left until you decay should never match any game line; it's specifically handled by infomonitor.lic in order to get the duration and effects right\.  So unless it\'s malfunctioning, don\'t change this\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The time left until you decay should never match any game line; it's specifically handled by infomonitor.lic in order to get the duration and effects right\.  So unless it\'s malfunctioning, don\'t change this\.},
    )
  end
end