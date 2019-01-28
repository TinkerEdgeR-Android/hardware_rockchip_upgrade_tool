ifeq (1,$(strip $(shell expr $(PLATFORM_VERSION) \>= 9)))
PRODUCT_COPY_FILES += \
    hardware/rockchip/upgrade_tool/npu_upgrade_pie.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/npu_upgrade.rc
else
PRODUCT_COPY_FILES += \
    hardware/rockchip/upgrade_tool/npu_upgrade.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/npu_upgrade.rc
endif

PRODUCT_COPY_FILES += \
    hardware/rockchip/upgrade_tool/npu_upgrade:$(TARGET_COPY_OUT_VENDOR)/bin/npu_upgrade \
    hardware/rockchip/upgrade_tool/upgrade_tool:$(TARGET_COPY_OUT_VENDOR)/bin/upgrade_tool \
    hardware/rockchip/upgrade_tool/npu_fw/MiniLoaderAll.bin:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/npu_fw/MiniLoaderAll.bin \
    hardware/rockchip/upgrade_tool/npu_fw/trust.img:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/npu_fw/trust.img \
    hardware/rockchip/upgrade_tool/npu_fw/uboot.img:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/npu_fw/uboot.img \
    hardware/rockchip/upgrade_tool/npu_fw/boot.img:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/npu_fw/boot.img \
    hardware/rockchip/upgrade_tool/npu_fw/npu_commit_id.xml:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/npu_fw/npu_commit_id.xml \
