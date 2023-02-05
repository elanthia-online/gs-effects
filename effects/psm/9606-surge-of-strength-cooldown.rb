Effect.new("Surge of Strength Cooldown", 9606) do
  def availability
    "self-cast"
  end
  def duration
    dur = { nil => 5, 0 => 5, 1 => 5, 2 => 4, 3 => 3, 4 => 2.5, 5 => 2 }; if defined?(CMan); dur[CMan.surge_of_strength]; else; 5; end
  end
  def start_messages
   Regexp.union(
      %r{You feel (?:significantly|a great deal|a fair amount) stronger\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your internal strength fully recovers from your most recent attempt to tap into it\.},
    )
  end
end