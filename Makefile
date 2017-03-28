
all: model.png projection.svg

# generate preview
model.png: model.scad config.scad noses.scad face_xy.scad face_yz.scad face_xz.scad
	openscad $< --preview -o $@

# other SCAD files are mentioned, to track their changes, too
projection.svg: projection.scad config.scad noses.scad face_xy.scad face_yz.scad face_xz.scad
	openscad $< -o temp.svg
	cat temp.svg | sed \
		-e "s/fill=\"lightgray\"//" \
		-e "s/stroke=\"black\"/stroke=\"red\"/" \
		> $@
	rm temp*.svg

clean:
	rm -fr model.png temp*.svg projection.svg

