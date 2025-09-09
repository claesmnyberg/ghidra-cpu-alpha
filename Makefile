#
# Ghidra processor project for Alpha CPU
# Author: Claes M Nyberg
# Date: Fall 2019
#

VERSION = 0.7
GHIDRA_ROOT_DIR = /opt/ghidra_9.1.2_PUBLIC
SLEIGH = ${GHIDRA_ROOT_DIR}/support/sleigh
CPUNAME = Alpha

none:	all

all::
	@echo "[+] Compiling"
	${SLEIGH} -a ./data/languages/

clean::
	@echo "[+] Cleaning"
	rm -f ./data/languages/alpha.sla	

install::
	@echo "[+] Installing"
	mkdir -p ${GHIDRA_ROOT_DIR}/Ghidra/Processors/${CPUNAME}
	cp -prf ./data ${GHIDRA_ROOT_DIR}/Ghidra/Processors/${CPUNAME}/
	cp -prf ./lib ${GHIDRA_ROOT_DIR}/Ghidra/Processors/${CPUNAME}/
	cp -f Module.manifest ${GHIDRA_ROOT_DIR}/Ghidra/Processors/${CPUNAME}/

uninstall:
	@echo "Uninstalling"
	rm -rf ${GHIDRA_ROOT_DIR}/Ghidra/Processors/${CPUNAME}
