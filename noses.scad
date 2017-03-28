
include <config.scad>;

/**
 * Generates configured number of noses
 * centered, along X axis, to normalized total length of 1
 */
module nose_positive()
{
    begin_x = -0.5;
    delta_x = (1-relative_nose_length) / (nose_count-1);
    for (i=[0:nose_count-1])
    {
        translate([
            begin_x + i*delta_x,
            -material_z/2,
            -material_z/2
            ])
        cube([
            relative_nose_length,
            material_z,
            material_z
            ]);
    }
}

/**
 * Generates the counterpart to nose_positive()
 */
module nose_negative()
{
    // subtract nose_positive() from centered cuboid
    difference()
    {
        translate([
            -0.5,
            -material_z/2,
            -material_z/2
            ])
        cube([
            1,
            material_z,
            material_z
            ]);
        // a little overscale to get rid of rendering artifacts
        scale([
            1.001,
            1.001,
            1.001
            ])
        nose_positive();
    }
}

nose_negative();
