
all: model.png shark.png parts.png parts2.png projection-hairline.svg

# generate previews
%.png: %.scad config.scad noses.scad face_xy.scad face_yz.scad face_xz.scad shark.scad parts.scad parts2.scad
	openscad $< --preview -o $@
	convert $@ -trim $@

# other SCAD files are mentioned, to have make track their changes, too
projection.svg: projection.scad config.scad noses.scad face_xy.scad face_yz.scad face_xz.scad
	openscad $< -o $@

projection-red.svg: projection.svg
	cat $< | sed \
		-e "s/fill=\"lightgray\"/fill=\"none\"/" \
		-e "s/stroke=\"black\"/stroke=\"red\"/" \
		> $@

projection-hairline.svg: projection-red.svg
	cat $< | sed \
		-e "s/stroke-width=\"\([0-9]*\.[0-9]*\)\"//g" \
		-e "s/stroke=\"red\"/stroke=\"red\" stroke-width=\"0.01\"/g" \
		> $@

clean:
	rm -fr *.png projection*.svg

