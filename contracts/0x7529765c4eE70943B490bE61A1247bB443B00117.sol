contract main {




// =====================  Runtime code  =====================


const isPriceOracle = 1


address owner;
mapping of address sub_2ae3c348;
mapping of uint8 sub_561b8313;
mapping of uint8 sub_09f8110e;

function sub_09f8110e(?) payable {
    require calldata.size - 4 >= 32
    return sub_09f8110e[arg1]
}

function sub_2ae3c348(?) payable {
    require calldata.size - 4 >= 32
    return sub_2ae3c348[arg1]
}

function sub_43a75671(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_2ae3c348[address(arg1)])
}

function sub_561b8313(?) payable {
    require calldata.size - 4 >= 32
    return sub_561b8313[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_33f0ddc3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_2ae3c348[address(arg1)])
    staticcall sub_2ae3c348[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[32]
}

function sub_93329b52(?) payable {
    require calldata.size - 4 >= 32
    if not sub_2ae3c348[address(arg1)]:
        return 0
    require ext_code.size(sub_2ae3c348[address(arg1)])
    staticcall sub_2ae3c348[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[96]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x314f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getUnderlyingPriceUpdateTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_2ae3c348[ext_call.return_data[12 len 20]]:
        return 0
    require ext_code.size(sub_2ae3c348[address(ext_call.return_data[0])])
    staticcall sub_2ae3c348[address(ext_call.return_data[0])].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[96]
}

function sub_eeb269fe(?) payable {
    require calldata.size - 4 >= 32
    if not sub_2ae3c348[address(arg1)]:
        return 0
    require ext_code.size(sub_2ae3c348[address(arg1)])
    staticcall sub_2ae3c348[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if 8 == sub_561b8313[address(arg1)]:
        if 10000000000 * 10^18 * ext_call.return_data[32] / 10000000000 * 10^18 != ext_call.return_data[32]:
            revert with 0, 'multiplication overflow'
        if 10^sub_09f8110e[address(arg1)]:
            return (10000000000 * 10^18 * ext_call.return_data[32] / 10^sub_09f8110e[address(arg1)])
    else:
        if sub_561b8313[address(arg1)] != 18:
            return 0
        if 10^18 * ext_call.return_data[32] / 10^18 != ext_call.return_data[32]:
            revert with 0, 'multiplication overflow'
        if 10^sub_09f8110e[address(arg1)]:
            return (10^18 * ext_call.return_data[32] / 10^sub_09f8110e[address(arg1)])
    ('iszero', ('exp', 10, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_09f8110e', 3)))))
    revert
}

function sub_388a9347(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    if sub_2ae3c348[address(arg1)]:
        revert with 0, 'Cannot reassign feed'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if sub_2ae3c348[address(arg1)] != arg2:
            sub_2ae3c348[address(arg1)] = arg2
            sub_561b8313[address(arg1)] = arg3
            sub_09f8110e[address(arg1)] = 18
            emit 0x33232b70: sub_2ae3c348[address(arg1)], arg2, arg1
            emit 0x49a47c0f: sub_561b8313[address(arg1)], arg3, arg1
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_2ae3c348[address(arg1)] != arg2:
            sub_2ae3c348[address(arg1)] = arg2
            sub_561b8313[address(arg1)] = arg3
            sub_09f8110e[address(arg1)] = uint8(ext_call.return_data[0])
            emit 0x33232b70: sub_2ae3c348[address(arg1)], arg2, arg1
            emit 0x49a47c0f: sub_561b8313[address(arg1)], arg3, arg1
}

function getAssetPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_2ae3c348[address(arg1)]:
        return 0
    require ext_code.size(sub_2ae3c348[address(arg1)])
    staticcall sub_2ae3c348[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if 8 == sub_561b8313[address(arg1)]:
        if 10000000000 * 10^18 * ext_call.return_data[32] / 10000000000 * 10^18 != ext_call.return_data[32]:
            revert with 0, 'multiplication overflow'
        if 10^sub_09f8110e[address(arg1)]:
            return (10000000000 * 10^18 * ext_call.return_data[32] / 10^sub_09f8110e[address(arg1)])
    else:
        if sub_561b8313[address(arg1)] != 18:
            return 0
        if 10^18 * ext_call.return_data[32] / 10^18 != ext_call.return_data[32]:
            revert with 0, 'multiplication overflow'
        if 10^sub_09f8110e[address(arg1)]:
            return (10^18 * ext_call.return_data[32] / 10^sub_09f8110e[address(arg1)])
    ('iszero', ('exp', 10, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_09f8110e', 3)))))
    revert
}

function getUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_2ae3c348[ext_call.return_data[12 len 20]]:
        return 0
    require ext_code.size(sub_2ae3c348[address(ext_call.return_data[0])])
    staticcall sub_2ae3c348[address(ext_call.return_data[0])].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if 8 == sub_561b8313[address(ext_call.return_data[0])]:
        if 10000000000 * 10^18 * ext_call.return_data[32] / 10000000000 * 10^18 != ext_call.return_data[32]:
            revert with 0, 'multiplication overflow'
        if 10^sub_09f8110e[address(ext_call.return_data[0])]:
            return (10000000000 * 10^18 * ext_call.return_data[32] / 10^sub_09f8110e[address(ext_call.return_data[0])])
    else:
        if sub_561b8313[address(ext_call.return_data[0])] != 18:
            return 0
        if 10^18 * ext_call.return_data[32] / 10^18 != ext_call.return_data[32]:
            revert with 0, 'multiplication overflow'
        if 10^sub_09f8110e[address(ext_call.return_data[0])]:
            return (10^18 * ext_call.return_data[32] / 10^sub_09f8110e[address(ext_call.return_data[0])])
    ('iszero', ('exp', 10, ('stor', ('map', ('mask_shl', 160, 0, 0, ('ext_call.return_data', 0, 32)), ('name', 'sub_09f8110e', 3)))))
    revert
}

function sub_d4bf4ccc(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe756e6465726c79696e677320616e6420636861696e6c696e6b46656564732073686f756c6420626520313a,
                    mem[208 len 20]
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x73756e6465726c79696e677320616e642070726963654665656473446563696d616c732073686f756c6420626520313a,
                    mem[212 len 16]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        if sub_2ae3c348[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'Cannot reassign feed'
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx) + cd[4] + 36)]):
            if sub_2ae3c348[address(cd[((32 * idx) + cd[4] + 36)])] != address(cd[((32 * idx) + cd[36] + 36)]):
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                sub_2ae3c348[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
                sub_561b8313[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(cd[((32 * idx) + cd[68] + 36)])
                mem[32] = 3
                sub_09f8110e[address(cd[((32 * idx) + cd[4] + 36)])] = 18
                emit 0x33232b70: sub_2ae3c348[address(cd[((32 * idx) + cd[4] + 36)])], address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[4] + 36)])
                mem[96] = sub_561b8313[address(cd[((32 * idx) + cd[4] + 36)])]
                mem[128] = uint8(cd[((32 * idx) + cd[68] + 36)])
                emit 0x49a47c0f: sub_561b8313[address(cd[((32 * idx) + cd[4] + 36)])], uint8(cd[((32 * idx) + cd[68] + 36)]), address(cd[((32 * idx) + cd[4] + 36)])
        else:
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_2ae3c348[address(cd[((32 * idx) + cd[4] + 36)])] != address(cd[((32 * idx) + cd[36] + 36)]):
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                sub_2ae3c348[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
                sub_561b8313[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(cd[((32 * idx) + cd[68] + 36)])
                mem[32] = 3
                sub_09f8110e[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(ext_call.return_data[0])
                emit 0x33232b70: sub_2ae3c348[address(cd[((32 * idx) + cd[4] + 36)])], address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[4] + 36)])
                mem[96] = sub_561b8313[address(cd[((32 * idx) + cd[4] + 36)])]
                mem[128] = uint8(cd[((32 * idx) + cd[68] + 36)])
                emit 0x49a47c0f: sub_561b8313[address(cd[((32 * idx) + cd[4] + 36)])], uint8(cd[((32 * idx) + cd[68] + 36)]), address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}



}
