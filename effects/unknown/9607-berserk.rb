Effect.new("Berserk", 9607) do
  def type
    "attack"
  end
  def availability
    "all"
  end
  def duration
    5
  end
  def start_messages
   Regexp.union(
      %r{Everything around you turns red as you work yourself into a berserker's rage!},
    )
  end
  def end_messages
    Regexp.union(
      %r{The redness fades from the world and you begin to breathe harder\.},
    )
  end
end