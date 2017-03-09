defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %Customer{}, details: "", severity: 1
end

report = %BugReport{owner: %Customer{name: "Dave", company: "Pragmatic"}, details: "broken"}
report = %BugReport{ report | owner: %Customer{ report.owner | company: "PragProg" }}
put_in(report.owner.company, "PragProg")
update_in(report.owner.name, &("Mr. " <> &1))

nyan = %{nuko: %{su: "（*´・ω・）"}}
get_in(nyan, [:nuko, :su])
# "（*´・ω・）"
get_and_update_in(nyan, [:nuko, :su], &{&1, &1 <> " ｽ"})
# {"（*´・ω・）", %{nuko: %{su: "（*´・ω・） ｽ"}}}

nyan = %{nuko: %{su: "（*´・ω・）"}}
nyan.nuko.su
# "（*´・ω・）"
nyan[:nuko][:su]
# "（*´・ω・）"
get_and_update_in(nyan[:nuko][:su], &{&1, &1 <> " ｽ"})
# {"（*´・ω・）", %{nuko: %{su: "（*´・ω・） ｽ"}}}
