Deface::Override.new(virtual_path: 'spree/admin/shared/_header',
  name: 'admin_login_navigation_bar',
  replace: "[data-hook=admin_login_navigation_bar]",
  partial: "spree/shared/header_bar",
  :original => '8675c29dbd2582bcb580eda7b66f7289365ef0b0')
