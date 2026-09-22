GAPIT_FIGURES_DIR 			= data/gapit
GAPIT_FIGURES_REPORT_DIR 	= report/figures/gapit 

run-docker-ld-heatmap:
	significant_marker_string=$$(head data/significant_markers/significant_markers.csv); \
	significant_marker_formatted=$${significant_marker_string:1}; \
	./scripts/run_docker_LD_heatmap.sh $$significant_marker_formatted

run-docker-gapit:
	@echo not implemented yet
	./scripts/run_docker_GWAS.sh

cp-gapit-figures-qq:
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.FarmCPU.HEA(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.GLM.HEA(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.FarmCPU.TGW(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.GLM.TGW(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.FarmCPU.HEI(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.GLM.HEI(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.FarmCPU.RIP(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.GLM.RIP(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.FarmCPU.PM(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.QQ.GLM.PM(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)

cp-gapit-figures-manhattan:
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.FarmCPU.HEA(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.GLM.HEA(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.FarmCPU.TGW(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.GLM.TGW(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.FarmCPU.HEI(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.GLM.HEI(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.FarmCPU.RIP(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.GLM.RIP(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.FarmCPU.PM(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Association.Manhattan_Chro.GLM.PM(NYC).pdf" $(GAPIT_FIGURES_REPORT_DIR)

cp-gapit-figures-markers:
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Phenotype.Distribution_Significantmarkers.FarmCPU.HEA.pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Phenotype.Distribution_Significantmarkers.FarmCPU.HEI.pdf" $(GAPIT_FIGURES_REPORT_DIR)
	cp "${GAPIT_FIGURES_DIR}/GAPIT.Phenotype.Distribution_Significantmarkers.FarmCPU.RIP.pdf" $(GAPIT_FIGURES_REPORT_DIR)