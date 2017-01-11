Deface::Override.new(virtual_path: 'spree/user_registrations/new',
  name: 'add new field into user registration',
  replace: "fieldset#password-credentials",
  partial: "spree/user_registrations/new")
