var tree = [
    [1, 2],
    [1, 3],
    [3, 4],
    [4, 5],
    [5, 6],
    [5, 7],
    [1, 7],
    [2, 8],
    [8, 9],
    [9, 11],
    [9, 10],
    [7, 10],
    [10, 12],
    [10, 14],
    [12, 13],
    [14, 15],
]
// let acc2 = []
var exit = 15
function init(startposition) {
    let acc2 = []
    tree.map(a => {
        if (a[0] === startposition) acc2.push(a)
    })
    return acc2
}

function breathfirst(acc, counter) {
    if (!acc) {
        return 'impossible'
    } else if (acc[0][1] === exit) {return counter}
    else {return breathfirst(init(acc[0][0],counter++))}
}


breathfirst(init(1), 15, 0)

// init(x,1)
console.log(init(1))
