Effect.new("Tracking Recovery", 9076) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{You carefully study the area, searching for signs of .+ presence\.  Your keen eye spots the beginnings of a trail and you rush to follow it while taking care to remain hidden\.},
      %r{You carefully study the area, searching for signs of .+ presence\.  Your keen eye spots the beginnings of a trail and you rush to follow it\.},
      %r{You carefully study the area, searching for signs of .+ presence\.  You can tell the .+ is somewhere nearby but the paths all seem to lead in different directions\.  You take a chance on one, but quickly realize you've been led astray\.},
      %r{You carefully study the area, searching for signs of .+ presence\.  You can tell the .+ is somewhere nearby but the paths all seem to lead in different directions\.  You take a chance on one while taking care to remain hidden, but quickly realize you've been led astray\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel refreshed and ready to track again\.},
    )
  end
end