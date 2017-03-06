
all: projection.svg

projection.svg: global.scad model.scad projection.scad face_x.scad face_y.scad face_z.scad
	openscad projection.scad -o temp.svg
	cat temp.svg | sed \
		-e "s/fill=\"lightgray\"//" \
		-e "s/stroke=\"black\"/stroke=\"red\"/" \
		> $@
	rm temp*.svg

clean:
	rm -fr temp*.svg projection.svg

