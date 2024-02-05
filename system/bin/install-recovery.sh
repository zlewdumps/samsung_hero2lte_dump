#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/155a0000.ufs/by-name/RECOVERY:38914048:b7755d8460d24d744671fbb28562e79ee5112cd8; then
  applypatch EMMC:/dev/block/platform/155a0000.ufs/by-name/BOOT:36646912:66370376e4cc6b49f3b76d850ce2ab7bf6897405 EMMC:/dev/block/platform/155a0000.ufs/by-name/RECOVERY b7755d8460d24d744671fbb28562e79ee5112cd8 38914048 66370376e4cc6b49f3b76d850ce2ab7bf6897405:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
