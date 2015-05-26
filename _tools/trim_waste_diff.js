#!/usr/bin/env node
var fs = require('fs');
var file = process.argv[2];
var input = fs.readFileSync(file, "utf-8");

function trim(content) {
    return content.replace(/_\([^ ]*\)_/mg, "$1") // remove "_" from "_some_"
        .replace(/^([0-9_].*?)[0-9_]*?$/mg, "$1");// 6.2.6 Data Blocks 3 <= remove 3
}

var result = trim(input);
fs.writeFileSync(file, result, "utf-8");