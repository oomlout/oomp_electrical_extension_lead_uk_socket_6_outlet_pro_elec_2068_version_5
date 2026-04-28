$fn = 50;

difference() {
	union() {
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
		translate(v = [0, 100, 6.0]) {
			cylinder(h = 6, r = 2.4);
		}
		translate(v = [0, 100, 8.0]) {
			cylinder(h = 4, r = 4.25);
		}
	}
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 180, 90]) {
				difference() {
					union() {
						#translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									difference() {
										union() {
											translate(v = [-7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union();
														union();
													}
												}
											}
											translate(v = [7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union();
														union();
													}
												}
											}
										}
										union();
									}
								}
							}
						}
						#translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									difference() {
										union() {
											translate(v = [-7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union() {
															#translate(v = [0, 0, -25.0]) {
																cylinder(h = 25, r = 1.5);
															}
														}
														union();
													}
												}
											}
											translate(v = [7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union() {
															#translate(v = [0, 0, -25.0]) {
																cylinder(h = 25, r = 1.5);
															}
														}
														union();
													}
												}
											}
										}
										union();
									}
								}
							}
						}
						#translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									difference() {
										union() {
											translate(v = [-7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union() {
															#translate(v = [0, 0, -1.9]) {
																cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
															}
														}
														union();
													}
												}
											}
											translate(v = [7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union() {
															#translate(v = [0, 0, -1.9]) {
																cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
															}
														}
														union();
													}
												}
											}
										}
										union();
									}
								}
							}
						}
						#translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									difference() {
										union() {
											translate(v = [-7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union() {
															#translate(v = [0, 0, -25.0]) {
																cylinder(h = 25, r = 1.8);
															}
														}
														union();
													}
												}
											}
											translate(v = [7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union() {
															#translate(v = [0, 0, -25.0]) {
																cylinder(h = 25, r = 1.8);
															}
														}
														union();
													}
												}
											}
										}
										union();
									}
								}
							}
						}
						#translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									difference() {
										union() {
											translate(v = [-7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union();
														union();
													}
												}
											}
											translate(v = [7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union();
														union();
													}
												}
											}
										}
										union();
									}
								}
							}
						}
						#translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									difference() {
										union() {
											translate(v = [-7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union() {
															#translate(v = [0, 0, -25.0]) {
																cylinder(h = 25, r = 1.5);
															}
														}
														union();
													}
												}
											}
											translate(v = [7.5, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													difference() {
														union() {
															#translate(v = [0, 0, -25.0]) {
																cylinder(h = 25, r = 1.5);
															}
														}
														union();
													}
												}
											}
										}
										union();
									}
								}
							}
						}
					}
					union();
				}
			}
		}
		translate(v = [15, 37.5, 16]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
						translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.375, r2 = 4.5);
						}
						cylinder(h = 250, r = 4.5);
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.375);
						}
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [-15, 37.5, 16]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
						translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.375, r2 = 4.5);
						}
						cylinder(h = 250, r = 4.5);
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.375);
						}
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [-15, -37.5, 16]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
						translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.375, r2 = 4.5);
						}
						cylinder(h = 250, r = 4.5);
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.375);
						}
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [15, -37.5, 16]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
						translate(v = [0, 0, -4.2]) {
							cylinder(h = 4.2, r1 = 2.375, r2 = 4.5);
						}
						cylinder(h = 250, r = 4.5);
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.375);
						}
						translate(v = [0, 0, -21.0]) {
							cylinder(h = 21, r = 2.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, 100, 0]) {
			rotate(a = [0, 180, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -12.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -12.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -12.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						#translate(v = [0, 0, -12.0]) {
							cylinder(h = 12, r = 1.5);
						}
						#translate(v = [0, 0, -1.9]) {
							cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
						}
						#translate(v = [0, 0, -12.0]) {
							cylinder(h = 12, r = 1.8);
						}
						#translate(v = [0, 0, -12.0]) {
							cylinder(h = 12, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [-30.0, -37.5, 0]) {
			cylinder(h = 21, r = 3.25);
		}
		translate(v = [0.0, -37.5, 0]) {
			cylinder(h = 21, r = 3.25);
		}
		translate(v = [30.0, -37.5, 0]) {
			cylinder(h = 21, r = 3.25);
		}
		translate(v = [-30.0, 37.5, 0]) {
			cylinder(h = 21, r = 3.25);
		}
		translate(v = [0.0, 37.5, 0]) {
			cylinder(h = 21, r = 3.25);
		}
		translate(v = [30.0, 37.5, 0]) {
			cylinder(h = 21, r = 3.25);
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
