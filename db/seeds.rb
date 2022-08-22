# frozen_string_literal: true

%w[
  forge
  amethyst
  citrine
  agate
  topaz
  opal
  jade
  onyx
  sapphire
  tourmaline
  aquamarine
].each do |mineral_name|
  Mineral.find_or_create_by!(name: mineral_name)
end
