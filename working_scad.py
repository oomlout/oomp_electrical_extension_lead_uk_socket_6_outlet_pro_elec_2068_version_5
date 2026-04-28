import copy
import opsc
import oobb
import yaml
import os
import scad_help
import math

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    typ = scad_help.get_typ(**kwargs)
    oomp_mode = "project"
    #oomp_mode = "oobb"
    filt = ""
    build_variables = scad_help.get_build_variables(typ, filter=filt)
    if True:
        kwargs["filter"] = build_variables["filter"]
        kwargs["save_type"] = build_variables["save_type"]
        kwargs["navigation"] = build_variables["navigation"]
        kwargs["overwrite"] = build_variables["overwrite"]
        kwargs["modes"] = build_variables["modes"]
        kwargs["oomp_mode"] = oomp_mode
        kwargs["oomp_run"] = build_variables["oomp_run"]
    parts = get_parts(kwargs, oomp_mode)
    
    kwargs["parts"] = parts

    scad_help.make_parts(**kwargs)

    if kwargs["navigation"]:
        scad_help.generate_navigation(sort=scad_help.get_navigation_sort())

def get_parts(kwargs, oomp_mode):
    parts = []    

    #load parts from parts/folder/working.yaml
    parts_directory = os.path.join(os.path.dirname(__file__), "parts")
    if not os.path.isdir(parts_directory):
        return parts

    for folder in os.listdir(parts_directory):
        folder_path = os.path.join(parts_directory, folder)
        if not os.path.isdir(folder_path):
            continue

        working_yaml_path = os.path.join(folder_path, "working.yaml")
        if not os.path.isfile(working_yaml_path):
            continue

        with open(working_yaml_path, "r", encoding="utf-8") as infile:
            loaded_part = yaml.safe_load(infile)

        if not isinstance(loaded_part, dict):
            continue

        oobb_details = loaded_part.get("oobb_details")
        if not isinstance(oobb_details, dict):
            continue

        part = loaded_part

        part_kwargs = copy.deepcopy(kwargs)
        part_kwargs.update(copy.deepcopy(loaded_part.get("kwargs", {})))
        part_kwargs.update(copy.deepcopy(oobb_details))
        part["kwargs"] = part_kwargs
        part["oobb_name"] = part.get("oobb_name", oobb_details.get("oobb_name", "default"))

        if oomp_mode == "oobb":
            part["kwargs"]["oomp_size"] = part["oobb_name"]

        parts.append(part)


    return parts

def get_base(thing, **kwargs):

    prepare_print = kwargs.get("prepare_print", False)
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("thickness", 3)                    
    rot = kwargs.get("rot", [0, 0, 0])
    pos = kwargs.get("pos", [0, 0, 0])
    extra = kwargs.get("extra", "")
    
    #add plate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth
    #p3["holes"] = True         uncomment to include default holes
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb.append_full(thing,**p3)
    
    #add holes seperate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_holes"
    p3["both_holes"] = True  
    p3["depth"] = depth
    p3["holes"] = "perimeter"
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb.append_full(thing,**p3)

    #add a test screw_countersunk
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = f"screw_countersunk"
        p3["depth"] = depth
        p3["radius_name"] = "m3"
        pos1 = copy.deepcopy(pos)         
        pos1[2] += depth
        p3["pos"] = pos1
        #p3["m"] = "#"
        oobb.append_full(thing,**p3)

    if prepare_print:
        scad_help.prepare_base_for_print(thing, pos, **kwargs)

