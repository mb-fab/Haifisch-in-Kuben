
include <config.scad>;
use <face_xy.scad>;
use <face_yz.scad>;
use <face_xz.scad>;

// bottom
translate([
    0,
    0,
    - cuboid_z_2 - material_z_2
    ])
 face_xy();

// top
translate([
    0,
    0,
    + cuboid_z_2 + material_z_2
    ])
 face_xy();

// left
translate([
    - cuboid_x_2 - material_z_2,
    0,
    0
    ])
face_yz();

// right
translate([
    + cuboid_x_2 + material_z_2,
    0,
    0
    ])
face_yz();

// back
translate([
    0,
    + cuboid_y_2 + material_z_2,
    0
    ])
face_xz();

// front
translate([
    0,
    - cuboid_y_2 - material_z_2,
    0
    ])
face_xz();
