#!/bin/bash
set -eu

cat << EOT >> backend/routes/web.php
#vue テスト
Route::get('/example', function () {
		return view('example');
});
EOT
