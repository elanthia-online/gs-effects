Effect.new("Sign of Madness", 9916) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    0.25
  end
  def start_messages
   Regexp.union(
      %r{You are filled with berserk rage!  Attack!  Attack!  Attack!},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your SIGN OF MADNESS is no longer effective\.},
    )
  end
  def spirit_cost
    3
  end
end