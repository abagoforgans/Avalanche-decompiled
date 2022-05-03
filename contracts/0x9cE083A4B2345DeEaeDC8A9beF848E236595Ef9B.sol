contract main {




// =====================  Runtime code  =====================


const soul = ext_code.hash(this.address)


function _fallback() payable {
    revert
}

function run() payable {
    require ext_code.size(0xd86f2618e32235969ea700fe605acf0fb10129e3)
    call 0xd86f2618e32235969ea700fe605acf0fb10129e3.0xd9817a0 with:
         gas gas_remaining wei
        args 0x1d64ceaf2cdbc9b6d41eb0f2f7cda8f04c47d1ac, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd86f2618e32235969ea700fe605acf0fb10129e3)
    call 0xd86f2618e32235969ea700fe605acf0fb10129e3.0xd9817a0 with:
         gas gas_remaining wei
        args 0x5622c4a8f6b245afddda6c32748055837a2616cc, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
