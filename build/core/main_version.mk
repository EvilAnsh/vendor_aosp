# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# AOSP recovery flashing
ifeq ($(TARGET_USES_AOSP_RECOVERY),true)
ADDITIONAL_SYSTEM_PROPERTIES  += \
    persist.sys.recovery_update=true
endif

# Versioning props
ADDITIONAL_SYSTEM_PROPERTIES  += \
    org.elixir.version=$(Elixir_BASE_VERSION) \
    org.elixir.version.display=$(CUSTOM_VERSION) \
    org.elixir.build_date=$(CUSTOM_BUILD_DATE) \
    org.elixir.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.elixir.build_type=$(CUSTOM_BUILD_TYPE) \
    org.elixir.codename=$(Elixir_CODENAME) \
    ro.elixir.maintainer=$(Elixir_MAINTAINER)
