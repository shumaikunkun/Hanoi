"use strict";
const readline = require("readline");

const hanoi = (n, x, y, z) => {
    if (n > 1) {
        hanoi(n - 1, x, z, y);
    }
    console.log(`${x}=>${y}`);
    if (n > 1) {
        hanoi(n - 1, z, y, x);
    }
};

readline.createInterface({ input: process.stdin }).on("line", input => {
    hanoi(Number.parseInt(input), "a", "b", "c");
    process.exit();
});
