
include <config.scad>;
use <face_x.scad>;
use <face_y.scad>;
use <face_z.scad>;

module base_material()
{
    color("grey")
    translate([
        0,
        0,
        -2
        ])
        cube([
            material_y,
            material_x,
            1
            ]);
}

module project_face_x()
{
    projection()
    {
        translate([
            leg_x/2,
            0,
            0
            ])
        rotate([
            -90,
            0,
            0
            ])
            face_x();
    }
}

module project_face_y()
{
    projection()
    {
        translate([
            leg_x/2,
            0,
            0
            ])
        rotate([
            0,
            90,
            90
            ])
            face_y();
    }
}

//base_material();

color("red")
    project_face_x();

color("yellow")
translate([
    leg_x + projection_spacing,
    0
    ])
    project_face_x();

color("lightgreen")
translate([
    2*leg_x + 2*projection_spacing + joint_x,
    0,
    0
    ])
    project_face_y();

color("blue")
translate([
    3*leg_x + 3*projection_spacing + 3*joint_x,
    0,
    0
    ])
    project_face_y();

color("yellow")
projection()
face_z();
