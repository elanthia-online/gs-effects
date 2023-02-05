Effect.new("Combat Focus", 9602) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    3
  end
  def start_messages
   Regexp.union(
      %r{You sharpen your focus on combat and fortify yourself against distractions.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your singular focus on combat slowly drifts away.},
    )
  end
  def stamina_cost
    5
  end
end