def get_holder(thing, **kwargs):

    prepare_print = kwargs.get("prepare_print", False)
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("thickness", 3)                    
    rot = kwargs.get("rot", [0, 0, 0])
    pos = kwargs.get("pos", [0, 0, 0])
    extra = kwargs.get("extra", "")
    
    #add plate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth
    #p3["holes"] = True         uncomment to include default holes
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb.append_full(thing,**p3)
    
    #add holes seperate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_holes"
    p3["both_holes"] = True  
    p3["depth"] = depth
    p3["holes"] = "single"
    p3["locations"] = [[1,1],[3,1],[5,1],[1,6],[3,6],[5,6]]
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb.append_full(thing,**p3)

    #add power bar cutout 57 tall 100 wide and 100 depth shifted up 3 mm
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = f"oobb_cube"
        p3["depth"] = depth
        p3["width"] = 100
        p3["height"] = 57
        pos1 = copy.deepcopy(pos)         
        pos1[2] += 5
        pos1[1] += 0
        p3["pos"] = pos1
        #p3["m"] = "#"
        oobb.append_full(thing,**p3)

    #m4 nut
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"screw_countersunk"
        p3["depth"] = 25
        p3["radius_name"] = "m3"
        #hole true
        p3["hole"] = True
        p3["nut"] = False
        p3["slot"] = 15      
        pos1 = copy.deepcopy(pos)
        pos1[0] += 0
        pos1[1] += 0
        pos1[2] += 0                
        p3["pos"] = pos1
        rot1 = copy.deepcopy(rot)
        rot1[1] += 180
        rot1[2] += 90
        p3["rot"] = rot1
        p3["m"] = "#"
        oobb.append_full(thing,**p3)

    #4 holes 7.5mm radius in a square pattern 15mm apart centered on the part
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = f"oobb_cylinder"
        p3["radius"] = 7.5
        pos1 = copy.deepcopy(pos)         
        poss = []
        shift = 15
        if True:
            pos11 = copy.deepcopy(pos1)
            pos11[0] += shift
            pos11[1] += shift
            poss.append(pos11)
            pos12 = copy.deepcopy(pos1)
            pos12[0] -= shift
            pos12[1] += shift
            poss.append(pos12)
            pos13 = copy.deepcopy(pos1)
            pos13[0] -= shift
            pos13[1] -= shift
            poss.append(pos13)
            pos14 = copy.deepcopy(pos1)
            pos14[0] += shift
            pos14[1] -= shift
            poss.append(pos14)

        p3["pos"] = poss
        oobb.append_full(thing,**p3)


    #add a test screw_countersunk
    if True:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = f"screw_countersunk"
        p3["depth"] = depth
        p3["radius_name"] = "m3_5_screw_wood"
        p3["clearance"] = "top"
        pos1 = copy.deepcopy(pos)         
        pos1[2] += depth - 5
        poss = []
        shift_x = 15
        shift_y = 3 * 15 - 15/2
        #add 4 screws in a square pattern
        if True:
            pos11 = copy.deepcopy(pos1)
            pos11[0] += shift_x
            pos11[1] += shift_y
            poss.append(pos11)
            pos12 = copy.deepcopy(pos1) 
            pos12[0] -= shift_x
            pos12[1] += shift_y
            poss.append(pos12)
            pos13 = copy.deepcopy(pos1)
            pos13[0] -= shift_x
            pos13[1] -= shift_y
            poss.append(pos13)
            pos14 = copy.deepcopy(pos1)
            pos14[0] += shift_x
            pos14[1] -= shift_y
            poss.append(pos14)        
        p3["pos"] = poss
        #p3["m"] = "#"
        oobb.append_full(thing,**p3)

    ##add the cylinders piece
    if True:
        depth_screw = 12
        depth_bottom = 6
        depth_gap = 2
        pos1 = copy.deepcopy(pos)
        pos1[1] += 100
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = f"oobb_cylinder"
        p3["radius"] = (5-0.2)/2
        dep = depth_screw - depth_bottom
        depth_shaft = dep
        p3["depth"] = dep        
        pos2 = copy.deepcopy(pos1)
        pos2[2] += dep/2 + depth_bottom
        p3["pos"] = pos2
        oobb.append_full(thing,**p3)
        
        #8.5 diameter 4 mm depth cylinder on top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = f"oobb_cylinder"
        p3["radius"] = (8.5)/2
        dep = depth_shaft - depth_gap
        p3["depth"] = dep
        pos2 = copy.deepcopy(pos1)
        pos2[2] += 0 -dep/2 + depth_screw
        p3["pos"] = pos2
        oobb.append_full(thing,**p3)
        
        #countersunk screw with nut
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = f"screw_countersunk"
        p3["depth"] = depth_screw
        p3["radius_name"] = "m3"
        p3["nut"] = True
        pos2 = copy.deepcopy(pos1)
        pos2[2] += 0
        p3["pos"] = pos2
        rot1 = copy.deepcopy(rot)
        rot1[1] += 180
        p3["rot"] = rot1
        p3["m"] = "#"
        oobb.append_full(thing,**p3)



    if prepare_print:
        scad_help.prepare_base_for_print(thing, pos, **kwargs)
if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)
