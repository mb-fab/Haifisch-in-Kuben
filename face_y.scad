
include <config.scad>;
use <hook.scad>;

/**
 * One of the two planes lying in YZ layer
 */
module face_y()
{
    color("green")
    // center
    translate([
        0,
        -(leg_y - material_width)/2,
        0
        ])
    {
        // basic rectangular face
        translate([
            -material_width/2,
            0,
            0])
            cube([
                material_width,
                leg_y - material_width,
                leg_z
                ]);

        /*
         * add joints
         */
        for (z = joint_height)
        {
            // add all the configured heights
            translate([
                0,
                0,
                z
                ])
            {
                // in the direction of -Y
                rotate([0, 0, -90])
                    joint();

                // in the direction of +Y
                translate([0, leg_y - material_width, 0])
                    rotate([0, 0, 90])
                        joint();
            }
        }
    }
}

face_y();

