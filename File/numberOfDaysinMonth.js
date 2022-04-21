function getDaysInMonth(mon, yr){
    var thatDay = new Date(yr, mon, 0).getDate();
    return thatDay;
}

// var ans = getDaysInMonth(1, 2012);
// console.log(ans);

console.log(getDaysInMonth(1, 2012));
console.log(getDaysInMonth(2, 2012));
console.log(getDaysInMonth(9, 2012));
console.log(getDaysInMonth(12, 2012));