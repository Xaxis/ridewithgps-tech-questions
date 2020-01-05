// 3. Write a function, in any language or pseudocode, that will take a string
// as input and produce the reverse of that string. Bonus points if you can reverse
// the string in-place, without requiring a new string or array.

/**
 * A very simple function that will reverse a string.
 * @param str The string that we want to have reversed.
 */
function reverse_string(str) {
    return str.split("").reverse().join("");
}

reverse_string("this string is about to be reversed!");