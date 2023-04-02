defmodule BubbleSort do
  def sort(list) do
    traverse_list(list, Enum.count(list) - 1)
  end

  def traverse_list(list, traversals) when traversals <= 1, do: sort(list, [])
  
  def traverse_list(list, traversals) do
    traverse_list(sort(list,[]), traversals-1)  
  end

  def sort([current_num | []], sorted_list), do: sorted_list ++ [current_num]
  
  def sort([current_num | [next_num | remaining_nums]], sorted_list) do
    [current_num, next_num] = swap(current_num, next_num)
    sort([next_num | remaining_nums], sorted_list ++ [current_num])
  end
  
  def swap(current_num, next_num) do
    if current_num <= next_num do
      [current_num, next_num]
    else
      [next_num, current_num]
    end
  end  
end

mylist = [5, 2, 1, 4, 3]

IO.inspect BubbleSort.sort(mylist) 
