# Use Ubuntu 22.04 as the base image
# Fill in the name and tag of the base image
FROM ________

# Define some arguments for git configuration
# Find out how to pass ARG to dockerfile from docker compose
ARG GIT_EMAIL
ARG GIT_USER_NAME

# Update the package information and install the required tools
# Fill in the command to update the package information
RUN _________ && apt-get install -y \
    # Fill in the names of the tools you need to install
    __________ \
    __________ \
    __________ \
    __________ \
    __________ \
    __________ \
    __________

### PLEASE THINK WHY WE WANT TO PUT ALL INSTALL ON THE SAME LINE

# NEMU need an environment variable to be able to run.
# Please find out what to do here based on the init.sh script
ENV ________ ________

# Configure git with the arguments
# Fill in the commands to set the global user email and name for git
RUN git config --global user.email _______
RUN git config --global user.name _______
# Fill in the command to add a safe directory for git
# This is used for pre-commit hooks that ysyx uses
RUN git config --global --add safe.directory _______

# Set the default command to run when starting the container
# Fill in the command to run a bash shell
CMD [_________]
