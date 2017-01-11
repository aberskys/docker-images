FROM centos:7
MAINTAINER "AB Web Freelance (Aurimas Berskys)" <a.berskys@gmail.com>

ENV USER_GUID 1000
ENV USER_UID 1000

# Adding nginx user
RUN groupadd www -g ${USER_GUID} && \
    useradd www -g ${USER_GUID} -u ${USER_UID}
