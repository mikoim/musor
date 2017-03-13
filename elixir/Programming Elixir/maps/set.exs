set1 = Enum.into 1..5, MapSet.new
MapSet.member? set1, 3
set2 = Enum.into 3..8, MapSet.new
MapSet.union set1, set2
MapSet.difference set1, set2
MapSet.difference set2, set1
MapSet.intersection set1, set2
