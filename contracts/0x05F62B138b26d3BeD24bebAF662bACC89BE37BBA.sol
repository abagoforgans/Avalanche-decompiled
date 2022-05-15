contract main {




// =====================  Runtime code  =====================


address owner;
address tradingAddress;
address oracleAddress;
address sub_6cdc51acAddress;
address treasuryAddress;
address sub_8c6909f7Address;
array of address currencies;
mapping of uint8 stor7;
mapping of address pool;
mapping of uint256 poolShare;
mapping of uint256 sub_39b8dfd3;
mapping of address poolRewards;
mapping of address sub_4d1cc0d3;

function sub_39b8dfd3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_39b8dfd3[address(arg1)]
}

function sub_39fadb91(?) payable {
    return currencies.length
}

function sub_4d1cc0d3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4d1cc0d3[address(arg1)]
}

function treasury() payable {
    return treasuryAddress
}

function sub_6cdc51ac(?) payable {
    return sub_6cdc51acAddress
}

function oracle() payable {
    return oracleAddress
}

function sub_8c6909f7(?) payable {
    return sub_8c6909f7Address
}

function owner() payable {
    return owner
}

function getPoolRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return poolRewards[address(arg1)]
}

function getPoolShare(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return poolShare[address(arg1)]
}

function getPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pool[address(arg1)]
}

function trading() payable {
    return tradingAddress
}

function currencies(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < currencies.length
    return address(currencies[arg1])
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
}

function sub_fca8d471(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        return bool(address(arg1))
    return bool(pool[address(arg1)])
}

function sub_69d40429(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_39b8dfd3[address(arg1)] = arg2
}

function setPoolShare(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    poolShare[address(arg1)] = arg2
}

function setPool(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!owner'
    pool[address(arg1)] = arg2
}

function sub_f2259f96(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, '!owner'
    stor7[address(arg1)] = uint8(arg2)
}

function sub_8c7610e6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, '!owner'
    poolRewards[address(arg1)] = address(arg2)
}

function sub_d8c0f147(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_4d1cc0d3[address(arg1)] = address(arg2)
}

function setContracts(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, '!owner'
    treasuryAddress = arg1
    tradingAddress = arg2
    sub_6cdc51acAddress = arg3
    oracleAddress = arg4
    sub_8c6909f7Address = arg5
}

function getDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return 18
    if stor7[address(arg1)]:
        return stor7[address(arg1)]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] <= 0:
        return 18
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function sub_8d34f97f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!owner'
    currencies.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while currencies.length > idx:
            uint256(currencies[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(currencies[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while currencies.length > idx:
            uint256(currencies[idx]) = 0
            idx = idx + 1
            continue 
}



}
