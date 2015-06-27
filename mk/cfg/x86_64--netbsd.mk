# x86_64--netbsd configuration
CC_x86_64--netbsd=$(CC)
CXX_x86_64--netbsd=$(CXX)
CPP_x86_64--netbsd=$(CPP)
AR_x86_64--netbsd=$(AR)
CFG_LIB_NAME_x86_64--netbsd=lib$(1).so
CFG_STATIC_LIB_NAME_x86_64--netbsd=lib$(1).a
CFG_LIB_GLOB_x86_64--netbsd=lib$(1)-*.so
CFG_LIB_DSYM_GLOB_x86_64--netbsd=$(1)-*.dylib.dSYM
CFG_JEMALLOC_CFLAGS_x86_64--netbsd := -m64 -I/usr/include $(CFLAGS)
CFG_GCCISH_CFLAGS_x86_64--netbsd := -Wall -Werror -g -fPIC -m64 -I/usr/include $(CFLAGS)
CFG_GCCISH_LINK_FLAGS_x86_64--netbsd := -shared -fPIC -g -pthread -m64
CFG_GCCISH_DEF_FLAG_x86_64--netbsd := -Wl,--export-dynamic,--dynamic-list=
CFG_LLC_FLAGS_x86_64--netbsd :=
CFG_INSTALL_NAME_x86_64--netbsd =
CFG_EXE_SUFFIX_x86_64--netbsd :=
CFG_WINDOWSY_x86_64--netbsd :=
CFG_UNIXY_x86_64--netbsd := 1
CFG_LDPATH_x86_64--netbsd :=
CFG_RUN_x86_64--netbsd=$(2)
CFG_RUN_TARG_x86_64--netbsd=$(call CFG_RUN_x86_64--netbsd,,$(2))
CFG_GNU_TRIPLE_x86_64--netbsd := x86_64--netbsd
