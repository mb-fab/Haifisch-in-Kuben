
include <config.scad>;

/**
 * One of the two planes lying in XZ layer
 */
module face_x()
{
    color("red")
    difference()
    {
        // center
        translate([
            -leg_x/2,
            -material_width/2,
            0
            ])
            // basic rectangular face
            cube([
                leg_x,
                material_width,
                leg_z
                ]);

        // cut out holes for the joints
        for (x = [
                    // left and right
                    -leg_x/2 + face_y_inset,
                    +leg_x/2 - face_y_inset
                    ])
        {
            // at all the configured joint heights
            for (z = joint_height)
            {
                translate([
                    x - material_width/2,
                    -material_width,
                    z
                    ])
                    cube([
                        material_width,
                        2*material_width,
                        joint_total_height
                        ]);
            }
        }
    }
}

face_x();
