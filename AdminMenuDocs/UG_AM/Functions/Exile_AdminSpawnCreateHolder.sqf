_HolderPos = player modelToWorld [0,1,0];
UG_ADMIN_HOLDER = "WeaponHoldersimulated" createVehicle _HolderPos;
UG_ADMIN_HOLDER additemcargoglobal ["ItemWatch",1];
 hint "Weapon Holder Created, Remember to Delete when finished.";
