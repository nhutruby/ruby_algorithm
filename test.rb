class FileSaveError < StandardError
  attr_accessor :reason
  def initialize(reason)
    @reason = reason
  end
  def show
    p @reason
  end
end
a = FileSaveError.new('abc')
a.reason = 'a'
p a.reason

