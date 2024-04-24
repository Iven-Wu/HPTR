from pathlib import Path
from waymo_open_dataset.protos import motion_submission_pb2
import pdb

# Define the directory and the file name
submission_dir = Path("/home/fuyang/code/HPTR/logs/2024-04-23/18-38-08/womd_K1")
k = 1  # Replace with the actual identifier used when the file was saved

# File path
file_path = submission_dir / f"womd_K{k}.bin"

# Create an instance of the MotionChallengeSubmission object
submission = motion_submission_pb2.MotionChallengeSubmission()

# Load and deserialize the data
with open(file_path, "rb") as f:
    submission.ParseFromString(f.read())

len(submission.scenario_preditions)
