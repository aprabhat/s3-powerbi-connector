// This file contains your Data Connector logic
[Version = "1.0.0"]
section s3connect;

[DataSource.Kind="s3connect", Publish="s3connect.Publish"]
shared s3connect.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from s3connect: " & _message
    in
        a;

// Data Source Kind description
s3connect = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Anonymous = []
    ]
];

// Data Source UI publishing description
s3connect.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = s3connect.Icons,
    SourceTypeImage = s3connect.Icons
];

s3connect.Icons = [
    Icon16 = { Extension.Contents("s3connect16.png"), Extension.Contents("s3connect20.png"), Extension.Contents("s3connect24.png"), Extension.Contents("s3connect32.png") },
    Icon32 = { Extension.Contents("s3connect32.png"), Extension.Contents("s3connect40.png"), Extension.Contents("s3connect48.png"), Extension.Contents("s3connect64.png") }
];
