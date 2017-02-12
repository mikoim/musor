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

%{ foo: bar } = map
bar

%{ foo: _, hoge: _ } = map

%{ 2 => state } = %{ 1 => :ok, 2 => :error }
state

# can't bind key in pattern matching
# %{ item => :ok } = %{ 1 => :ok, 2 => :error }

data = %{ name: "Dave", state: "TX", likes: "Elixir" }
for key <- [ :name, :likes ] do
  %{ ^key => value } = data
  value
end

mikoim = %{ name: "mikoim", email: "ek@esh.ink" }
person = %{ mikoim | name: "Eshin Kunishima" }
# You can't add a new key like the following code.
# %{ mikoim | icon: "gravatar" }
# use Map.put_new/3
person = Map.put_new mikoim, :icon, "gravatar"
