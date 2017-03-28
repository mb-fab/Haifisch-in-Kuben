
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

    translate([
        cuboid_x_2 + material_z + a,
        cuboid_y_2 + material_z + projection_margin,
        0
        ])
    face_xy();

    b = a + cuboid_x + 2*material_z + projection_spacing;

    // model's z axis is now x
    translate([
        cuboid_z_2 + material_z + b,
        cuboid_y_2 + material_z + projection_margin,
        0
        ])
    // rotate into xy-plane
    rotate([
        0,
        90,
        0
        ])
    face_yz();

    c = b + cuboid_x + 2*material_z + projection_spacing;

    translate([
        cuboid_x_2 + material_z + c,
        cuboid_y_2 + material_z + projection_margin,
        0
        ])
    face_xy();

    d = c + cuboid_z + 2*material_z + projection_spacing;

    // model's z axis is now x
    translate([
        cuboid_z_2 + material_z + d,
        cuboid_y_2 + material_z + projection_margin,
        0
        ])
    // rotate into xy-plane
    rotate([
        0,
        90,
        0
        ])
    face_yz();
    e = d + cuboid_z + 2*material_z + projection_spacing;

    // model's z axis is now y
    translate([
        cuboid_x_2 + material_z + e,
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
    f = e + cuboid_x + 2*material_z + projection_spacing;

    /*
    // model's z axis is now y
    translate([
        cuboid_x_2 + material_z + f,
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
    */
}

base_material();
layout();
