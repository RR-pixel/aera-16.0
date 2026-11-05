#
#	AERA Recovery flags for POCO X3 Pro (vayu / bhima)
#	Converted from fox_vayu.mk (OrangeFox fox_16.0) using the garnet AERA tree as reference
#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2021-2026 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	 it under the terms of the GNU General Public License as published by
#	 the Free Software Foundation, either version 3 of the License, or
#	 (at your option) any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# ----- general (was TW_* in device.mk) -----
AERA_DEFAULT_LANGUAGE     := en
AERA_USE_TOOLBOX          := true
AERA_INCLUDE_NTFS_3G      := true
AERA_INCLUDE_LIBRESETPROP := true
AERA_EXTRA_LANGUAGES      := true
AERA_EXCLUDE_APEX         := true
AERA_INCLUDE_FASTBOOTD    := true

# ----- screen settings (vayu is 1080x2400, so no adaptive scaling needed) -----
AERA_SCREEN_H := 2400
AERA_STATUS_H := 100
AERA_HIDE_NOTCH := 1
AERA_CLOCK_POS := 1
AERA_STATUS_INDENT_LEFT := 48
AERA_STATUS_INDENT_RIGHT := 48
AERA_USE_GREEN_LED := 0

# number of list options before scrollbar creation
AERA_OPTIONS_LIST_NUM := 9

# ----- other stuff -----
AERA_QUICK_BACKUP_LIST := /boot;/data;
AERA_ENABLE_LPTOOLS := 1
AERA_NO_TREBLE_COMPATIBILITY_CHECK := 1

# build all the partition tools
AERA_ENABLE_ALL_PARTITION_TOOLS := 1

# FRP (was OF_ENABLE_FRP_ADDON)
AERA_ENABLE_FRP_WIPE := 1

# dmctl in the data formatting process
AERA_USE_DMCTL := 1

# try to prevent potential data format errors
AERA_UNBIND_SDCARD_F2FS := 1

# vayu ships a prebuilt kernel
AERA_FORCE_PREBUILT_KERNEL := 1

# ----- WLAN / browser -----
# Keep this at 0 for the first build, to confirm that the recovery boots at all.
# Set to 1 only after adding the WLAN module/firmware/init pieces for vayu.
#AERA_ENABLE_WLAN := 1

# ----- NOT carried over: AERA name not verified from the garnet tree -----
# OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
# OF_NO_MIUI_PATCH_WARNING := 1
# OF_PATCH_AVB20 := 1
# OF_SPLASH_MAX_SIZE := 130
# OF_USE_LZMA_COMPRESSION := 1   (garnet uses AERA_USE_LZ4_COMPRESSION; unsure the 4.14 kernel accepts an LZ4 ramdisk)
# OF_DONT_KEEP_LOG_HISTORY := 1  (only for Stable builds)
# AERA_FORCE_DATA_FORMAT_F2FS / AERA_FORCE_CASEFOLDING: garnet-specific, vayu's 4.14 kernel has no casefolding
#
