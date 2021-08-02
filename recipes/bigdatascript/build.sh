#!/bin/bash

java_url="https://github.com/AdoptOpenJDK/openjdk16-binaries/releases/download/jdk16u-2021-05-08-12-45/OpenJDK16U-jdk_x64_linux_hotspot_2021-05-08-12-45.tar.gz"
jdk_fn="jdk_latest.tar.gz"
wget -O ${jdk_fn} ${java_url}
tar -zxf ${jdk_fn}

#TODO note sure how to get that information from the tarbal
java_home="jdk-16.0.1+9"

bds_version=${PKG_VERSION}
#BDS_HOME="${PREFIX}/opt/bds-${bds_version}" scripts/install.sh
JAVA_HOME=${java_home} scripts/install.sh

#mkdir -p "${PREFIX}/bin"
#mkdir -p "${PREFIX}/opt/bds-${bds_version}"
#ln -s "${PREFIX}/opt/bds-${bds_version}/bds" "${PREFIX}/bin/bds"
#ln -s "${PREFIX}/opt/bds-${bds_version}/bds.config" "${PREFIX}/bin/bds.config"
#chmod 0755 "${PREFIX}/opt/bds-${bds_version}/bds"
