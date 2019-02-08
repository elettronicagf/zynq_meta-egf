LAYER_PATH=$(dirname "$(realpath $0)")/..
PETALINUX_ROOT=$LAYER_PATH/../..
PETALINUX_CONFIGS=$PETALINUX_ROOT/project-spec/configs/
CONFIG_NAME=$(basename $1)

echo $CONFIG_NAME > $LAYER_PATH/recipes-core/images/hdf
petalinux-config --get-hw-description=$1
