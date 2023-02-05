Effect.new("Rejuvenation", 1607) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    5.13
  end
  def start_messages
   Regexp.union(
      %r{Granules of cobalt light coalesce around you and as they begin to seep into your exposed skin, you feel invigorated\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Cobalt light separates itself from your skin and scatters into oblivion\.},
    )
  end
  def mana_cost
    7
  end
end