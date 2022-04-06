contract main {




// =====================  Runtime code  =====================


uint16 stor0; offset 160
address stor0;
address feeToSetterAddress;
array of struct poolsLength;
mapping of address sub_3d82497e;
array of address allPools;

function feeToSetter() payable {
    return feeToSetterAddress
}

function sub_3d82497e(?) payable {
    require calldata.size - 4 >= 64
    return sub_3d82497e[arg1][arg2]
}

function allPools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPools.length
    return allPools[arg1]
}

function getPoolsLength(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return poolsLength[address(arg1)][address(arg2)].field_0
}

function sub_65da9289(?) payable {
    require calldata.size - 4 >= 96
    if arg3 >= poolsLength[address(arg1)][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[23976 len 34], mem[198 len 30]
    return poolsLength[address(arg1)][address(arg2)][arg3].field_0
}

function sub_eb787f61(?) payable {
    require calldata.size - 4 >= 96
    return bool(poolsLength[address(arg1)][address(arg2)][1][address(arg3)].field_0)
}

function allPoolsLength() payable {
    return allPools.length
}

function _fallback() payable {
    revert
}

function getFeeConfiguration() payable {
    return address(stor0.field_0), uint16(stor0.field_160)
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'DMM: FORBIDDEN'
    feeToSetterAddress = arg1
    emit SetFeeToSetter(arg1);
}

function setFeeConfiguration(address arg1, uint16 arg2) payable {
    require calldata.size - 4 >= 64
    if feeToSetterAddress != msg.sender:
        revert with 0, 'DMM: FORBIDDEN'
    if arg2 <= 0:
        revert with 0, 'DMM: INVALID FEE'
    if arg2 >= 2000:
        revert with 0, 'DMM: INVALID FEE'
    address(stor0.field_0) = arg1
    uint16(stor0.field_160) = arg2
    emit SetFeeConfiguration(address(arg1), arg2);
}

function getPools(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require poolsLength[address(arg1)][address(arg2)].field_0 <= test266151307()
    if poolsLength[address(arg1)][address(arg2)].field_0:
        mem[128 len 32 * poolsLength[address(arg1)][address(arg2)].field_0] = call.data[calldata.size len 32 * poolsLength[address(arg1)][address(arg2)].field_0]
    idx = 0
    while idx < poolsLength[address(arg1)][address(arg2)].field_0:
        mem[32] = sha3(address(arg1), 2)
        if idx >= poolsLength[address(arg1)][address(arg2)].field_0:
            revert with 0, 32, 34, code.data[23976 len 34], mem[(32 * poolsLength[address(arg1)][address(arg2)].field_0) + 230 len 30]
        mem[0] = sha3(address(arg2), sha3(address(arg1), 2))
        require idx < poolsLength[address(arg1)][address(arg2)].field_0
        mem[(32 * idx) + 128] = poolsLength[address(arg1)][address(arg2)][idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * poolsLength[address(arg1)][address(arg2)].field_0) + 192 len floor32(poolsLength[address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(poolsLength[address(arg1)][address(arg2)].field_0)]
    return Array(len=poolsLength[address(arg1)][address(arg2)].field_0, data=mem[128 len floor32(poolsLength[address(arg1)][address(arg2)].field_0)], mem[(32 * poolsLength[address(arg1)][address(arg2)].field_0) + floor32(poolsLength[address(arg1)][address(arg2)].field_0) + 192 len (32 * poolsLength[address(arg1)][address(arg2)].field_0) - floor32(poolsLength[address(arg1)][address(arg2)].field_0)]), 
}

function sub_8fd64840(?) payable {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        revert with 0, 'DMM: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'DMM: ZERO_ADDRESS'
        if arg3 < 10000:
            revert with 0, 'DMM: INVALID_BPS'
        if arg3 == 10000:
            if sub_3d82497e[address(arg1)][address(arg2)]:
                revert with 0, 'DMM: UNAMPLIFIED_POOL_EXISTS'
        create contract with 0 wei
                        code: code.data[4144 len 19832]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address rg1, address rg2, uint32 rg3) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not poolsLength[address(arg1)][address(arg2)][1][address(create.new_address)].field_0:
            poolsLength[address(arg1)][address(arg2)].field_0++
            poolsLength[address(arg1)][address(arg2)][poolsLength[address(arg1)][address(arg2)].field_0].field_0 = address(create.new_address)
            poolsLength[address(arg1)][address(arg2)][poolsLength[address(arg1)][address(arg2)].field_0].field_160 = 0
            poolsLength[address(arg1)][address(arg2)][1][address(create.new_address)].field_0 = poolsLength[address(arg1)][address(arg2)].field_0
        if not poolsLength[address(arg2)][address(arg1)][1][address(create.new_address)].field_0:
            poolsLength[address(arg2)][address(arg1)].field_0++
            poolsLength[address(arg2)][address(arg1)][poolsLength[address(arg2)][address(arg1)].field_0].field_0 = address(create.new_address)
            poolsLength[address(arg2)][address(arg1)][poolsLength[address(arg2)][address(arg1)].field_0].field_160 = 0
            poolsLength[address(arg2)][address(arg1)][1][address(create.new_address)].field_0 = poolsLength[address(arg2)][address(arg1)].field_0
        if arg3 == 10000:
            sub_3d82497e[address(arg1)][address(arg2)] = address(create.new_address)
            sub_3d82497e[address(arg2)][address(arg1)] = address(create.new_address)
        allPools.length++
        allPools[allPools.length] = address(create.new_address)
        emit 0xfc574402: address(create.new_address), arg3 << 224, allPools.length, arg1, arg2
    else:
        if not arg2:
            revert with 0, 'DMM: ZERO_ADDRESS'
        if arg3 < 10000:
            revert with 0, 'DMM: INVALID_BPS'
        if arg3 == 10000:
            if sub_3d82497e[address(arg2)][address(arg1)]:
                revert with 0, 'DMM: UNAMPLIFIED_POOL_EXISTS'
        create contract with 0 wei
                        code: code.data[4144 len 19832]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address rg1, address rg2, uint32 rg3) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not poolsLength[address(arg2)][address(arg1)][1][address(create.new_address)].field_0:
            poolsLength[address(arg2)][address(arg1)].field_0++
            poolsLength[address(arg2)][address(arg1)][poolsLength[address(arg2)][address(arg1)].field_0].field_0 = address(create.new_address)
            poolsLength[address(arg2)][address(arg1)][poolsLength[address(arg2)][address(arg1)].field_0].field_160 = 0
            poolsLength[address(arg2)][address(arg1)][1][address(create.new_address)].field_0 = poolsLength[address(arg2)][address(arg1)].field_0
        if not poolsLength[address(arg1)][address(arg2)][1][address(create.new_address)].field_0:
            poolsLength[address(arg1)][address(arg2)].field_0++
            poolsLength[address(arg1)][address(arg2)][poolsLength[address(arg1)][address(arg2)].field_0].field_0 = address(create.new_address)
            poolsLength[address(arg1)][address(arg2)][poolsLength[address(arg1)][address(arg2)].field_0].field_160 = 0
            poolsLength[address(arg1)][address(arg2)][1][address(create.new_address)].field_0 = poolsLength[address(arg1)][address(arg2)].field_0
        if arg3 == 10000:
            sub_3d82497e[address(arg2)][address(arg1)] = address(create.new_address)
            sub_3d82497e[address(arg1)][address(arg2)] = address(create.new_address)
        allPools.length++
        allPools[allPools.length] = address(create.new_address)
        emit 0xfc574402: address(create.new_address), arg3 << 224, allPools.length, arg2, arg1
    return address(create.new_address)
}



}
