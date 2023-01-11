# Define the ListNode class
class ListNode
  # Define getter and setter methods for the data and next attributes
  attr_accessor :data, :next

  # Initialize a new ListNode with given data
  def initialize(data)
    @data = data
    @next = nil
  end
end

# Merge two sorted linked lists into a single sorted array
def merge_linked_lists(list1, list2)
  # Initialize the current nodes of each linked list
  current1 = list1
  current2 = list2

  # Initialize an empty array to store the merged linked list elements
  merged = []

  # Iterate through both linked lists as long as both current nodes are not nil
  while current1 && current2
    # Append the data of the smaller node to the merged array
    if current1.data <= current2.data
      merged << current1.data
      current1 = current1.next
    else
      merged << current2.data
      current2 = current2.next
    end
  end

  # Append the remaining elements of the non-empty linked list to the merged array
  while current1
    merged << current1.data
    current1 = current1.next
  end
  while current2
    merged << current2.data
    current2 = current2.next
  end

  # Return the merged array
  merged
end
