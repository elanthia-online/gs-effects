Effect.new("MStrike Cooldown", 9005) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{Your (?:flurry|series) of (?:strikes|rapid shots)(?: and (?:ripostes|maneuvers))? leaves you (?:off-balance|winded) and out of position\.},
    )
  end
end