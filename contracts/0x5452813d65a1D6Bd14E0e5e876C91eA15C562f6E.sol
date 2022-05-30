contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor4;

function _fallback() payable {
    revert
}

function sub_6c716898(?) {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function myFlashLoanCall(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[580 len 0] = None
    mem[644 len 0] = None
    mem[708 len 0] = None
    require ext_code.size(stor1)
    call stor1.flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
         gas gas_remaining wei
        args address(this.address), 224, 288, 352, address(this.address), 416, 0, 1, mem[580], 1, mem[644], 1, mem[708], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawDAI() {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args 0x8c62b2235a5d4b0c1e730e8639b2216bed852f66, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d71843b8(?) {
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args 0x8c62b2235a5d4b0c1e730e8639b2216bed852f66, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor4)
        staticcall stor4.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if ext_code.size(stor4) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), 0x4456b87af11e87e329ab7d7c, 0, ext_call.return_data[0 len 28]
    call stor4.0xac2168b9 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), 0x4456b87af11e87e329ab7d7c, 0, ext_call.return_data[0]
        if not approve(address arg1, uint256 arg2), 0x4456b87af11e87e329ab7d7c:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        idx = 0
        while idx < arg1.length:
            require idx < arg3.length
            require idx < arg2.length
            if cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)] < cd[((32 * idx) + arg2 + 36)]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg1.length
            mem[264] = stor1
            mem[296] = cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
            mem[260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        idx = 0
        while idx < arg1.length:
            require idx < arg3.length
            require idx < arg2.length
            if cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)] < cd[((32 * idx) + arg2 + 36)]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg1.length
            mem[ceil32(return_data.size) + 265] = stor1
            mem[ceil32(return_data.size) + 297] = cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    return 1
}



}
