contract main {




// =====================  Runtime code  =====================


uint32 counter;

function getCounter() payable {
    return counter
}

function _fallback() payable {
    revert
}

function count() payable {
    if counter == test266151307():
        revert with 'NH{q', 17
    counter = uint32(counter + 1)
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, counter, 14, 'Counter is now', 0
    emit 0xb09f51db: counter
}



}
