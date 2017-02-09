map = %{ foo: "bar", hoge: "huga" }
Map.keys map
Map.values map
map[:foo]
map.hoge

_map1 = Map.drop map, [:foo, :hoge]

map2 = Map.put map, :apple, "pen"
Map.keys map2
Map.values map2
map2[:apple]
map2.apple
Map.has_key? map2, :apple

{ _value, updated_map } = Map.pop map2, :apple

Map.equal? map, updated_map
