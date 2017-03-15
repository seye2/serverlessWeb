del /s /q c:\project\serverlessWeb\2.Lambda\functions\world\*
rmdir /s /q c:\project\serverlessWeb\2.Lambda\functions\world\node_modules

copy c:\project\serverlessWeb\2.Lambda\app.js c:\project\serverlessWeb\2.Lambda\functions\world\app.js
copy c:\project\serverlessWeb\2.Lambda\index.js c:\project\serverlessWeb\2.Lambda\functions\world\index.js
copy c:\project\serverlessWeb\2.Lambda\package.json c:\project\serverlessWeb\2.Lambda\functions\world\package.json

cd c:\project\serverlessWeb\2.Lambda\functions\world
npm install && cd c:\project\serverlessWeb\2.Lambda && apex deploy


