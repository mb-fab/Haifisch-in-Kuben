
// all measures in mm

/*
 * Base material to cut from
 */
material_x = 370;
material_y = 110;
material_z = 3;

/*
 * Shark model measures
 */
shark_length = 100;

/*
 * Cuboid measures (inside)
 */
/*
cuboid_x = shark_length / 2;
cuboid_y = cuboid_x+20;
cuboid_z = cuboid_x+40;
*/
cuboid_x = 40;
cuboid_y = 45;
cuboid_z = 50;

/*
 * Save some calculations
 */
cuboid_x_2 = cuboid_x / 2;
cuboid_y_2 = cuboid_y / 2;
cuboid_z_2 = cuboid_z / 2;
material_z_2 = material_z / 2;

/*
 * Nose properties
 */
// the number
nose_count = 3;
// width of a nose relative to length of the corresponding edge
relative_nose_length = 0.2;

/*
 * Rendering and projection properties
 */
// how far apart from on another to project the parts
projection_spacing = 2;
// how far from the border of the material to begin placing
projection_margin = 5;
// rendering quality (face number)
$fn = 50;
