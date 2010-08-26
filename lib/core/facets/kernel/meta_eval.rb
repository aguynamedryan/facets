require 'facets/kernel/meta_class'

module Kernel

  # Evaluate code in a metaclass. This is equivalent to `meta_class.class_eval`.
  #
  # Note that this method used to #instance_eval.
  #
  # CREDIT: WhyTheLuckyStiff

  def meta_eval(str=nil, *file_and_line, &blk)
    if str
      meta_class.class_eval(str, *file_and_line)
    else
      meta_class.class_eval(&blk)
    end
  end

end

