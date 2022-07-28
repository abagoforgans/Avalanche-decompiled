contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_66b093ac(?) payable {
    call 0x5fbdb2315678afecb367f032d93f642f64180aa3.0x6343cb51 with:
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 41, 0xfe6c6f772d6c6576656c2063616c6c206f662066756e6374696f6e2065786563757465206661696c65, mem[305 len 23]
        return Array(len=68, data=approve(address arg1, uint256 arg2), 0x1a731b2299e22fbac282e709, 0, -1, 0 >> 256, Mask(32, -512, approve(address arg1, uint256 arg2), 0x1a731b2299e22fbac282e709, 0, -1, 0) << 512), 
    if not ext_call.success:
        revert with 0, 
                    32,
                    41,
                    0xfe6c6f772d6c6576656c2063616c6c206f662066756e6374696f6e2065786563757465206661696c65,
                    mem[ceil32(return_data.size) + 306 len 23]
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
