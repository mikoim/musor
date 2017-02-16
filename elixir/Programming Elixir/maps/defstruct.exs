defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true
end

s1 = %Subscriber{name: "foo"}
s2 = %Subscriber{name: "bar", paid: true}

s1.name == "foo"
%Subscriber{name: name} = s1
name == "foo"

s3 = %Subscriber{s2 | name: "lolcat", paid: false}

# s3 = %Subscriber{foo: "bar"}
# ** (KeyError) key :foo not found in: %Subscriber{name: "", over_18: true, paid: false}
