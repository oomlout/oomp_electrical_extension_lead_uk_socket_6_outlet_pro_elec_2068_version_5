$fn = 50;

difference() {
	union() {
		translate(v = [22.5, 37.5, 21]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
						#translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.375, r2 = 4.5);
						}
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.375);
						}
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [-22.5, 37.5, 21]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
						#translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.375, r2 = 4.5);
						}
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.375);
						}
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [-22.5, -37.5, 21]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
						#translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.375, r2 = 4.5);
						}
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.375);
						}
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [22.5, -37.5, 21]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
						#translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.375, r2 = 4.5);
						}
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.375);
						}
						#translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
					}
					union();
				}
			}
		}
		hull() {
			translate(v = [-32.0, 39.5, 0]) {
				cylinder(h = 21, r = 5);
			}
			translate(v = [32.0, 39.5, 0]) {
				cylinder(h = 21, r = 5);
			}
			translate(v = [-32.0, -39.5, 0]) {
				cylinder(h = 21, r = 5);
			}
			translate(v = [32.0, -39.5, 0]) {
				cylinder(h = 21, r = 5);
			}
		}
	}
	union() {
		translate(v = [0, -6, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						#translate(v = [0, 0, -100.0]) {
							cylinder(h = 200, r = 2.25);
						}
						##linear_extrude(height = 3.2) {
							polygon(points = [[4.2698, 0.0], [2.1349000000000005, 3.697755269078796], [-2.134899999999999, 3.6977552690787965], [-4.2698, 5.228996902999369e-16], [-2.134900000000002, -3.6977552690787956], [2.1348999999999974, -3.697755269078798]]);
						}
						#translate(v = [0, 0, -100.0]) {
							cylinder(h = 200, r = 2.25);
						}
						#translate(v = [0, 0, -100.0]) {
							cylinder(h = 200, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [-30.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-50.0, -28.5, 5]) {
			cube(size = [100, 57, 21]);
		}
		translate(v = [15, 15, -125.0]) {
			cylinder(h = 250, r = 7.5);
		}
		translate(v = [-15, 15, -125.0]) {
			cylinder(h = 250, r = 7.5);
		}
		translate(v = [-15, -15, -125.0]) {
			cylinder(h = 250, r = 7.5);
		}
		translate(v = [15, -15, -125.0]) {
			cylinder(h = 250, r = 7.5);
		}
	}
}
