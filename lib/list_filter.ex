defmodule ListFilter do
  def call(list) do
    Enum.count(Enum.filter(list, fn x ->
      case Integer.parse(x) do
        {v, ""} -> rem(v,2)==1
        _ -> false
      end
     end
    ))
  end
end
