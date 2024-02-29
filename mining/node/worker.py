import subprocess

def start_ray_cluster():
    # Command to start the Ray cluster
    command = "ray start --head --port=6379"

    # Execute the command
    process = subprocess.Popen(command, shell=True)

    # Wait for the process to complete (optional)
    process.wait()

    # Optional: Check if the process was successful
    if process.returncode == 0:
        print("Ray cluster started successfully.")
    else:
        print("Failed to start Ray cluster.")

# Call the function if the file is executed directly
if __name__ == "__main__":
    start_ray_cluster()
