BOARD=BIGTREE_OCTOPUS_V1
MARLIN_FIRMWARE=/Users/trand/Developer/personal/BIGTREETECH-OCTOPUS-V1.0/Firmware/Marlin-bugfix-2.0.9.2.x/Marlin
MARLIN_CONFIGURATION=/Users/trand/Developer/personal/BIGTREETECH-OCTOPUS-V1.0/Firmware/Marlin-bugfix-2.0.9.2.x/Marlin

docker run \
  -u root:root \
  -e BOARD=BIGTREE_OCTOPUS_V1 \
  -e UPDATE_FORCE=true \
  -e USE_TAG=2.0.9.3 \
  -v $(pwd)/Builds:/home/platformio/build \
  -v $(pwd)/Marlin/Configuration.h:/home/platformio/CustomConfiguration/Configuration.h \
  -v $(pwd)/Marlin/Configuration_adv.h:/home/platformio/CustomConfiguration/Configuration_adv.h \
  -v $(pwd)/Marlin/_Bootscreen.h:/home/platformio/Marlin/_Bootscreen.h \
  -v $(pwd)/Marlin/_Statusscreen.h:/home/platformio/Marlin/_Statusscreen.h \
  frealmyr/marlin-build:latest
