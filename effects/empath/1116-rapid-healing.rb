Effect.new("Rapid Healing", 1116) do
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
      %r{You narrow your focus on your healing energies, stimulating their flow\.},
    )
  end
  def mana_cost
    16
  end
end