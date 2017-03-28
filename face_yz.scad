
include <config.scad>;
use <noses.scad>;

/**
 * Generate the top and bottom face of the cuboid
 * with noses, centered around origin
 */
module face_yz()
{
    color("red")
    {
        cube([
            material_z,
            cuboid_y,
            cuboid_z,
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
                0,
                cuboid_z_2 + material_z_2
                ])
            nose_positive();

            translate([
                0,
                0,
                - cuboid_z_2 - material_z_2
                ])
            nose_positive();
        }

        rotate([
            0,
            90,
            0
            ])
        scale([
            cuboid_z,
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

face_yz();
