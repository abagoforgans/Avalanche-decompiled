contract main {




// =====================  Runtime code  =====================


mapping of struct locks;

function locks(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return locks[arg1][arg2].field_0, locks[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function lockLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not locks[address(arg1)][address(arg2)].field_256:
        if arg4 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        locks[address(arg1)][address(arg2)].field_256 = arg4 + block.timestamp
    if arg3 + locks[address(arg1)][address(arg2)].field_0 < locks[address(arg1)][address(arg2)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    locks[address(arg1)][address(arg2)].field_0 += arg3
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
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
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
}

function releaseLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    if not locks[address(arg1)][msg.sender].field_256:
        revert with 0, 
                    32,
                    49,
                    0xfe456d70697265457363726f773a3a72656c656173654c69717569646974793a20496e73756666696369656e742054696d,
                    mem[341 len 15]
    if locks[address(arg1)][msg.sender].field_256 > block.timestamp:
        revert with 0, 
                    32,
                    49,
                    0xfe456d70697265457363726f773a3a72656c656173654c69717569646974793a20496e73756666696369656e742054696d,
                    mem[341 len 15]
    locks[address(arg1)][msg.sender].field_0 = 0
    locks[address(arg1)][msg.sender].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[388 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, locks[address(arg1)][msg.sender].field_32
    call arg1 with:
         gas gas_remaining wei
        args locks[address(arg1)][msg.sender].field_0, mem[452 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
    require ext_code.size(arg1)
    call arg1.burn(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}



}
