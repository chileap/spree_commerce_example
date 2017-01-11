Deface::Override.new(virtual_path: 'spree/shared/_user_form',
  name: 'add new field into user edit',
  insert_top: "fieldset#password-credentials",
  partial: "spree/users/edit_form")
