Effect.new("Next Bounty", 9003) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    15
  end
  def start_messages
   Regexp.union(
      %r{[A-Z][a-z]+ says, "Hmm, I've got a task here|^[A-Z][a-z]+ says, "I've got a special mission for you.*},
      %r{You reach for the large board and select a posted task at random\.},
      %r{^You were tasked with (?:hunting|sinking) },
      %r{^You were tasked with slaying [0-9]+ pirates\.},
    )
  end
end