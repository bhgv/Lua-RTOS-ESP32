#
# Component Makefile
#

CXXFLAGS += -fno-rtti
COMPONENT_ADD_LDFLAGS +=-lstdc++ -l$(COMPONENT_NAME) 


ifdef CONFIG_LUA_RTOS_LUA_USE_SSD1306

COMPONENT_SRCDIRS := . 
COMPONENT_ADD_INCLUDEDIRS := . 
COMPONENT_PRIV_INCLUDEDIRS := . 

else

# disable SSD1306 support
COMPONENT_SRCDIRS :=
COMPONENT_ADD_INCLUDEDIRS :=

endif
