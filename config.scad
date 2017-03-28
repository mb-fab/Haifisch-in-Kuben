
// all measures in mm

/*
 * Base material to cut from
 */
material_x = 425;
material_y = 425;
material_z = 3;

/*
 * Shark model measures
 */
shark_width = 75;
shark_height = 54;
shark_length = 157;

/*
 * Cuboid measures (inside)
 */
cuboid_x = shark_length / 2;
cuboid_y = cuboid_x;
cuboid_z = cuboid_x;
//cuboid_y = shark_width;
//cuboid_z = shark_height + 20;

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
projection_spacing = 0.5;
// how far from the border of the material to begin placing
projection_margin = 0.25;
// rendering quality (face number)
$fn = 50;
