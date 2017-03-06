
include <config.scad>;

/**
 * Basically just a rectangle with holes
 * X: center
 * Y: center
 * Z: top @ 0, bottom @ -material_width
 */
module face_z()
{
    color("yellow")
    translate([
        -leg_x/2,
        -leg_y/2,
        -material_width])
    cube([
        leg_x,
        leg_y,
        material_width
        ]);
}

face_z();
