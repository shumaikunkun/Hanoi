import * as readline from "readline";

const hanoi = (n: number, x: string, y: string, z: string): void => {
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
