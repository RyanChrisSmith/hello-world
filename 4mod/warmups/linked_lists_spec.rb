require './linked_lists'

RSpec.describe 'merged_linked_lists' do
  it 'merges two sorted linked lists into a single sorted linked list' do
    list1 = ListNode.new(1)
    list1.next = ListNode.new(3)
    list1.next.next = ListNode.new(5)

    list2 = ListNode.new(2)
    list2.next = ListNode.new(4)
    list2.next.next = ListNode.new(6)

    expect(merge_linked_lists(list1, list2)).to eq([1, 2, 3, 4, 5, 6])
  end

  it 'merges two sorted linked list of different lengths' do
    list1 = ListNode.new(1)
    list1.next = ListNode.new(2)
    list2 = ListNode.new(4)
    list2.next = ListNode.new(5)
    list2.next.next = ListNode.new(6)

    expect(merge_linked_lists(list1, list2)).to eq([1,2,4,5,6])
  end

  it 'merges two sorted linked list of different values' do
    list1 = ListNode.new(10)
    list1.next = ListNode.new(20)
    list1.next.next = ListNode.new(40)
    list2 = ListNode.new(0)

    expect(merge_linked_lists(list1, list2)).to eq([0, 10, 20, 40])
  end
end