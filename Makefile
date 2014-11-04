all: bilan_5ans.pdf progres_5ans.pdf priorites_5ans.pdf

bilan_5ans.pdf: regardscitoyens.pdf nosdeputes.pdf nossenateurs.pdf nosfinanceslocales.pdf numerisonslobbyistes.pdf sanctions.pdf interets.pdf lafabrique.pdf autre.pdf
	pdftk regardscitoyens.pdf nosdeputes.pdf A4/20090924_nosdeputes.pdf lafabrique.pdf A4/20140510_lafabriquedelaloi.pdf nossenateurs.pdf A4/20111001_nossenateurs.pdf nosfinanceslocales.pdf A4/20140301_nosfinanceslocales.pdf numerisonslobbyistes.pdf A4/20110317_etude-lobbying.pdf sanctions.pdf A4/20110801_confiseurs.pdf interets.pdf A4/20140801_declarations-interets.pdf autre.pdf cat output bilan_5ans.pdf

progres_5ans.pdf: progres_entete.pdf progres_body1.pdf progres_body2.pdf progres_body3.pdf progres_body4.pdf
	pdftk progres_entete.pdf progres_body1.pdf progres_body2.pdf progres_body3.pdf progres_body4.pdf cat output progres_5ans.pdf

priorites_5ans.pdf: priorites_entete.pdf priorites_body.pdf
	pdftk priorites_entete.pdf priorites_body.pdf cat output priorites_5ans.pdf

convert_screen:
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20090924_nosdeputes.pdf -- A3/20090924_nosdeputes.pdf - >
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20091214_redecoupage.pdf -- A3/20091214_redecoupage.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20100208_geolocalisation.pdf -- A3/20100208_geolocalisation.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20100209_gazouillons.pdf -- A3/20100209_gazouillons.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20100801_crowdsourcing-lobbying..pdf -- A3/20100801_crowdsourcing-lobbying..pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20101210_nosdonnees.pdf -- A3/20101210_nosdonnees.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20110317_etude-lobbying.pdf -- A3/20110317_etude-lobbying.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20110801_confiseurs.pdf -- A3/20110801_confiseurs.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20111001_nossenateurs.pdf -- A3/20111001_nossenateurs.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20121208_simplifions.pdf -- A3/20121208_simplifions.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20130710_reserve.pdf -- A3/20130710_reserve.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20140301_nosfinanceslocales.pdf -- A3/20140301_nosfinanceslocales.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20140510_lafabriquedelaloi2.pdf -- A3/20140510_lafabriquedelaloi2.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20140510_lafabriquedelaloi.pdf -- A3/20140510_lafabriquedelaloi.pdf -
	pdfjam --fitpaper true --rotateoversize false --suffix joined --paper a4paper --fitpaper false --rotateoversize false --outfile A4/20140801_declarations-interets.pdf -- A3/20140801_declarations-interets.pdf -

nosdeputes.pdf: nosdeputes.md
	pandoc nosdeputes.md -o nosdeputes.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile nosdeputes.pdf -- nosdeputes.pdf - 2> /dev/null

nossenateurs.pdf: nossenateurs.md
	pandoc nossenateurs.md -o nossenateurs.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile nossenateurs.pdf -- nossenateurs.pdf - 2> /dev/null

nosfinanceslocales.pdf: nosfinanceslocales.md
	pandoc nosfinanceslocales.md -o nosfinanceslocales.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile nosfinanceslocales.pdf -- nosfinanceslocales.pdf - 2> /dev/null

numerisonslobbyistes.pdf: numerisonslobbyistes.md
	pandoc numerisonslobbyistes.md -o numerisonslobbyistes.pdf; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile numerisonslobbyistes.pdf -- numerisonslobbyistes.pdf - 2> /dev/null

sanctions.pdf: sanctions.md
	pandoc sanctions.md -o sanctions.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile sanctions.pdf -- sanctions.pdf - 2> /dev/null

interets.pdf: interets.md
	pandoc interets.md -o interets.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile interets.pdf -- interets.pdf - 2> /dev/null

lafabrique.pdf: lafabrique.md
	pandoc lafabrique.md -o lafabrique.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile lafabrique.pdf -- lafabrique.pdf - 2> /dev/null

autre.pdf: autre.md
	pandoc autre.md -o autre.pdf ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile autre.pdf -- autre.pdf - 2> /dev/null

regardscitoyens.pdf: regardscitoyens.md logo_5ans.png
	pandoc regardscitoyens.md -o regardscitoyens.pdf  ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile regardscitoyens.pdf -- regardscitoyens.pdf - 2> /dev/null

progres_entete.pdf: progres_entete.md  logo_5ans.png
	pandoc progres_entete.md -o progres_entete.pdf  ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile progres_entete.pdf -- progres_entete.pdf - 2> /dev/null

progres_body1.pdf: progres_body1.md
	pandoc -H a4.tex progres_body1.md -o progres_body1.pdf

progres_body2.pdf: progres_body2.md
	pandoc -H a4.tex progres_body2.md -o progres_body2.pdf 

progres_body3.pdf: progres_body3.md
	pandoc -H a4.tex progres_body3.md -o progres_body3.pdf

progres_body4.pdf: progres_body4.md
	pandoc -H a4.tex progres_body4.md -o progres_body4.pdf 

priorites_entete.pdf: priorites_entete.md  logo_5ans.png
	pandoc priorites_entete.md -o priorites_entete.pdf  ; /usr/bin/pdfjam --fitpaper 'true' --rotateoversize 'false' --suffix joined --paper a4paper --fitpaper 'false' --rotateoversize 'false' --outfile priorites_entete.pdf -- priorites_entete.pdf - 2> /dev/null

priorites_body.pdf: priorites_body.md
	pandoc -H a4.tex priorites_body.md -o priorites_body.pdf 
clean:
	rm -f *pdf
