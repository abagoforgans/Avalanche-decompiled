contract main {




// =====================  Runtime code  =====================


#
#  - sub_7b15d623(?)
#
const defaultToken = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const rewardTokenCount = 1


array of address pool;

function poolAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pool.length
    return pool[arg1]
}

function poolCount() payable {
    return pool.length
}

function _fallback() payable {
    revert
}

function sub_1da8f368(?) payable {
    require calldata.size - 4 >= 160
    revert with 0, 'not implemented'
}

function sub_9b17ec50(?) payable {
    require calldata.size - 4 >= 160
    revert with 0, 'not implemented'
}

function rewardToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0x60781c2586d68229fde47564546784ab3faca982
}

function sub_92e75309(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    revert with 0, 'not implemented'
}

function sub_d8facbe5(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    revert with 0, 'not implemented'
}

function sub_dc827aad(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    revert with 0, 'not implemented'
}

function lockableToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pool.length
    require ext_code.size(pool[arg1])
    staticcall pool[arg1].stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function lockedAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < pool.length
    require ext_code.size(pool[arg2])
    staticcall pool[arg2].0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_90c90f3d(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.0xda9da526 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).earned(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4ce6a236(?) payable {
    require calldata.size - 4 >= 160
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(this.address)
    call this.address.0x7b15d623 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_144ba61d(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(this.address)
    call this.address.0xdc827aad with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), arg3, arg4, arg5, address(arg6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
