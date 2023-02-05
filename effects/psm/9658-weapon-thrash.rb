Effect.new("Weapon Thrash", 9658) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    20
  end
  def start_messages
   Regexp.union(
      %r{You rush .+, raising your .+ high to deliver a sound thrashing!},
    )
  end
  def end_messages
    Regexp.union(
      %r{With a final, explosive breath, you pull your .+ back to a ready position\.},
      %r{Distracted, you hesitate, and in doing so lose the rhythm of your assault\. You pull your .+ back to a ready position with a wary eye to your environs\.},
    )
  end
end