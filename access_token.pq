let
url = "https://login.microsoftonline.com/1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a/oauth2/v2.0/token",
headers = [#"Content-Type" = "application/x-www-form-urlencoded"],
postData = "client_id=4ea09a27-b6f8-414d-a1d2-50750df8313e&scope=https://graph.microsoft.com/.default&grant_type=client_credentials&client_secret=hFI8Q~vFTntfZdJdYjIuWe7r6ayukuxWPTZiXafr",
response = Web.Contents(
url,
[
Headers = headers,
Content = postData
]
),
Data = Json.Document(response),

access_token=Data[access_token]

in

access_token