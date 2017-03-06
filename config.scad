
// all measures in mm

material_x = 510;
material_y = 370;
material_width = 3;

leg_x = 50;
leg_y = 40;
leg_z = 120;

// about hoch much the faces in Y direction are inset
face_y_inset = 5;

// how far the joint extends planarly from the face
joint_x = 5;
// the lateral width of the joint
joint_y = 10;
// how far down the hook extends
joint_hook_y = 5;

joint_total_height = joint_y + joint_hook_y;

num_joints = 3;
q = leg_z/4;
joint_height = [q, 2*q, 3*q];

// how far apart from on another to project the parts
projection_spacing = 1;

// rendering quality (face number)
$fn = 50;
