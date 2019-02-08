LAYER_PATH=$(dirname "$(realpath $0)")/..
PETALINUX_ROOT=$LAYER_PATH/../..
PETALINUX_CONFIGS=$PETALINUX_ROOT/project-spec/configs/

echo creating bootgen
[ ! -d $PETALINUX_ROOT/bootgen ] && mkdir $PETALINUX_ROOT/bootgen
cp $LAYER_PATH/scripts/boot_gen.sh $PETALINUX_ROOT/bootgen/
cp $LAYER_PATH/scripts/bootgen.bif $PETALINUX_ROOT/bootgen/
