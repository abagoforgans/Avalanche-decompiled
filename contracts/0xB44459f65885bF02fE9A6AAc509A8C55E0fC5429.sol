contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdraw() payable {
    require ext_code.size(0x35bd6aeda81a7e5fc7a7832490e71f757b0cd9ce)
    staticcall 0x35bd6aeda81a7e5fc7a7832490e71f757b0cd9ce.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(0x35bd6aeda81a7e5fc7a7832490e71f757b0cd9ce):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), 0xe9d8c31c5bd5f2939731387d, 0, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call 0x35bd6aeda81a7e5fc7a7832490e71f757b0cd9ce.0x4828f532 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), 0xe9d8c31c5bd5f2939731387d, 0, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), 0xe9d8c31c5bd5f2939731387d:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
