; Drush Make file
;
; Use this file to build a full distribution including Drupal core and the
; "CGUWeb" distribution using the following command...
;
; drush --no-patch-txt make build-cguweb.make <target directory>

api = 2
core = 7.x

; Include the definition for how to build Drupal core directly, including
; patches.

includes[] = drupal-org-core.make

; Download the CGUWeb and recursively build all
; of its dependencies.

projects[cgu_profile][type] = profile
; The following two lines allow for pulling the distribution from the drupal
; git repository;
projects[cgu_profile][download][type] = git
; projects[cgu_profile][download][branch] = 7.x-1.x
projects[cgu_profile][download][url]="git@github.com:InsuranceAustraliaGroup/cguweb.git"


; You can optionally build from a local directory using the make_local drush
; module found at http://drupal.org/project/make_local.
;projects[cguweb][download][type] = local
;projects[cguweb][download][source] = /Users/remon/Git/cguweb
