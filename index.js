const os = require('os')

const freeMem = os.freemem()

const bar = () => {
    console.trace()
}

const foo = () => {
    console.log(module)
    // console.table(module.paths)
    console.log('free memory object is ', freeMem / 1024 / 1024, 'MB')
    console.log('free memory string is ' + freeMem / 1024 / 1024 + ' MB')
    console.log({ freeMem })
}

foo()
