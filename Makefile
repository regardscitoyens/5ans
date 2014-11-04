all: bilan_5ans.pdf progres_5ans.pdf priorites_5ans.pdf

bilan_5ans.pdf: bilan/regardscitoyens.pdf bilan/nosdeputes.pdf A4/20090924_nosdeputes.pdf bilan/lafabrique.pdf A4/20140510_lafabriquedelaloi.pdf bilan/nossenateurs.pdf A4/20111001_nossenateurs.pdf bilan/nosfinanceslocales.pdf A4/20140301_nosfinanceslocales.pdf bilan/numerisonslobbyistes.pdf A4/20110317_etude-lobbying.pdf bilan/sanctions.pdf A4/20110801_confiseurs.pdf bilan/interets.pdf A4/20140801_declarations-interets.pdf bilan/autre.pdf
	pdftk bilan/regardscitoyens.pdf bilan/nosdeputes.pdf A4/20090924_nosdeputes.pdf bilan/lafabrique.pdf A4/20140510_lafabriquedelaloi.pdf bilan/nossenateurs.pdf A4/20111001_nossenateurs.pdf bilan/nosfinanceslocales.pdf A4/20140301_nosfinanceslocales.pdf bilan/numerisonslobbyistes.pdf A4/20110317_etude-lobbying.pdf bilan/sanctions.pdf A4/20110801_confiseurs.pdf bilan/interets.pdf A4/20140801_declarations-interets.pdf bilan/autre.pdf cat output bilan_5ans.pdf

progres_5ans.pdf: progres/progres_entete.pdf progres/progres_body1.pdf progres/progres_body2.pdf progres/progres_body3.pdf progres/progres_body4.pdf
	pdftk progres/progres_entete.pdf progres/progres_body1.pdf progres/progres_body2.pdf progres/progres_body3.pdf progres/progres_body4.pdf cat output progres_5ans.pdf

priorites_5ans.pdf: priorites/priorites_entete.pdf priorites/priorites_body.pdf
	pdftk priorites/priorites_entete.pdf priorites/priorites_body.pdf cat output priorites_5ans.pdf

A4/20090924_nosdeputes.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20090924_nosdeputes.pdf -- A3/20090924_nosdeputes.pdf - 2> /dev/null

A4/20091214_redecoupage.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20091214_redecoupage.pdf -- A3/20091214_redecoupage.pdf - 2> /dev/null

A4/20100208_geolocalisation.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20100208_geolocalisation.pdf -- A3/20100208_geolocalisation.pdf - 2> /dev/null

A4/20100209_gazouillons.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20100209_gazouillons.pdf -- A3/20100209_gazouillons.pdf - 2> /dev/null

A4/20100801_crowdsourcing-lobbying..pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20100801_crowdsourcing-lobbying..pdf -- A3/20100801_crowdsourcing-lobbying..pdf - 2> /dev/null

A4/20101210_nosdonnees.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20101210_nosdonnees.pdf -- A3/20101210_nosdonnees.pdf - 2> /dev/null

A4/20110317_etude-lobbying.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20110317_etude-lobbying.pdf -- A3/20110317_etude-lobbying.pdf - 2> /dev/null

A4/20110801_confiseurs.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/.20110801_confiseurs.tmp.pdf -- A3/20110801_confiseurs.pdf - 2> /dev/null ; gs -dNOPAUSE=true -dBATCH=true -sDEVICE=pdfwrite -dCompatibilityLevel=1.4  -sOutputFile=A4/20110801_confiseurs.pdf A4/.20110801_confiseurs.tmp.pdf 2> /dev/null 1>&2;

A4/20111001_nossenateurs.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20111001_nossenateurs.pdf -- A3/20111001_nossenateurs.pdf - 2> /dev/null

A4/20121208_simplifions.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20121208_simplifions.pdf -- A3/20121208_simplifions.pdf - 2> /dev/null

A4/20130710_reserve.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20130710_reserve.pdf -- A3/20130710_reserve.pdf - 2> /dev/null

A4/20140301_nosfinanceslocales.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20140301_nosfinanceslocales.pdf -- A3/20140301_nosfinanceslocales.pdf - 2> /dev/null 

A4/20140510_lafabriquedelaloi2.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20140510_lafabriquedelaloi2.pdf -- A3/20140510_lafabriquedelaloi2.pdf - 2> /dev/null

