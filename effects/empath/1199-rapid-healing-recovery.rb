Effect.new("Rapid Healing Recovery", 1199) do
  def availability
    "all"
  end
  def duration
    30
  end
  def start_messages
   Regexp.union(
      %r{You release your pinpoint focus on your healing energies and allow their stimulated flow to settle to normal rates\.},
    )
  end
end