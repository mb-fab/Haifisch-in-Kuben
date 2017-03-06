
include <config.scad>;
use <hook.scad>;
use <face_x.scad>;
use <face_y.scad>;
use <face_z.scad>;

// font
translate([
    0,
    -leg_y/2,
    0
    ])
 face_x();

// back
translate([
    0,
    +leg_y/2,
    0
    ])
 face_x();

// left
translate([
    -leg_x/2 + face_y_inset,
    0,
    0
    ])
face_y();

// right
translate([
    +leg_x/2 - face_y_inset,
    0,
    0
    ])
face_y();

face_z();
