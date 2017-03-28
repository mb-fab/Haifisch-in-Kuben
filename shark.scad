
include <config.scad>;

module shark2()
{
    scale([
        shark_length,
        shark_width,
        shark_height
        ])
    // normalize
    scale([
        -0.0155,
        1/27,
        1/28
        ])
    // rotate to xy plane
    rotate([
        90,
        0,
        90
        ])
    // center
    translate([
        -13.5,
        -9,
        -53
        ])
    // size: 30, 30, 100
    import("shark/shark2.stl");
}

module shark_module()
{
    scale([
        shark_length,
        shark_width,
        shark_height
        ])
    // normalize
    scale([
        -0.0155,
        1/27,
        1/28
        ])
    // rotate to xy plane
    rotate([
        90,
        0,
        90
        ])
    // center
    translate([
        -13.5,
        -9,
        -53
        ])
    // size: 30, 30, 100
    import("shark/shark2.stl");
}

module shark_front()
{
    intersection()
    {
        shark2();

        translate([
            -cuboid_x,
            0,
            0
            ])
        cube([
            cuboid_x,
            cuboid_y,
            cuboid_z
            ], center= true);
    }
}

module shark_middle()
{
    intersection()
    {
        shark2();
        cube([
            cuboid_x,
            cuboid_y,
            cuboid_z
            ], center= true);
    }
}

module shark_rear()
{
    intersection()
    {
        shark2();

        translate([
            +cuboid_x,
            0,
            0
            ])
        cube([
            cuboid_x,
            cuboid_y,
            cuboid_z
            ], center= true);
    }
}

translate([
    +6,
    0,
    0
    ])
shark_rear();

shark_middle();

translate([
    -6,
    0,
    0
    ])
shark_front();
