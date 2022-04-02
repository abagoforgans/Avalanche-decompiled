contract main {




// =====================  Runtime code  =====================


address owner;
array of struct pool;
mapping of uint256 stor3;
mapping of uint256 sub_ca9011ae;
address sub_92b2efbdAddress;
address treasuryVesterAddress;
address sub_27568f3bAddress;
address sub_7752020bAddress;
uint256 numPools;
uint256 sub_9ea2aa9a;

function getPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= pool.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return pool[arg1].field_0
}

function treasuryVester() payable {
    return treasuryVesterAddress
}

function sub_27568f3b(?) payable {
    return sub_27568f3bAddress
}

function numPools() payable {
    return numPools
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function sub_7752020b(?) payable {
    return sub_7752020bAddress
}

function owner() payable {
    return owner
}

function sub_92b2efbd(?) payable {
    return sub_92b2efbdAddress
}

function sub_9ea2aa9a(?) payable {
    return sub_9ea2aa9a
}

function sub_ca9011ae(?) payable {
    require calldata.size - 4 >= 32
    return sub_ca9011ae[arg1]
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

function sub_d5525c80(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7752020bAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateWeight(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x4e4c6971756964697479506f6f6c4d616e616765723a3a7570646174655765696768743a20506f6f6c206e6f742077686974656c69737465,
                    mem[220 len 8]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x734c6971756964697479506f6f6c4d616e616765723a3a7570646174655765696768743a20416d6f756e74206d75737420626520626967676572207468616e20
    sub_ca9011ae[address(arg1)] = arg2
}

function removeWhitelistedPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x534c6971756964697479506f6f6c4d616e616765723a3a72656d6f766557686974656c6973746564506f6f6c3a20506f6f6c206e6f742077686974656c69737465,
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
    sub_ca9011ae[address(arg1)] = 0
    if 1 > numPools:
        revert with 0, 'SafeMath: subtraction overflow'
    numPools--
}

function distributeTokens() payable {
    if sub_7752020bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x4c4c6971756964697479506f6f6c4d616e616765723a3a64697374726962757465546f6b656e733a20636861726765722063616e2063616c6c2074686973,
                    mem[226 len 2]
    if var27002 < pool.length:
        if var33001 >= pool.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        require var35002 < pool.length
        if var43001 + var43002 < var43002:
            revert with 0, 'SafeMath: addition overflow'
        # nil
    else:
        if var27004 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require var27004
        if var44002 >= pool.length:
            sub_9ea2aa9a = 0
        if var50001 >= pool.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        require var52002 < pool.length
        if not var60002:
            # nil
        else:
            require var70003
            # nil
}

function vestAllocation() payable {
    if sub_9ea2aa9a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    86,
                    0x534c6971756964697479506f6f6c4d616e616765723a3a76657374416c6c6f636174696f6e3a204f6c6420434e5220697320756e616c6c6f63617465642e2043616c6c2064697374726962757465546f6b656e732829,
                    mem[250 len 10]
    if sub_7752020bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x644c6971756964697479506f6f6c4d616e616765723a3a76657374416c6c6f636174696f6e3a20636861726765722063616e2063616c6c2074686973,
                    mem[224 len 4]
    require ext_code.size(treasuryVesterAddress)
    call treasuryVesterAddress.claim() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_9ea2aa9a = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x6f4c6971756964697479506f6f6c4d616e616765723a3a76657374416c6c6f636174696f6e3a204e6f20434e5220746f20636c61696d2e20547279206166746572203120686f75,
                    mem[235 len 25]
    require ext_code.size(sub_27568f3bAddress)
    staticcall sub_27568f3bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_9ea2aa9a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x734c6971756964697479506f6f6c4d616e616765723a3a76657374416c6c6f636174696f6e3a20496e73756666696369656e7420434e52207472616e736665727265,
                    mem[230 len 30]
    sub_9ea2aa9a = ext_call.return_data[0]
}

function sub_a454dcc4(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    87,
                    0x6f4c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c69737465645374616b65506f6f6c3a207374616b65436f6e74726163742063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[251 len 9]
    if stor3[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    80,
                    0x734c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c69737465645374616b65506f6f6c3a207374616b65436f6e747261637420616c72656164792077686974656c69737465,
                    mem[244 len 16]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    74,
                    0x644c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c69737465645374616b65506f6f6c3a207265776172645765696768742063616e6e6f74206265207a6572,
                    mem[238 len 22]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x774c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c69737465645374616b65506f6f6c3a205a45524f5f414444524553,
                    mem[223 len 5]
    require ext_code.size(arg2)
    staticcall arg2.0x72f702f3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x534c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c69737465645374616b65506f6f6c3a205354414b45414444525f4e4f545f45515541,
                    mem[230 len 30]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x304c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c69737465645374616b65506f6f6c3a20746f6b656e5f4e4f545f415f544f4b45
    if not stor3[address(arg2)]:
        pool.length++
        pool[pool.length].field_0 = arg2
        pool[pool.length].field_160 = 0
        stor3[address(arg2)] = pool.length
    sub_ca9011ae[address(arg2)] = arg3
    if numPools + 1 < numPools:
        revert with 0, 'SafeMath: addition overflow'
    numPools++
}

function distributeTokensSinglePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_7752020bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x724c6971756964697479506f6f6c4d616e616765723a3a64697374726962757465546f6b656e7353696e676c65506f6f6c3a20636861726765722063616e2063616c6c2074686973,
                    mem[236 len 24]
    if arg1 >= numPools:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x534c6971756964697479506f6f6c4d616e616765723a3a64697374726962757465546f6b656e7353696e676c65506f6f6c3a20496e646578206f7574206f6620626f756e64,
                    mem[233 len 27]
    if var29002 < pool.length:
        if var35001 >= pool.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        require var37002 < pool.length
        if var45001 + var45002 < var45002:
            revert with 0, 'SafeMath: addition overflow'
        # nil
    else:
        if var29004 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require var29004
        if arg1 >= pool.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        if sub_ca9011ae[stor2[arg1].field_0]:
            if sub_9ea2aa9a / var29004 * sub_ca9011ae[stor2[arg1].field_0] / sub_ca9011ae[stor2[arg1].field_0] != sub_9ea2aa9a / var29004:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_9ea2aa9a / var29004 * sub_ca9011ae[stor2[arg1].field_0]:
                require ext_code.size(sub_27568f3bAddress)
                call sub_27568f3bAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args pool[arg1].field_0, sub_9ea2aa9a / var29004 * sub_ca9011ae[stor2[arg1].field_0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                55,
                                0x2e4c6971756964697479506f6f6c4d616e616765723a3a64697374726962757465546f6b656e733a205472616e73666572206661696c65,
                                mem[219 len 9]
                require ext_code.size(pool[arg1].field_0)
                call pool[arg1].field_0.notifyRewardAmount(uint256 rg1) with:
                     gas gas_remaining wei
                    args (sub_9ea2aa9a / var29004 * sub_ca9011ae[stor2[arg1].field_0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_4287aa1e(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    82,
                    0x734c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c6973746564506f6f6c3a207374616b65436f6e74726163742063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[246 len 14]
    if stor3[address(arg3)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    75,
                    0x644c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c6973746564506f6f6c3a207374616b65436f6e747261637420616c72656164792077686974656c69737465,
                    mem[239 len 21]
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x644c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c6973746564506f6f6c3a207265776172645765696768742063616e6e6f74206265207a6572,
                    mem[233 len 27]
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x2e4c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c6973746564506f6f6c3a204944454e544943414c5f4144445245535345,
                    mem[225 len 3]
    if arg1 < arg2:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x2e4c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c6973746564506f6f6c3a205a45524f5f414444524553,
                        mem[218 len 10]
        require ext_code.size(arg3)
        staticcall arg3.0x72f702f3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_92b2efbdAddress)
        staticcall sub_92b2efbdAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
    else:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x2e4c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c6973746564506f6f6c3a205a45524f5f414444524553,
                        mem[218 len 10]
        require ext_code.size(arg3)
        staticcall arg3.0x72f702f3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_92b2efbdAddress)
        staticcall sub_92b2efbdAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x644c6971756964697479506f6f6c4d616e616765723a3a61646457686974656c6973746564506f6f6c3a20504149525f444f45534e545f4558495354,
                    mem[224 len 4]
    if not stor3[address(arg3)]:
        pool.length++
        pool[pool.length].field_0 = arg3
        pool[pool.length].field_160 = 0
        stor3[address(arg3)] = pool.length
    sub_ca9011ae[address(arg3)] = arg4
    if numPools + 1 < numPools:
        revert with 0, 'SafeMath: addition overflow'
    numPools++
}



}
