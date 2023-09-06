{
name: "GEO",
index: "world",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "", // world volume has no mother
type: "box",
size: [20000.0, 20000.0, 20000.0], // mm, half-length
material: "sea_water",
invisible: 1,
}

{
name: "GEO",
index: "surrounding_water",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "world",
type: "tube",
r_max: 7000.0,
size_z: 7000.0,
position: [0.0, 0.0, 0.0],
material: "sea_water",
color: [0.4, 0.4, 0.6, 0.1],
}

{
name: "GEO",
index: "tank",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "surrounding_water",
type: "tube",
r_max: 3510.0,
size_z: 3510.0,
position: [0.0, 0.0, 0.0],
material: "tyvek",
color: [0.7, 0.2, 0.3, 0.1],
}

{
name: "GEO",
index: "fiducial",
valid_begin: [0, 0],
valid_end: [0, 0],
mother: "tank",
type: "tube",
r_max: 3500.0,
size_z: 3500.0,
position: [0.0, 0.0, 0.0],
material: "sea_water",
color: [0.4, 0.4, 0.6, 0.1],
}

{ 
name: "GEO", 
index: "pmts", 
valid_begin: [0, 0], 
valid_end: [0, 0], 
mother: "fiducial", 
type: "pmtarray", 
pmt_model: "r7081pe",
mu_metal: 0,
mu_metal_material: "aluminum",
mu_metal_surface: "aluminum",
light_cone: 0, 
pmt_detector_type: "idpmt",
sensitive_detector: "/mydet/pmt/inner", 
efficiency_correction: 1.027,  
pos_table: "PMTINFO", 
orientation: "manual",
//orient_point: [0.0, 0.0, 0.0], 
} 

