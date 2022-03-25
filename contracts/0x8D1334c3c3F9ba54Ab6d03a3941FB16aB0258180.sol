contract main {




// =====================  Runtime code  =====================


address owner;
array of struct pool;
mapping of uint256 stor3;
mapping of uint256 rewardAmount;
address treasuryVesterAddress;
address sub_94a4036bAddress;
uint256 numPools;

function getPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= pool.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return address(pool[arg1].field_0)
}

function treasuryVester() payable {
    return treasuryVesterAddress
}

function numPools() payable {
    return numPools
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function rewardAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewardAmount[arg1]
}

function owner() payable {
    return owner
}

function sub_94a4036b(?) payable {
    return sub_94a4036bAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function vestAllocation() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(treasuryVesterAddress)
    call treasuryVesterAddress.claim() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2dbe8cf4(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x644c6971756964697479506f6f6c4d616e616765723a3a757064617465416d6f756e743a20506f6f6c206e6f742077686974656c69737465,
                    mem[220 len 8]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x734c6971756964697479506f6f6c4d616e616765723a3a757064617465416d6f756e743a20416d6f756e74206d75737420626520626967676572207468616e20
    rewardAmount[address(arg1)] = arg2
}

function removeWhitelistedPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x304c6971756964697479506f6f6c4d616e616765723a3a72656d6f766557686974656c6973746564506f6f6c3a20506f6f6c206e6f742077686974656c69737465,
                    mem[229 len 31]
    if stor3[address(arg1)]:
        require pool.length - 1 < pool.length
        require stor3[address(arg1)] - 1 < pool.length
        pool[stor3[address(arg1)]].field_0 = pool[pool.length].field_0
        stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        require pool.length
        pool[pool.length].field_0 = 0
        pool.length--
        stor3[address(arg1)] = 0
    rewardAmount[address(arg1)] = 0
    if 1 > numPools:
        revert with 0, 'SafeMath: subtraction overflow'
    numPools--
}

function addWhitelistedPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    82,
                    0x734c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c6973746564506f6f6c3a207374616b65436f6e74726163742063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[246 len 14]
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    75,
                    0x734c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c6973746564506f6f6c3a207374616b65436f6e747261637420616c72656164792077686974656c69737465,
                    mem[239 len 21]
    if not stor3[address(arg1)]:
        pool.length++
        address(pool[pool.length].field_0) = arg1
        Mask(96, 0, pool[pool.length].field_160) = 0
        stor3[address(arg1)] = pool.length
    rewardAmount[address(arg1)] = arg2
    if numPools + 1 < numPools:
        revert with 0, 'SafeMath: addition overflow'
    numPools++
}

function distributeTokensSinglePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= numPools:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x644c6971756964697479506f6f6c4d616e616765723a3a64697374726962757465546f6b656e7353696e676c65506f6f6c3a20496e646578206f7574206f6620626f756e64,
                    mem[233 len 27]
    if arg1 >= pool.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    if rewardAmount[address(stor2[arg1].field_0)]:
        require ext_code.size(sub_94a4036bAddress)
        call sub_94a4036bAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(pool[arg1].field_0), rewardAmount[address(stor2[arg1].field_0)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x734c6971756964697479506f6f6c4d616e616765723a3a64697374726962757465546f6b656e733a205472616e73666572206661696c65,
                        mem[219 len 9]
        require ext_code.size(address(pool[arg1].field_0))
        call address(pool[arg1].field_0).notifyRewardAmount(uint256 rg1) with:
             gas gas_remaining wei
            args rewardAmount[address(stor2[arg1].field_0)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function distributeTokens() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var36002 >= pool.length:
    if var42001 >= pool.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require var44002 < pool.length
    mem[0] = address(var50001)
    mem[32] = 4
    if not rewardAmount[address(var50001)]:
        idx = var50002
        s = stor[sha3(mem[0 len 64])]
        s = var50001
        while idx + 1 < pool.length:
            mem[0] = address(pool[idx].field_256)
            mem[32] = 4
            if rewardAmount[address(stor2[idx].field_256)]:
                mem[132] = rewardAmount[address(stor2[idx].field_256)]
                require ext_code.size(sub_94a4036bAddress)
                call sub_94a4036bAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(pool[idx].field_256), rewardAmount[address(stor2[idx].field_256)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                55,
                                0x734c6971756964697479506f6f6c4d616e616765723a3a64697374726962757465546f6b656e733a205472616e73666572206661696c65,
                                mem[219 len 9]
                mem[96] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                mem[100] = rewardAmount[address(stor2[idx].field_256)]
                require ext_code.size(address(pool[idx].field_256))
                call address(pool[idx].field_256).notifyRewardAmount(uint256 rg1) with:
                     gas gas_remaining wei
                    args rewardAmount[address(stor2[idx].field_256)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = rewardAmount[address(stor2[idx].field_256)]
            s = pool[idx].field_256
            continue 
    mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
    mem[100] = address(var52003)
    mem[132] = var52002
    require ext_code.size(sub_94a4036bAddress)
    call sub_94a4036bAddress.mem[var54004 len 4] with:
         gas gas_remaining wei
        args mem[var54004 + 4 len var54005 - 4]
    mem[var54006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not mem[var58002]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x734c6971756964697479506f6f6c4d616e616765723a3a64697374726962757465546f6b656e733a205472616e73666572206661696c65,
                    mem[219 len 9]
    mem[96] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
    mem[100] = var60002
    require ext_code.size(address(var60003))
    call var62002.mem[var62004 len 4] with:
         gas gas_remaining wei
        args mem[var62004 + 4 len var62005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}



}
