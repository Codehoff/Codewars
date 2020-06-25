def cakes(recipe, available)
    if recipe.keys - available.keys == []
      ratios = available.map { |k, v| v / recipe[k] if recipe.key? k }.compact
      ratios.min
    else
      0   
    end
end