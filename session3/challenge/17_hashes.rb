# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse
  ary = []
  my_head = head
  while my_head[:next] != nil do
    ary << my_head[:data]
    my_head = my_head[:next]
  end
  ary.each {|x| puts x}
end
