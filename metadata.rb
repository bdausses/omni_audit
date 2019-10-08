name 'omni_audit'
maintainer 'Chef Software'
maintainer_email 'bdausses@chef.io'
license 'All Rights Reserved'
description 'Installs/Configures omni_audit'
long_description 'Installs/Configures omni_audit'
version '0.1.0'
chef_version '>= 13.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/omni_audit/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/omni_audit'

depends 'audit', '9.0.1'
