Deface::Override.new(virtual_path: 'spree/shared/_products',
  name: 'add new field into user registration',
  replace: "[itemprop='price']",
  partial: "spree/shared/update_product_sale")

Deface::Override.new(virtual_path: 'spree/products/_cart_form',
  name: 'add new field into user registration',
  replace: "[itemprop='price']",
  partial: "spree/shared/update_cart_sale")

Deface::Override.new(virtual_path: 'spree/checkout/_delivery',
  name: 'add new field into user registration',
  replace: ".item-price",
  partial: "spree/shared/checkout_cart_sale")
