@echo off
set PORT=8080

:: Lance le navigateur web
start microsoft-edge:http://localhost:%PORT%/index.html

:: Serveur local en arrière-plan (réduit). Auto-stop à la fermeture de l'onglet via ping de fermeture.
start "Serveur ACTA" /min powershell -WindowStyle Minimized -ExecutionPolicy Bypass -Command "$l = New-Object System.Net.HttpListener; $l.Prefixes.Add('http://localhost:%PORT%/'); $l.Start(); $bd = Join-Path $pwd 'app'; while($l.IsListening) { $c = $l.GetContext(); $req = $c.Request; $res = $c.Response; $path = $req.Url.LocalPath.TrimStart('/'); if ($path -eq 'api/shutdown') { $res.StatusCode = 200; $res.Close(); $l.Stop(); break; }; if ($path -eq '') { $path = 'index.html' }; $p = Join-Path $bd $path; if (!(Test-Path $p -PathType Leaf)) { $pRoot = Join-Path $pwd $path; if (Test-Path $pRoot -PathType Leaf) { $p = $pRoot } }; if (Test-Path $p -PathType Leaf) { $b = [System.IO.File]::ReadAllBytes($p); $ext = [System.IO.Path]::GetExtension($p).ToLower(); if ($ext -eq '.html') { $res.ContentType = 'text/html; charset=utf-8' } elseif ($ext -eq '.js') { $res.ContentType = 'application/javascript; charset=utf-8' } elseif ($ext -eq '.css') { $res.ContentType = 'text/css; charset=utf-8' } elseif ($ext -eq '.png' -or $ext -eq '.jpg' -or $ext -eq '.jpeg') { $res.ContentType = 'image/png' }; $res.OutputStream.Write($b, 0, $b.Length) } else { $res.StatusCode = 404 }; $res.Close() }"
