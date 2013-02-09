name "fgis"
description "Everything needed to run fgis"

run_list(
  "recipe[postgis]",
  "recipe[nodejs]",
  "recipe[fgis-core]"
)