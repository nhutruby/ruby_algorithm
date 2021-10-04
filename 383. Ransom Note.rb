# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  ransom_note = ransom_note.split("")
  magazine = magazine.split("")
  rh = Hash.new(0)
  mh = Hash.new(0)
  ransom_note.each do |r|
    rh[r] += 1
  end
  magazine.each do |m|
    mh[m] += 1
  end
  check = true
  rh.each_pair do |k,v|
    check = false if mh[k] < v
  end
  check
end