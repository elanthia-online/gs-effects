Effect.new("Mantle of Faith", 1601) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.paladin
  end
  def start_messages
   Regexp.union(
      %r{A whirl of spiritual energy streaks down from above, creating a dully illuminated mantle around your form\.|^The dully illuminated mantle surrounding your form seems to gain some cohesion\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The dully illuminated mantle protecting you begins to falter, then completely fades away\.},
    )
  end
  def mana_cost
    cost = 1; [2,5,9,14,20,27,35,44,54,65,77,90,104,119,135,152,170,189].each { |n| cost += 1 if Skills.slblessings >= n }; cost
  end
end