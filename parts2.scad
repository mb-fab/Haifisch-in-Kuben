
include <config.scad>;
use <face_xy.scad>;
use <face_yz.scad>;
use <face_xz.scad>;

module base_material()
{
    color("grey")
    translate([
        0,
        0,
        -1.5
        ])
    cube([
        material_x,
        material_y,
        1
        ]);
}

module layout()
{
    // vertical "cursor"
    a =  projection_margin;

    // model's z axis is now y
    translate([
        cuboid_x_2 + material_z + a,
        cuboid_z_2 + material_z + projection_margin,
        0
        ])
    // rotate into xy-plane
    rotate([
        90,
        0,
        0
        ])
    face_xz();

    b = a + cuboid_x + 2*material_z + projection_spacing;

    // model's z axis is now y
    translate([
        cuboid_x_2 + material_z + b,
        cuboid_z_2 + material_z + projection_margin,
        0
        ])
    // rotate into xy-plane
    rotate([
        90,
        0,
        0
        ])
    face_xz();

    c = b + cuboid_x + 2*material_z + projection_spacing;

    // model's z axis is now y
    translate([
        cuboid_x_2 + material_z + c,
        cuboid_z_2 + material_z + projection_margin,
        0
        ])
    // rotate into xy-plane
    rotate([
        90,
        0,
        0
        ])
    face_xz();
}

base_material();
layout();
