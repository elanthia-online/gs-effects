Effect.new("Tangleweed Vigor", 9059) do
  def availability
    "self-cast"
  end
  def duration
    2
  end
  def start_messages
   Regexp.union(
      %r{Thin tendrils of vine twine around you, instilling you with their strength\.|The vigor of your vine surges through you, imparting the strength leached from your foe\.|A runner from your vine brushes against you and you feel strengthened by the contact\.|Strength surges into you from your vine\!},
    )
  end
  def end_messages
    Regexp.union(
      %r{A few withered tendrils of vine fall away from you, taking their gift of strength with them\.},
    )
  end
end