default: compile

base_dir = $(abspath .)
src_dir = $(base_dir)/src/main
gen_dir = $(base_dir)/gen

SBT = sbt

compile: $(gen_dir)/iFuSoC.sv

$(gen_dir)/iFuSoC.sv: $(shell find $(src_dir) -name '*.scala')
	$(SBT) "run $(gen_dir)"

log:
	make > ./log

clean:
	rm -rf $(gen_dir)/iFuCore.*

.PHONY: clean log