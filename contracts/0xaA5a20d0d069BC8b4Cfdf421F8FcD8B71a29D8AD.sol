contract main {




// =====================  Runtime code  =====================


const MAX = -1


address memoriesAddress;
address tokenAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stakeAddress;
address stor3;
uint256 burnAmount;

function enabled() payable {
    return bool(uint8(stor2.field_160))
}

function Memories() payable {
    return memoriesAddress
}

function stake() payable {
    return stakeAddress
}

function burnAmount() payable {
    return burnAmount
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_ba4f377f(?) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0, 'only owner'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function sub_aed0b1e5(?) payable {
    if stor3 != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(memoriesAddress)
    call memoriesAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakeAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function burnTokens() payable {
    if stor3 != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] + burnAmount < burnAmount:
        revert with 0, 'SafeMath: addition overflow'
    burnAmount += ext_call.return_data[0]
}

function unstake(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor2.field_160):
        revert with 0, 'proxy disabled'
    if not ext_code.size(memoriesAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call memoriesAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(stakeAddress)
        call stakeAddress.0x9ebea88c with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg1:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if burnAmount < burnAmount:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 7 * arg1 / arg1 != 7:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args (7 * arg1 / 10)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (7 * arg1 / 10) + burnAmount < burnAmount:
                revert with 0, 'SafeMath: addition overflow'
            burnAmount += 7 * arg1 / 10
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(stakeAddress)
        call stakeAddress.0x9ebea88c with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg1:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if burnAmount < burnAmount:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 7 * arg1 / arg1 != 7:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args (7 * arg1 / 10)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (7 * arg1 / 10) + burnAmount < burnAmount:
                revert with 0, 'SafeMath: addition overflow'
            burnAmount += 7 * arg1 / 10
}



}
