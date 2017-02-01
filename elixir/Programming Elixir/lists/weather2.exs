defmodule WeatherHistory do
  def for_location([], _target_loc), do: []
  def for_location([[time, target_loc, temp, rain] | tail], target_loc) do
    [[time, target_loc, temp, rain] | for_location(tail, target_loc)]
  end
  def for_location([_ | tail], target_loc), do: for_location(tail, target_loc)

  def test_data do
    [
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 15, 0.45],
      [1366225622, 28, 21, 0.25]
    ]
  end
end

WeatherHistory.for_location WeatherHistory.test_data, 27
