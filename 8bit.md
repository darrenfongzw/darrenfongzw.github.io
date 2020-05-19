###Question 1.
       
    As file.
        "question1.html"
    
##
###Question 2.

    const arr = Array.from({length: 100}, () => Math.floor(Math.random()*100));

##
###Question 3. 

    const output = x.sort().reverse()
    
##
###Question 4.
    
    var x = [
      '<r><a z="3"><a z="2"></r>',
      '<r><a z="1"><a z="2"></r>',
      '<r><a z="4"><a z="2"></r>',
    ]
    
    let parser = new DOMParser()
    let parsedHtml = parser.parseFromString(x, 'text/html')
    // console.log(new XMLSerializer().serializeToString(parsedHtml))
    let y = []
    for (let i = 0; i < parsedHtml.getElementsByTagName('a').length; i++) {
      y.push( parsedHtml.getElementsByTagName('a')[i].getAttribute('z'))
      // console.log(y)
    }
    console.log([... new Set(y)])
##
###Question 5.

    const tree = [[1, 2],[1, 3],[3, 4],[4, 5],[5, 6],[5, 7],[1, 7],[2, 8],[8, 9],[9, 11],
                    [9, 10],[7, 10],[10, 12],[10, 14],[12, 13],[14, 15]];
    const exitCondition = 15;

    function mapSearchSpace(startPosition) {
        let accumulator = []
        tree.map(vertex => {
            if (vertex[0] === startPosition) accumulator.push(vertex[1])
        })
        return [...new Set(accumulator)]
    }


    function breathFirstSearch(accumulator, counter, seenVertex) {
        if (!accumulator) {
            return -1
        } else if (accumulator.includes(exitCondition)) {
            return counter
        } else {
            var accumulator2 = []
            accumulator.map(a => {
                if (!seenVertex.includes(a)) accumulator2.push(...mapSearchSpace(a))
            })
            // console.log("acc2", acc2)
            return breathfirst(accumulator2, counter + 1, [...seenVertex, ...accumulator])
        }
    }

    const output = breathFirstSearch(mapSearchSpace(1), 0, [1])
    console.log(output)
##
###Question 6.
        for (let y = 1; y < 51; y++) {
      if (x.filter(a => a === y).length === 0) {
        output.push(y)
      }
    }
##
###Question 7.
 AngularJs is an older version of angular that uses the Model-View-Controller design philosopy whereas Angular itself uses a component based state system
 AngularJS is programmed in regular javascript but angular is programmed in typescript. While both will compile to the same javascript, typescript is a strongly-typed-language and thus will not have cast errors during production.
    
 Angular supports mobile but not angularjs

##
###Question 8.
Angular Component classes changes and manipulates the view. the @components decorated is used the identify components.
##
###Question 9.
Refactoring of code will is done to reduce technical debt, make the code more readable and in the long run more maintainable. Refactoring of code can also increase code performance.


##
###Question 10.

- Clear variable names
- Good documentation
- functions are small and do one specific thing
- Robust set of tests written

##
###Question 11.
I feel that graphQL as a backend development software is the next big thing as it allows for much smaller and faster api calls, where in a traditional REST or SOAP api, a task might require 7-8 separate calls, causing a much slower user experience, GraphQL can do the same in 1 call