A4/20140510_lafabriquedelaloi.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20140510_lafabriquedelaloi.pdf -- A3/20140510_lafabriquedelaloi.pdf - 2> /dev/null

A4/20140801_declarations-interets.pdf:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20140801_declarations-interets.pdf -- A3/20140801_declarations-interets.pdf - 2> /dev/null

bilan/nosdeputes.pdf: bilan/nosdeputes.md
	pandoc bilan/nosdeputes.md -o bilan/nosdeputes.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile bilan/nosdeputes.pdf -- bilan/nosdeputes.pdf - 2> /dev/null

bilan/nossenateurs.pdf: bilan/nossenateurs.md
	pandoc bilan/nossenateurs.md -o bilan/nossenateurs.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile bilan/nossenateurs.pdf -- bilan/nossenateurs.pdf - 2> /dev/null

bilan/nosfinanceslocales.pdf: bilan/nosfinanceslocales.md
	pandoc bilan/nosfinanceslocales.md -o bilan/nosfinanceslocales.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile bilan/nosfinanceslocales.pdf -- bilan/nosfinanceslocales.pdf - 2> /dev/null

bilan/numerisonslobbyistes.pdf: bilan/numerisonslobbyistes.md
	pandoc bilan/numerisonslobbyistes.md -o bilan/numerisonslobbyistes.pdf; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile bilan/numerisonslobbyistes.pdf -- bilan/numerisonslobbyistes.pdf - 2> /dev/null

bilan/sanctions.pdf: bilan/sanctions.md
	pandoc bilan/sanctions.md -o bilan/sanctions.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile bilan/sanctions.pdf -- bilan/sanctions.pdf - 2> /dev/null

bilan/interets.pdf: bilan/interets.md
	pandoc bilan/interets.md -o bilan/interets.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile bilan/interets.pdf -- bilan/interets.pdf - 2> /dev/null

bilan/lafabrique.pdf: bilan/lafabrique.md
	pandoc bilan/lafabrique.md -o bilan/lafabrique.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile bilan/lafabrique.pdf -- bilan/lafabrique.pdf - 2> /dev/null

bilan/autre.pdf: bilan/autre.md
	pandoc bilan/autre.md -o bilan/autre.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile bilan/autre.pdf -- bilan/autre.pdf - 2> /dev/null

bilan/regardscitoyens.pdf: bilan/regardscitoyens.md commun/logo_5ans.png
	pandoc bilan/regardscitoyens.md -o bilan/regardscitoyens.pdf  ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile bilan/regardscitoyens.pdf -- bilan/regardscitoyens.pdf - 2> /dev/null

progres/progres_entete.pdf: progres/progres_entete.md  commun/logo_5ans.png
	pandoc progres/progres_entete.md -o progres/progres_entete.pdf  ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile progres/progres_entete.pdf -- progres/progres_entete.pdf - 2> /dev/null

progres/progres_body1.pdf: progres/progres_body1.md
	pandoc -H commun/a4.tex progres/progres_body1.md -o progres/progres_body1.pdf

progres/progres_body2.pdf: progres/progres_body2.md
	pandoc -H commun/a4.tex progres/progres_body2.md -o progres/progres_body2.pdf 

progres/progres_body3.pdf: progres/progres_body3.md
	pandoc -H commun/a4.tex progres/progres_body3.md -o progres/progres_body3.pdf

progres/progres_body4.pdf: progres/progres_body4.md
	pandoc -H commun/a4.tex progres/progres_body4.md -o progres/progres_body4.pdf 

priorites/priorites_entete.pdf: priorites/priorites_entete.md  commun/logo_5ans.png
	pandoc priorites/priorites_entete.md -o priorites/priorites_entete.pdf  ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile priorites/priorites_entete.pdf -- priorites/priorites_entete.pdf - 2> /dev/null

priorites/priorites_body.pdf: priorites/priorites_body.md
	pandoc -H commun/a4.tex priorites/priorites_body.md -o priorites/priorites_body.pdf 
clean:
	rm -f bilan/*pdf priorites/*pdf progres/*pdf *pdf A4/*pdf A4/.*pdf

publish:
	rsync -ac *_5ans.pdf goya2.regardscitoyens.org:/home/nosdeputes/www.regardscitoyens.org/tmp/5ans/
