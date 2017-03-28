
include <config.scad>;
use <noses.scad>;

/**
 * Generate the top and bottom face of the cuboid
 * with noses, centered around origin
 */
module face_xy()
{
    color("blue")
    {
        cube([
            cuboid_x,
            cuboid_y,
            material_z
            ], center=true);

        rotate([
            0,
            0,
            90
            ])
        scale([
            cuboid_y,
            1,
            1
            ])
        {
            translate([
                0,
                cuboid_x_2 + material_z_2,
                0
                ])
            nose_negative();

            translate([
                0,
                - cuboid_x_2 - material_z_2,
                0
                ])
            nose_negative();
        }

        scale([
            cuboid_x,
            1,
            1
            ])
        {
            translate([
                0,
                cuboid_y_2 + material_z_2,
                0
                ])
            nose_negative();

            translate([
                0,
                - cuboid_y_2 - material_z_2,
                0
                ])
            nose_negative();
        }
    }
}

face_xy();
