
include <config.scad>;
use <noses.scad>;

/**
 * Generate the top and bottom face of the cuboid
 * with noses, centered around origin
 */
module face_xz()
{
    color("green")
    {
        cube([
            cuboid_x,
            material_z,
            cuboid_z
            ], center=true);

        scale([
            cuboid_x,
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
                - cuboid_z_2 - material_z_2,
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
                0,
                cuboid_x_2 + material_z_2
                ])
            nose_positive();

            translate([
                0,
                0,
                - cuboid_x_2 - material_z_2
                ])
            nose_positive();
        }

        /*
         * fill the corners
         */
        translate([
            - cuboid_x_2 - material_z_2,
            0,
            - cuboid_z_2 - material_z_2
            ])
        cube([
            material_z,
            material_z,
            material_z
            ], center=true);

        translate([
            - cuboid_x_2 - material_z_2,
            0,
            + cuboid_z_2 + material_z_2
            ])
        cube([
            material_z,
            material_z,
            material_z
            ], center=true);

        translate([
            + cuboid_x_2 + material_z_2,
            0,
            + cuboid_z_2 + material_z_2
            ])
        cube([
            material_z,
            material_z,
            material_z
            ], center=true);

        translate([
            + cuboid_x_2 + material_z_2,
            0,
            - cuboid_z_2 - material_z_2
            ])
        cube([
            material_z,
            material_z,
            material_z
            ], center=true);
    }
}

face_xz();
