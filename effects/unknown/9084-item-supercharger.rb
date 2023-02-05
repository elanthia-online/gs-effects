Effect.new("Item Supercharger", 9084) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    15
  end
  def start_messages
   Regexp.union(
      %r{\[You have activated an Item Supercharger!  Your combat properties of your items will be super charged for 15 minutes\.\]},
    )
  end
  def end_messages
    Regexp.union(
      %r{\[Your Item Supercharger has ended\.\]},
    )
  end
end