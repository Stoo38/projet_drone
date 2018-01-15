pour préparer l'environement il faut modifier le fichier dans SCRIPTS/defines.tcl (fichier VHD et DESIGN_NAME)
lancer init.sh (--> seulement la premiere fois)

se placer dans WORK et executer ./run_spy.sh
les test effectuer sont :

	-->lint/lint_rtl
	-->lint/lint_abstract
	-->lint_adv/adv_lint_struct
	-->lint_adv/adv_lint_verify
	
	ENJOIE !!!!
