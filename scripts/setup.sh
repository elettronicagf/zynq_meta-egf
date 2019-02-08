LAYER_PATH=$(dirname "$(realpath $0)")/..
PETALINUX_ROOT=$LAYER_PATH/../..
PETALINUX_CONFIGS=$PETALINUX_ROOT/project-spec/configs/

echo updating petalinux configs...
[ -f $LAYER_PATH/configs/config ]        && cp $LAYER_PATH/configs/config        $PETALINUX_CONFIGS
[ -f $LAYER_PATH/configs/rootfs_config ] && cp $LAYER_PATH/configs/rootfs_config $PETALINUX_CONFIGS
