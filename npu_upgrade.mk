ifeq (1,$(strip $(shell expr $(PLATFORM_VERSION) \>= 9)))
PRODUCT_COPY_FILES += \
    hardware/rockchip/upgrade_tool/npu_upgrade_pie.rc:vendor/etc/init/npu_upgrade.rc
else
PRODUCT_COPY_FILES += \
    hardware/rockchip/upgrade_tool/npu_upgrade.rc:vendor/etc/init/npu_upgrade.rc
endif

PRODUCT_COPY_FILES += \
    hardware/rockchip/upgrade_tool/npu_upgrade:vendor/bin/npu_upgrade \
    hardware/rockchip/upgrade_tool/upgrade_tool:vendor/bin/upgrade_tool \
    hardware/rockchip/upgrade_tool/npu_fw/MiniLoaderAll.bin:vendor/etc/firmware/npu_fw/MiniLoaderAll.bin \
    hardware/rockchip/upgrade_tool/npu_fw/trust.img:vendor/etc/firmware/npu_fw/trust.img \
    hardware/rockchip/upgrade_tool/npu_fw/uboot.img:vendor/etc/firmware/npu_fw/uboot.img \
    hardware/rockchip/upgrade_tool/npu_fw/boot.img:vendor/etc/firmware/npu_fw/boot.img \
    hardware/rockchip/upgrade_tool/npu_fw/npu_commit_id.xml:vendor/etc/firmware/npu_fw/npu_commit_id.xml \
