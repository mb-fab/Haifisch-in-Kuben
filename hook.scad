
include <config.scad>;

module joint()
{
    // center in y-direction
    translate([
        0,
        -material_width/2,
        0
        ])
    {
        // main support structure
        cube([
            joint_x,
            material_width,
            joint_y
            ]);

        // add hook
        translate([
            material_width,
            0,
            -joint_hook_y
            ])
            cube([
                joint_x - material_width,
                material_width,
                joint_hook_y
                ]);
    }
}

joint();
