# Chef: maxscale cookbook

This cookbook installs MaxScale Galera / MariaDB load balancer on CentOS 6.5.

If you don't already have a Chef-Client installed on CentOS do the following:

Install the rbel repo. As root, run the following command:

    #> rpm -Uvh http://rbel.frameos.org/rbel5

Install chef client and dependancies. Install root, run the following command:

    #> yum install rubygem-chef -y