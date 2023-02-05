Effect.new("Meditative Resistance (unbalance)", 9073) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    250
  end
  def start_messages
   Regexp.union(
      %r{You assume a meditative posture, .+ (unbalancing) .+\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your concentration slips, and you no longer feel prepared to resist \w+ damage.},
      %r{You cease concentrating on your preparations to resist \w+ damage.},
    )
  end
end