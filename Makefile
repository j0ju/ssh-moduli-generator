# - makefile -
# vim: noexpandtab sw=2 ts=2

# LICENSE: GPLv2, see attached License
# Author: Joerg Jungermann

TARGET =
TARGET +=   512
TARGET +=  1024
TARGET +=  2048
TARGET +=  3072
TARGET +=  4096
TARGET +=  6282
TARGET +=  6288
TARGET +=  7338
TARGET +=  8192
TARGET +=  8338
TARGET +=  9238
TARGET +=  11338
TARGET +=  13146
TARGET +=  13338
TARGET +=  15360
TARGET +=  16384

all: $(addsuffix .moduli,$(TARGET))

%.candidates:
	rm -f $@.part
	ssh-keygen -G $@.part -b $(@:.candidates=)
	mv -f $@.part $@

%.moduli: %.candidates
	ssh-keygen -T $@ -f $< && rm -f $< $<.part

.SUFFIXES:

# This allows to generate moduli candidates in advance and resume
# the calculation of modulis after candidates have been generated
# On the other hand we need to handle (un)successful creation and deletion
# of intermediate files ourselves
.PRECIOUS: %.candidates

