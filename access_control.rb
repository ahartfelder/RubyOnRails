# private
class Foo
  def call_private(instance)
    instance.bar
  end
  private
  def bar # Cannot call bar method directly
    puts self.object_id
  end
end

foo_1 = Foo.new
foo_2 = Foo.new
foo_1.call_private(foo_1)
foo_2.call_private(foo_2)
# foo_2.call_private(foo_1) # error

# protected
class Fuu
  def call_protected(instance)
    instance.bar
  end
  protected
  def bar
    puts self.object_id
  end
end

instance_1 = Fuu.new
instance_2 = Fuu.new
instance_1.call_protected(instance_1)
instance_2.call_protected(instance_1)
instance_2.call_protected(instance_2)
