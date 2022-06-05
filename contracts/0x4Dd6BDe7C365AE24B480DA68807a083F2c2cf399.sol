contract main {




// =====================  Runtime code  =====================


const sub_2e5e0b18(?) = 0xb2b94f103406bd5d04d84a1bebc3e89f05eeddea

const sub_439d7319(?) = 0x8cd309e14575203535ef120b5b0ab4dded0c2073


function _fallback() payable {
    revert
}

function price(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.0xaea91078 with:
            gas gas_remaining wei
           args 0x8cd309e14575203535ef120b5b0ab4dded0c2073
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2b94f103406bd5d04d84a1bebc3e89f05eeddea)
    staticcall 0xb2b94f103406bd5d04d84a1bebc3e89f05eeddea.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^9)
}



}
