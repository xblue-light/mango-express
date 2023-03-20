# Each instruction in the Dockerfile creates one layer.
# These layers are stacked & each of is a delta of the changes from the previous layer.
# #######################################################################################################################

docker build -t express-app:1.0 .

