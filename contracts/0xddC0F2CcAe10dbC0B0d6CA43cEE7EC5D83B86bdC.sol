contract main {




// =====================  Runtime code  =====================


const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const USDT = 0xde3a24028580884448a5397872046a019649b084

const DAI = 0xba7deebbfc5fa1100fb055a87773e1e99cd3507a


function _fallback() payable {
    revert
}

function sub_acfb4272(?) payable {
    require calldata.size - 4 >= 96
    revert with 0, 'not implemented'
}

function claimReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.0xe2bbb158 with:
         gas gas_remaining wei
        args arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.0x441a3e70 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lockableToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[12 len 20]
}

function lockedAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.0x93f1a40b with:
            gas gas_remaining wei
           args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function deposit(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x79b846fd with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0xd6a4f121ca35509af06a0be99093d08462f53052
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, Mask(224, 32, arg3 + ext_call.return_data[0]) >> 32
    mem[324 len 0] = 0
    call address(ext_call.return_data[0]).0x62f53052 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3 + ext_call.return_data[0]) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9, 0, arg3 + ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), 0xd6a4f121ca35509af06a0be9:
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
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.0xe2bbb158 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
