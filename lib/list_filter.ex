defmodule ListFilter do
  def call(list), do: length(filterOfNumber(list))

  defp filterOfNumber(list) do
    Enum.filter(list, fn number ->
      number = Integer.parse(number)

      if is_tuple(number) do
        elem(number, 0)
        |> isImpar()
      end
    end)
  end

  defp isImpar(number) do
    if is_integer(number) do
      restDivision = rem(number, 2)
      restDivision == 1
    end
  end
end
