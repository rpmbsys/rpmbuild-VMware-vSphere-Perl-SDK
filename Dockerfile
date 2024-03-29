FROM aursu/vspherebuild:7-base

COPY SOURCES ${BUILD_TOPDIR}/SOURCES
COPY SPECS ${BUILD_TOPDIR}/SPECS

RUN chown -R $BUILD_USER ${BUILD_TOPDIR}/{SOURCES,SPECS}

ENTRYPOINT ["/usr/bin/rpmbuild", "VMware-vSphere-Perl-SDK.spec"]
CMD ["-ba"]
