def has_cycle?(head)
  return false if head.nil?
  slow, fast = head,head
  while(slow != nil && fast != nil && fast.next != nil)
    slow = slow.next
    fast = fast.next.next
    return true if slow == fast
  end
  false
end