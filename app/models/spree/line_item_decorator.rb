Spree::LineItem.class_eval do
  old_copy_price = instance_method(:copy_price)
  define_method(:copy_price) do
    old_copy_price.bind(self).call
    return unless variant

    if variant
      if changed? && changes.keys.include?('quantity')
        if order.user.nil?
          vprice = variant.sale_price
        end
        self.price = vprice and return
      end

      self.price = variant.price if price.nil?
    end

    self.price = variant.price if price.nil?
  end

  old_copy_amount = instance_method(:amount)
  define_method(:amount) do
    old_copy_amount.bind(self).call
    return unless variant

    if variant
      if order.user.nil? && variant.sale_price.present?
        self.price = variant.sale_price
      end
      self.price * quantity
    end
  end

end
