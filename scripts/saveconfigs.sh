LAYER_PATH=$(dirname "$(realpath $0)")/..
PETALINUX_ROOT=$LAYER_PATH/../..
PETALINUX_CONFIGS=$PETALINUX_ROOT/project-spec/configs/

echo saving petalinux configs...
[ -f $PETALINUX_CONFIGS/config ]        && cp $PETALINUX_CONFIGS/config        $LAYER_PATH/configs
[ -f $PETALINUX_CONFIGS/rootfs_config ] && cp $PETALINUX_CONFIGS/rootfs_config $LAYER_PATH/configs
