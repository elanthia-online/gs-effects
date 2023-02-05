Effect.new("Celerity", 506) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{You (?:and your group )?suddenly start moving light\-footedly\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You suddenly feel less light\-footed\.},
    )
  end
  def mana_cost
    6
  end
end