import argparse
import os
import shutil

def define_script(project_name, top_function_name, c_files):
    # Define the template for the script.tcl
    SCRIPT_TEMPLATE = """\
    open_project {}
    set_top {}
    add_files {}

    open_solution "solution1" -flow_target vivado
    set_part {{xcvu11p-flga2577-1-e}}
    create_clock -period 10 -name default
    set_clock_uncertainty 0.5
    csynth_design
    exit
    """
    script = SCRIPT_TEMPLATE.format(project_name, top_function_name, c_files)
    return script

def move_verilog_and_delete_project(args):
    # Get the current working directory
    current_directory = os.getcwd()

    # Combine the current directory, args.project, and the desired subdirectory
    source_directory = os.path.join(current_directory, args.project, "solution1", "impl", "verilog")

    
    # Check if the directory exists
#    if not os.path.exists(source_directory):
#        raise FileNotFoundError(f"The directory '{source_directory}' does not exist, Check the C code you provided.") 
   
    # Defining the output directory
    output_directory = os.path.join(args.output_folder, args.project)
    print("print projectj name: ", args.project)
    print("print output directory: ",output_directory)
    print("print source directoey: ",source_directory)
    if (not os.path.exists(output_directory)):
        already_exists = 1 
        os.makedirs(output_directory)
    else:
        already_exists = 0
    print()
    print("already_exist: ",already_exists)
    print()

    # Move the contents of the source_directory to the output_directory
    if already_exists:
        if os.path.exists(source_directory):
            for item in os.listdir(source_directory):
                item_path = os.path.join(source_directory, item)
                print("item_path: ",item_path)
                if os.path.isfile(item_path):
                    #source_path = os.path.join(source_folder, file_name)
                    destination_path = os.path.join(output_directory, item)
                    shutil.copy(item_path, destination_path)
                    print(f'Copied: {item_path} -> {destination_path}')
                    #shutil.copy(item_path, os.path.join(output_directory, item))

    # Remove the source_directory
    remove_project = os.path.join(current_directory, args.project)

    if os.path.exists(remove_project):
        shutil.rmtree(remove_project)

    # Remove the script.tcl
    script_file_path = os.path.join(current_directory, "script.tcl")
    if os.path.exists(script_file_path):
        os.remove(script_file_path)
    
    # Check if the folder is empty
    if os.path.exists(output_directory):
        if not os.listdir(output_directory):
            os.rmdir(output_directory)

    # Print the paths for verification
    print("Done Dude")


def create_script_tcl(project_name, top_function_name, c_files):
    # Create the script.tcl content based on the provided inputs
    script_content = define_script(project_name, top_function_name, c_files)
    #script_content = SCRIPT_TEMPLATE.format(project_name, top_function_name, c_files)
    return script_content

def verilog_generator(args):
    
    output_directory = os.path.join(args.output_folder, args.project)
    log_saved = os.path.join(output_directory, "log.txt")
    if (not os.path.exists(output_directory)):

        # Create script.tcl content
        script_content = create_script_tcl(args.project, args.top, args.input_file)

        # Write script.tcl to a file
        with open("script.tcl", "w") as script_file:
            script_file.write(script_content)

        # Execute the vitis_hls command
        command = f"vitis_hls -nolog -f script.tcl"
        os.system(command)
   
        # Move the verilog files and delete the project
        move_verilog_and_delete_project(args)
    else:
        print(output_directory)
        print("The output project name folder is already exists in the output folder you provided")
