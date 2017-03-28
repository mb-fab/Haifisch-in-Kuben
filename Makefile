
all: model.png shark.png parts.png parts2.png projection.svg projection2.svg

# generate previews
%.png: %.scad config.scad noses.scad face_xy.scad face_yz.scad face_xz.scad shark.scad parts.scad parts2.scad
	openscad $< --preview -o $@
	convert $@ -trim $@

# other SCAD files are mentioned, to have make track their changes, too
%.svg: %.scad config.scad noses.scad face_xy.scad face_yz.scad face_xz.scad
	openscad $< -o temp.svg
	cat temp.svg | sed \
		-e "s/fill=\"lightgray\"/fill=\"none\"/" \
		-e "s/stroke=\"black\"/stroke=\"red\"/" \
		-e "s/stroke-width=\"\([0-9]*\.[0-9]*\)\"//g" \
		-e "s/stroke=\"red\"/stroke=\"red\" stroke-width=\"0.01\"/g" \
		> $@
	@rm temp.svg

clean:
	rm -fr *.png projection*.svg

