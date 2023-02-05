Effect.new("Burst of Swiftness Cooldown", 9051) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    dur = { nil => 5, 1 => 5, 2 => 4, 3 => 3, 4 => 2.5, 5 => 2 }; if defined?(CMan); dur[CMan.burst_of_swiftness]; else; 5; end
  end
  def start_messages
   Regexp.union(
      %r{You feel (?:significantly|a great deal|a fair amount) more agile\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel entirely capable of preparing yourself to once again move swiftly at a moment's notice\.},
    )
  end
end