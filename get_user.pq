let
    Users = Folder.Contents ("C:/Users"),
    #"Filtered Rows" = Table.SelectRows(Users, let latest = List.Max(Users[Date accessed]) in each [Date accessed] = latest),
    #"Removed Other Columns" = Table.SelectColumns(#"Filtered Rows",{"Name"}),
    List = #"Removed Other Columns"[Name]
in
    List