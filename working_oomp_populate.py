
import copy

from oomp_populate_helper import write_extras


def main(**kwargs):
    # Define default input dict with all required fields
    default_input = {
        "taxonomy_1": "electrical",
        "taxonomy_2": "extension_lead",
        "taxonomy_3": "uk_socket",
        "taxonomy_4": "6_outlet",
        "taxonomy_5": "pro_elec",
        "taxonomy_6": "2068",
        "taxonomy_7": "",
        "taxonomy_8": "",
        # Add any additional details here
    }
     
    
    #### define extra entries
    
    options = []
    if True:
        option = {}
        #reason 600 house points        
        option["source_main_url"] = "https://uk.farnell.com/pro-elec/2068-10m/extension-lead-6way-10m/dp/1286484#anchorTechnicalDOCS"
        options.append(option)
    
    #define parts here
    if True:
        option = {}
        option["oobb"] = True
        option["width"] = 5
        option["height"] = 6
        option["depth"] = 21
        #name oobb_holder
        option["oobb_name"] = "holder"
        options.append(option)

    extras = []
    for option in options:
        extra = copy.deepcopy(default_input)
        extra.update(option)
        
        
        extras.append(extra)

    write_extras(extras, default_input)
# Call main automatically
if __name__ == "__main__":
    main()
