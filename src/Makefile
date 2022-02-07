include pal.mak
DIR_BUILD:=build
MAIN_NAME:=cean
MAIN_EXT:=com
MAIN_SRC:=cean.asm
MAIN_ASM_FLAGS:=

.PHONY: all main clean dosbox-run

all: main

main: $(DIR_BUILD) $(DIR_BUILD)/$(MAIN_NAME).$(MAIN_EXT)
$(DIR_BUILD)/$(MAIN_NAME).$(MAIN_EXT): $(MAIN_SRC)
	fasm $(MAIN_SRC) $(@) -s $(DIR_BUILD)/$(MAIN_NAME).fas $(MAIN_ASM_FLAGS)
	-listing $(DIR_BUILD)/$(MAIN_NAME).fas $(DIR_BUILD)/$(MAIN_NAME).lst
	-symbols $(DIR_BUILD)/$(MAIN_NAME).fas $(DIR_BUILD)/$(MAIN_NAME).sym

$(DIR_BUILD):
	$(call pal_mkdir,$(@))
clean:
	$(call pal_rmdir,$(DIR_BUILD))
dosbox-run: main
	@dosbox $(subst /,\,$(DIR_BUILD)/$(MAIN_NAME).$(MAIN_EXT))
