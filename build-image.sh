# Each instruction in the Dockerfile creates one layer.
# These layers are stacked & each of is a delta of the changes from the previous layer.

# => [internal] load build definition from Dockerfile                                                                                                                                          0.1s
# => => transferring dockerfile: 430B                                                                                                                                                          0.0s
# => [internal] load .dockerignore                                                                                                                                                             0.1s
# => => transferring context: 2B                                                                                                                                                               0.0s
# => [internal] load metadata for docker.io/library/node:19-alpine                                                                                                                             1.7s
# => [internal] load build context                                                                                                                                                             0.0s
# => => transferring context: 776B                                                                                                                                                             0.0s
# => [1/5] FROM docker.io/library/node:19-alpine@sha256:a67a33f791d1c86ced985f339fa160f6188f590ebbe963fe11cc00adc971fa41                                                                       6.7s
# => => resolve docker.io/library/node:19-alpine@sha256:a67a33f791d1c86ced985f339fa160f6188f590ebbe963fe11cc00adc971fa41                                                                       0.0s
# => => sha256:f487fdae88463b8adba1cc82af1bc93058a4bc2f44c7c5c968958c6460d4c5c3 1.16kB / 1.16kB                                                                                                0.0s
# => => sha256:cddebfd139342425ebc719224414486c06f0159d262f9cf3004453df9f3ed4b9 6.48kB / 6.48kB                                                                                                0.0s
# => => sha256:63b65145d645c1250c391b2d16ebe53b3747c295ca8ba2fcb6b0cf064a4dc21c 3.37MB / 3.37MB                                                                                                1.5s
# => => sha256:bc59db64d63d87a2863457b909c9a6ca8772a8f04b85959ce55bd955b0ebfcfb 48.23MB / 48.23MB                                                                                              4.4s
# => => sha256:c8fd6d18c4a07741813297d22a4b571d0a72a7bebe60a80935aa471e737ae1d1 2.35MB / 2.35MB                                                                                                2.1s
# => => sha256:a67a33f791d1c86ced985f339fa160f6188f590ebbe963fe11cc00adc971fa41 1.43kB / 1.43kB                                                                                                0.0s
# => => extracting sha256:63b65145d645c1250c391b2d16ebe53b3747c295ca8ba2fcb6b0cf064a4dc21c                                                                                                     0.1s
# => => sha256:eb563838426b1ec0a8b95b825a372c46dfe0c89749eaca0e47cd75d09fc7ff51 447B / 447B                                                                                                    1.6s
# => => extracting sha256:bc59db64d63d87a2863457b909c9a6ca8772a8f04b85959ce55bd955b0ebfcfb                                                                                                     1.8s
# => => extracting sha256:c8fd6d18c4a07741813297d22a4b571d0a72a7bebe60a80935aa471e737ae1d1                                                                                                     0.1s
# => => extracting sha256:eb563838426b1ec0a8b95b825a372c46dfe0c89749eaca0e47cd75d09fc7ff51                                                                                                     0.0s
# => [2/5] COPY package.json /app/                                                                                                                                                             0.5s
# => [3/5] COPY src /app/                                                                                                                                                                      0.1s
# => [4/5] WORKDIR /app                                                                                                                                                                        0.0s
# => [5/5] RUN npm install                                                                                                                                                                     4.6s
# => exporting to image                                                                                                                                                                        0.2s
# => => exporting layers                                                                                                                                                                       0.2s
# => => writing image sha256:187b57ad19b47295485d2116dd14ef852b551d2c85ac10dfec71047fde91d5d4                                                                                                  0.0s
# => => naming to docker.io/library/express-app:1.0    

# #######################################################################################################################


docker build -t express-app:1.0 .

