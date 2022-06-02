contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 rentPrices;
address usdOracleAddress;

function rentPrices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rentPrices.length
    return rentPrices[arg1]
}

function owner() payable {
    return owner
}

function usdOracle() payable {
    return usdOracleAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    usdOracleAddress = arg1
    emit OracleChanged(arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0xf3a7928300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_a34e3596(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require ext_code.size(usdOracleAddress)
    staticcall usdOracleAddress.0x50d25bcd with:
            gas gas_remaining wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] > 0
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        revert with 'NH{q', 18
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 0 / Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    return memory
      from ceil32(arg1.length) + ceil32(return_data.size) + 128
       len 32
}

function setPrices(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rentPrices.length = arg1.length
    if not arg1.length:
        idx = 0
        while rentPrices.length > idx:
            rentPrices[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            rentPrices[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while rentPrices.length > idx:
            rentPrices[idx] = 0
            idx = idx + 1
            continue 
    mem[ceil32(32 * arg1.length) + 97] = 32
    emit RentPriceChanged(Array(len=arg1.length, data=mem[128 len 32 * arg1.length]));
}

function price(string arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 'NH{q', 17
        if s == -1:
            revert with 'NH{q', 17
        idx = idx + 5
        s = s + 1
        continue 
    if s <= rentPrices.length:
        require s > 0
        if s < 1:
            revert with 'NH{q', 17
        if s - 1 >= rentPrices.length:
            revert with 'NH{q', 50
        if not rentPrices[s]:
            require ext_code.size(usdOracleAddress)
            staticcall usdOracleAddress.0x50d25bcd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            return (0 / ext_call.return_data[0])
        if rentPrices[s] and arg3 > -1 / rentPrices[s]:
            revert with 'NH{q', 17
        if not rentPrices[s]:
            revert with 'NH{q', 18
        require rentPrices[s] * arg3 / rentPrices[s] == arg3
        if rentPrices[s] * arg3 > -1:
            revert with 'NH{q', 17
        require rentPrices[s] * arg3 >= rentPrices[s] * arg3
        require ext_code.size(usdOracleAddress)
        staticcall usdOracleAddress.0x50d25bcd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not rentPrices[s] * arg3:
            require ext_call.return_data[0] > 0
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            return (0 / ext_call.return_data[0])
        if rentPrices[s] * arg3 and 100 * 10^6 > -1 / rentPrices[s] * arg3:
            revert with 'NH{q', 17
        if not rentPrices[s] * arg3:
            revert with 'NH{q', 18
        require 100 * 10^6 * rentPrices[s] * arg3 / rentPrices[s] * arg3 == 100 * 10^6
        require ext_call.return_data[0] > 0
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (100 * 10^6 * rentPrices[s] * arg3 / ext_call.return_data[0])
    require rentPrices.length > 0
    if rentPrices.length < 1:
        revert with 'NH{q', 17
    if rentPrices.length - 1 >= rentPrices.length:
        revert with 'NH{q', 50
    if not rentPrices[rentPrices.length]:
        require ext_code.size(usdOracleAddress)
        staticcall usdOracleAddress.0x50d25bcd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (0 / ext_call.return_data[0])
    if rentPrices[rentPrices.length] and arg3 > -1 / rentPrices[rentPrices.length]:
        revert with 'NH{q', 17
    if not rentPrices[rentPrices.length]:
        revert with 'NH{q', 18
    require rentPrices[rentPrices.length] * arg3 / rentPrices[rentPrices.length] == arg3
    if rentPrices[rentPrices.length] * arg3 > -1:
        revert with 'NH{q', 17
    require rentPrices[rentPrices.length] * arg3 >= rentPrices[rentPrices.length] * arg3
    require ext_code.size(usdOracleAddress)
    staticcall usdOracleAddress.0x50d25bcd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not rentPrices[rentPrices.length] * arg3:
        require ext_call.return_data[0] > 0
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (0 / ext_call.return_data[0])
    if rentPrices[rentPrices.length] * arg3 and 100 * 10^6 > -1 / rentPrices[rentPrices.length] * arg3:
        revert with 'NH{q', 17
    if not rentPrices[rentPrices.length] * arg3:
        revert with 'NH{q', 18
    require 100 * 10^6 * rentPrices[rentPrices.length] * arg3 / rentPrices[rentPrices.length] * arg3 == 100 * 10^6
    require ext_call.return_data[0] > 0
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * 10^6 * rentPrices[rentPrices.length] * arg3 / ext_call.return_data[0])
}



}
