# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers


properties() { '
kernel.string=Alioth Kernel with KernelSU by Errors
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=alioth
device.name2=aliothin
device.name3=
device.name4=
device.name5=
supported.versions=11 - 13
'; }



block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


set_perm_recursive 0 0 750 750 $ramdisk/*;


dump_boot;

write_boot;