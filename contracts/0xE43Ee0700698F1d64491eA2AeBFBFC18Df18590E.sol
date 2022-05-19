contract main {




// =====================  Runtime code  =====================


const isPriceOracle = 1


address adminAddress;
address wrappedAddress;
mapping of address aggregators;
mapping of struct priceRecords;
mapping of uint256 assetPrices;

function aggregators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return aggregators[arg1]
}

function wrapped() payable {
    return wrappedAddress
}

function assetPrices(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return assetPrices[arg1]
}

function priceRecords(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return priceRecords[arg1].field_0, 
           priceRecords[arg1].field_256,
           priceRecords[arg1].field_512,
           bool(priceRecords[arg1].field_672)
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin can set new admin'
    adminAddress = arg1
    emit NewAdmin(adminAddress, arg1);
}

function setDirectPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin can set direct price'
    emit 0xe2c8fb68: address(arg1), assetPrices[address(arg1)], arg2
    assetPrices[address(arg1)] = arg2
}

function setAggregators(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the aggregators'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        aggregators[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = address(cd[((32 * idx) + arg2 + 36)])
        emit AggregatorUpdated(address(cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * idx) + arg2 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getPriceFromOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not aggregators[address(arg1)]:
        return 0
    require ext_code.size(aggregators[address(arg1)])
    staticcall aggregators[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if 0 == ext_call.return_data[32]:
        return 0
    require ext_code.size(aggregators[address(arg1)])
    staticcall aggregators[address(arg1)].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 18:
        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return ext_call.return_data[32]
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18))
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
        revert with 0, 17
    return (ext_call.return_data[32] * s * t)
}

function getPriceFromChainlink(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not aggregators[address(arg1)]:
        return 0
    require ext_code.size(aggregators[address(arg1)])
    staticcall aggregators[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if 0 == ext_call.return_data[32]:
        return 0
    require ext_code.size(aggregators[address(arg1)])
    staticcall aggregators[address(arg1)].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 18:
        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return ext_call.return_data[32]
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18))
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
        revert with 0, 17
    return (ext_call.return_data[32] * s * t)
}

function setDexPriceInfo(address arg1, address arg2, address arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if adminAddress != msg.sender:
        revert with 0, 'only admin can set DEX price'
    if not aggregators[address(arg2)]:
        revert with 0, 'invalid base token'
    require ext_code.size(aggregators[address(arg2)])
    staticcall aggregators[address(arg2)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if 0 == ext_call.return_data[32]:
        revert with 0, 'invalid base token'
    require ext_code.size(aggregators[address(arg2)])
    staticcall aggregators[address(arg2)].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 18:
        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] <= 0:
            revert with 0, 'invalid base token'
    else:
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) <= 0:
                revert with 0, 'invalid base token'
        else:
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * s * t <= 0:
                revert with 0, 'invalid base token'
    priceRecords[address(arg1)].field_0 = arg1
    priceRecords[address(arg1)].field_256 = arg2
    priceRecords[address(arg1)].field_512 = arg3
    priceRecords[address(arg1)].field_672 = Mask(96, 0, arg4)
    emit PriceRecordUpdated(address(arg1), address(arg2), address(arg3), arg4);
}

function getPriceFromDex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not priceRecords[address(arg1)].field_672:
        return 0
    require ext_code.size(priceRecords[address(arg1)].field_0)
    staticcall priceRecords[address(arg1)].field_0.0x70a08231 with:
            gas gas_remaining wei
           args priceRecords[address(arg1)].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceRecords[address(arg1)].field_0)
    staticcall priceRecords[address(arg1)].field_0.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 18:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(priceRecords[address(arg1)].field_256)
        staticcall priceRecords[address(arg1)].field_256.0x70a08231 with:
                gas gas_remaining wei
               args priceRecords[address(arg1)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceRecords[address(arg1)].field_256)
        staticcall priceRecords[address(arg1)].field_256.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[address(arg1)].field_256]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (0 / ext_call.return_data[0])
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (0 / ext_call.return_data[0])
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0])
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] / ext_call.return_data[0])
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[32] * s * t:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[32] * s * t * ext_call.return_data[0] / ext_call.return_data[0])
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[address(arg1)].field_256]:
                if False and ext_call.return_data[0] * 10^(-ext_call.return_data[31 len 1] + 18) > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (0 / ext_call.return_data[0])
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (0 / ext_call.return_data[0])
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0])
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0])
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * s * t and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * s * t:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[32] * s * t * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0])
        s = 10
        t = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not aggregators[stor3[address(arg1)].field_256]:
            if False and ext_call.return_data[0] * s * t > 0:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (0 / ext_call.return_data[0])
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if 0 == ext_call.return_data[32]:
            if False and ext_call.return_data[0] * s * t > 0:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (0 / ext_call.return_data[0])
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[32] * ext_call.return_data[0] * s * t / ext_call.return_data[0])
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * s * t / ext_call.return_data[0])
        u = 10
        v = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * u * v and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * u * v:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (ext_call.return_data[32] * u * v * ext_call.return_data[0] * s * t / ext_call.return_data[0])
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(priceRecords[address(arg1)].field_256)
        staticcall priceRecords[address(arg1)].field_256.0x70a08231 with:
                gas gas_remaining wei
               args priceRecords[address(arg1)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceRecords[address(arg1)].field_256)
        staticcall priceRecords[address(arg1)].field_256.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[address(arg1)].field_256]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[32] * s * t:
                revert with 0, 17
            if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (ext_call.return_data[32] * s * t * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[address(arg1)].field_256]:
                if False and ext_call.return_data[0] * 10^(-ext_call.return_data[31 len 1] + 18) > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * s * t and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * s * t:
                revert with 0, 17
            if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (ext_call.return_data[32] * s * t * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
        s = 10
        t = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not aggregators[stor3[address(arg1)].field_256]:
            if False and ext_call.return_data[0] * s * t > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if 0 == ext_call.return_data[32]:
            if False and ext_call.return_data[0] * s * t > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (ext_call.return_data[32] * ext_call.return_data[0] * s * t / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                revert with 0, 17
            if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * s * t / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
        u = 10
        v = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * u * v and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * u * v:
            revert with 0, 17
        if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 18
        return (ext_call.return_data[32] * u * v * ext_call.return_data[0] * s * t / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(priceRecords[address(arg1)].field_256)
    staticcall priceRecords[address(arg1)].field_256.0x70a08231 with:
            gas gas_remaining wei
           args priceRecords[address(arg1)].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceRecords[address(arg1)].field_256)
    staticcall priceRecords[address(arg1)].field_256.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 18:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not aggregators[stor3[address(arg1)].field_256]:
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (0 / ext_call.return_data[0] * s * t)
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if 0 == ext_call.return_data[32]:
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (0 / ext_call.return_data[0] * s * t)
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * s * t)
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] / ext_call.return_data[0] * s * t)
        u = 10
        v = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * u * v and ext_call.return_data[0] > -1 / ext_call.return_data[32] * u * v:
            revert with 0, 17
        if not ext_call.return_data[0] * s * t:
            revert with 0, 18
        return (ext_call.return_data[32] * u * v * ext_call.return_data[0] / ext_call.return_data[0] * s * t)
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not aggregators[stor3[address(arg1)].field_256]:
            if False and ext_call.return_data[0] * 10^(-ext_call.return_data[31 len 1] + 18) > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (0 / ext_call.return_data[0] * s * t)
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if 0 == ext_call.return_data[32]:
            if False and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (0 / ext_call.return_data[0] * s * t)
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * s * t)
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * s * t)
        u = 10
        v = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * u * v and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * u * v:
            revert with 0, 17
        if not ext_call.return_data[0] * s * t:
            revert with 0, 18
        return (ext_call.return_data[32] * u * v * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * s * t)
    u = 10
    v = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if ext_call.return_data[0] and u * v > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not aggregators[stor3[address(arg1)].field_256]:
        if False and ext_call.return_data[0] * u * v > 0:
            revert with 0, 17
        if not ext_call.return_data[0] * s * t:
            revert with 0, 18
        return (0 / ext_call.return_data[0] * s * t)
    require ext_code.size(aggregators[stor3[address(arg1)].field_256])
    staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if 0 == ext_call.return_data[32]:
        if False and ext_call.return_data[0] * u * v > 0:
            revert with 0, 17
        if not ext_call.return_data[0] * s * t:
            revert with 0, 18
        return (0 / ext_call.return_data[0] * s * t)
    require ext_code.size(aggregators[stor3[address(arg1)].field_256])
    staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 18:
        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] and ext_call.return_data[0] * u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0] * s * t:
            revert with 0, 18
        return (ext_call.return_data[32] * ext_call.return_data[0] * u * v / ext_call.return_data[0] * s * t)
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * u * v > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
            revert with 0, 17
        if not ext_call.return_data[0] * s * t:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * u * v / ext_call.return_data[0] * s * t)
    w = 10
    x = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if w > -1 / w:
            revert with 0, 17
        if not bool(idx):
            w = w * w
            x = x
            idx = uint255(idx) * 0.5
            continue 
        w = w * w
        x = w * x
        idx = uint255(idx) * 0.5
        continue 
    if x > -1 / w:
        revert with 0, 17
    if ext_call.return_data[32] and w * x > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] * w * x and ext_call.return_data[0] * u * v > -1 / ext_call.return_data[32] * w * x:
        revert with 0, 17
    if not ext_call.return_data[0] * s * t:
        revert with 0, 18
    return (ext_call.return_data[32] * w * x * ext_call.return_data[0] * u * v / ext_call.return_data[0] * s * t)
}

function getTokenPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1:
        if assetPrices[address(arg1)]:
            return assetPrices[address(arg1)]
        if aggregators[address(arg1)]:
            require ext_code.size(aggregators[address(arg1)])
            staticcall aggregators[address(arg1)].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] != 0:
                require ext_code.size(aggregators[address(arg1)])
                staticcall aggregators[address(arg1)].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32]:
                        return ext_call.return_data[32]
                else:
                    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                        if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                            return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18))
                    else:
                        s = 10
                        t = 1
                        idx = -ext_call.return_data[31 len 1] + 18
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * s * t:
                            return (ext_call.return_data[32] * s * t)
        if not priceRecords[address(arg1)].field_672:
            return 0
        require ext_code.size(priceRecords[address(arg1)].field_0)
        staticcall priceRecords[address(arg1)].field_0.0x70a08231 with:
                gas gas_remaining wei
               args priceRecords[address(arg1)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceRecords[address(arg1)].field_0)
        staticcall priceRecords[address(arg1)].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(priceRecords[address(arg1)].field_256)
            staticcall priceRecords[address(arg1)].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args priceRecords[address(arg1)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(priceRecords[address(arg1)].field_256)
            staticcall priceRecords[address(arg1)].field_256.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not aggregators[stor3[address(arg1)].field_256]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (0 / ext_call.return_data[0])
                require ext_code.size(aggregators[stor3[address(arg1)].field_256])
                staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if 0 == ext_call.return_data[32]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (0 / ext_call.return_data[0])
                require ext_code.size(aggregators[stor3[address(arg1)].field_256])
                staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0])
                if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                    if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] / ext_call.return_data[0])
                s = 10
                t = 1
                idx = -ext_call.return_data[31 len 1] + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[32] * s * t:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * s * t * ext_call.return_data[0] / ext_call.return_data[0])
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not aggregators[stor3[address(arg1)].field_256]:
                    if False and ext_call.return_data[0] * 10^(-ext_call.return_data[31 len 1] + 18) > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (0 / ext_call.return_data[0])
                require ext_code.size(aggregators[stor3[address(arg1)].field_256])
                staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if 0 == ext_call.return_data[32]:
                    if False and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (0 / ext_call.return_data[0])
                require ext_code.size(aggregators[stor3[address(arg1)].field_256])
                staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0])
                if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                    if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0])
                s = 10
                t = 1
                idx = -ext_call.return_data[31 len 1] + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * s * t and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * s * t:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * s * t * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0])
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[address(arg1)].field_256]:
                if False and ext_call.return_data[0] * s * t > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (0 / ext_call.return_data[0])
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] * s * t > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (0 / ext_call.return_data[0])
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] * s * t / ext_call.return_data[0])
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * s * t / ext_call.return_data[0])
            u = 10
            v = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * u * v and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * u * v:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[32] * u * v * ext_call.return_data[0] * s * t / ext_call.return_data[0])
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(priceRecords[address(arg1)].field_256)
            staticcall priceRecords[address(arg1)].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args priceRecords[address(arg1)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(priceRecords[address(arg1)].field_256)
            staticcall priceRecords[address(arg1)].field_256.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not aggregators[stor3[address(arg1)].field_256]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                require ext_code.size(aggregators[stor3[address(arg1)].field_256])
                staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if 0 == ext_call.return_data[32]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                require ext_code.size(aggregators[stor3[address(arg1)].field_256])
                staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                    if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                s = 10
                t = 1
                idx = -ext_call.return_data[31 len 1] + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[32] * s * t:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * s * t * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not aggregators[stor3[address(arg1)].field_256]:
                    if False and ext_call.return_data[0] * 10^(-ext_call.return_data[31 len 1] + 18) > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                require ext_code.size(aggregators[stor3[address(arg1)].field_256])
                staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if 0 == ext_call.return_data[32]:
                    if False and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                require ext_code.size(aggregators[stor3[address(arg1)].field_256])
                staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (ext_call.return_data[32] * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                    if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                s = 10
                t = 1
                idx = -ext_call.return_data[31 len 1] + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * s * t and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * s * t:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * s * t * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[address(arg1)].field_256]:
                if False and ext_call.return_data[0] * s * t > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] * s * t > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] * s * t / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * s * t / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            u = 10
            v = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * u * v and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * u * v:
                revert with 0, 17
            if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (ext_call.return_data[32] * u * v * ext_call.return_data[0] * s * t / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
        s = 10
        t = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(priceRecords[address(arg1)].field_256)
        staticcall priceRecords[address(arg1)].field_256.0x70a08231 with:
                gas gas_remaining wei
               args priceRecords[address(arg1)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceRecords[address(arg1)].field_256)
        staticcall priceRecords[address(arg1)].field_256.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[address(arg1)].field_256]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * s * t)
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * s * t)
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * s * t)
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] / ext_call.return_data[0] * s * t)
            u = 10
            v = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * u * v and ext_call.return_data[0] > -1 / ext_call.return_data[32] * u * v:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * u * v * ext_call.return_data[0] / ext_call.return_data[0] * s * t)
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[address(arg1)].field_256]:
                if False and ext_call.return_data[0] * 10^(-ext_call.return_data[31 len 1] + 18) > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * s * t)
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * s * t)
            require ext_code.size(aggregators[stor3[address(arg1)].field_256])
            staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * s * t)
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * s * t)
            u = 10
            v = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * u * v and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * u * v:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * u * v * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * s * t)
        u = 10
        v = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[0] and u * v > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not aggregators[stor3[address(arg1)].field_256]:
            if False and ext_call.return_data[0] * u * v > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (0 / ext_call.return_data[0] * s * t)
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if 0 == ext_call.return_data[32]:
            if False and ext_call.return_data[0] * u * v > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (0 / ext_call.return_data[0] * s * t)
        require ext_code.size(aggregators[stor3[address(arg1)].field_256])
        staticcall aggregators[stor3[address(arg1)].field_256].0x313ce567 with:
                gas gas_remaining wei
    else:
        if assetPrices[stor1]:
            return assetPrices[stor1]
        if aggregators[stor1]:
            require ext_code.size(aggregators[stor1])
            staticcall aggregators[stor1].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] != 0:
                require ext_code.size(aggregators[stor1])
                staticcall aggregators[stor1].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32]:
                        return ext_call.return_data[32]
                else:
                    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                        if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                            return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18))
                    else:
                        s = 10
                        t = 1
                        idx = -ext_call.return_data[31 len 1] + 18
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * s * t:
                            return (ext_call.return_data[32] * s * t)
        if not priceRecords[stor1].field_672:
            return 0
        require ext_code.size(priceRecords[stor1].field_0)
        staticcall priceRecords[stor1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args priceRecords[stor1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceRecords[stor1].field_0)
        staticcall priceRecords[stor1].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(priceRecords[stor1].field_256)
            staticcall priceRecords[stor1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args priceRecords[stor1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(priceRecords[stor1].field_256)
            staticcall priceRecords[stor1].field_256.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not aggregators[stor3[stor1].field_256]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (0 / ext_call.return_data[0])
                require ext_code.size(aggregators[stor3[stor1].field_256])
                staticcall aggregators[stor3[stor1].field_256].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if 0 == ext_call.return_data[32]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (0 / ext_call.return_data[0])
                require ext_code.size(aggregators[stor3[stor1].field_256])
                staticcall aggregators[stor3[stor1].field_256].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0])
                if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                    if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] / ext_call.return_data[0])
                s = 10
                t = 1
                idx = -ext_call.return_data[31 len 1] + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[32] * s * t:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * s * t * ext_call.return_data[0] / ext_call.return_data[0])
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not aggregators[stor3[stor1].field_256]:
                    if False and ext_call.return_data[0] * 10^(-ext_call.return_data[31 len 1] + 18) > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (0 / ext_call.return_data[0])
                require ext_code.size(aggregators[stor3[stor1].field_256])
                staticcall aggregators[stor3[stor1].field_256].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if 0 == ext_call.return_data[32]:
                    if False and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (0 / ext_call.return_data[0])
                require ext_code.size(aggregators[stor3[stor1].field_256])
                staticcall aggregators[stor3[stor1].field_256].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0])
                if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                    if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0])
                s = 10
                t = 1
                idx = -ext_call.return_data[31 len 1] + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * s * t and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * s * t:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * s * t * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0])
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[stor1].field_256]:
                if False and ext_call.return_data[0] * s * t > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (0 / ext_call.return_data[0])
            require ext_code.size(aggregators[stor3[stor1].field_256])
            staticcall aggregators[stor3[stor1].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] * s * t > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (0 / ext_call.return_data[0])
            require ext_code.size(aggregators[stor3[stor1].field_256])
            staticcall aggregators[stor3[stor1].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] * s * t / ext_call.return_data[0])
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * s * t / ext_call.return_data[0])
            u = 10
            v = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * u * v and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * u * v:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (ext_call.return_data[32] * u * v * ext_call.return_data[0] * s * t / ext_call.return_data[0])
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(priceRecords[stor1].field_256)
            staticcall priceRecords[stor1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args priceRecords[stor1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(priceRecords[stor1].field_256)
            staticcall priceRecords[stor1].field_256.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not aggregators[stor3[stor1].field_256]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                require ext_code.size(aggregators[stor3[stor1].field_256])
                staticcall aggregators[stor3[stor1].field_256].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if 0 == ext_call.return_data[32]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                require ext_code.size(aggregators[stor3[stor1].field_256])
                staticcall aggregators[stor3[stor1].field_256].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                    if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                s = 10
                t = 1
                idx = -ext_call.return_data[31 len 1] + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[32] * s * t:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * s * t * ext_call.return_data[0] / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not aggregators[stor3[stor1].field_256]:
                    if False and ext_call.return_data[0] * 10^(-ext_call.return_data[31 len 1] + 18) > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                require ext_code.size(aggregators[stor3[stor1].field_256])
                staticcall aggregators[stor3[stor1].field_256].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if 0 == ext_call.return_data[32]:
                    if False and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                require ext_code.size(aggregators[stor3[stor1].field_256])
                staticcall aggregators[stor3[stor1].field_256].0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if 18 < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not -ext_call.return_data[31 len 1] + 18:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (ext_call.return_data[32] * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                    if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
                s = 10
                t = 1
                idx = -ext_call.return_data[31 len 1] + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * s * t and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * s * t:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * s * t * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[stor1].field_256]:
                if False and ext_call.return_data[0] * s * t > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            require ext_code.size(aggregators[stor3[stor1].field_256])
            staticcall aggregators[stor3[stor1].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] * s * t > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            require ext_code.size(aggregators[stor3[stor1].field_256])
            staticcall aggregators[stor3[stor1].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] * s * t / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * s * t / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
            u = 10
            v = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * u * v and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[32] * u * v:
                revert with 0, 17
            if not ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18):
                revert with 0, 18
            return (ext_call.return_data[32] * u * v * ext_call.return_data[0] * s * t / ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18))
        s = 10
        t = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(priceRecords[stor1].field_256)
        staticcall priceRecords[stor1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args priceRecords[stor1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(priceRecords[stor1].field_256)
        staticcall priceRecords[stor1].field_256.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[stor1].field_256]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * s * t)
            require ext_code.size(aggregators[stor3[stor1].field_256])
            staticcall aggregators[stor3[stor1].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * s * t)
            require ext_code.size(aggregators[stor3[stor1].field_256])
            staticcall aggregators[stor3[stor1].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] * s * t)
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] / ext_call.return_data[0] * s * t)
            u = 10
            v = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * u * v and ext_call.return_data[0] > -1 / ext_call.return_data[32] * u * v:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * u * v * ext_call.return_data[0] / ext_call.return_data[0] * s * t)
        if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
            if ext_call.return_data[0] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not aggregators[stor3[stor1].field_256]:
                if False and ext_call.return_data[0] * 10^(-ext_call.return_data[31 len 1] + 18) > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * s * t)
            require ext_code.size(aggregators[stor3[stor1].field_256])
            staticcall aggregators[stor3[stor1].field_256].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if 0 == ext_call.return_data[32]:
                if False and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > 0:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (0 / ext_call.return_data[0] * s * t)
            require ext_code.size(aggregators[stor3[stor1].field_256])
            staticcall aggregators[stor3[stor1].field_256].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 18 < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not -ext_call.return_data[31 len 1] + 18:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * s * t)
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 17
                if not ext_call.return_data[0] * s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * s * t)
            u = 10
            v = 1
            idx = -ext_call.return_data[31 len 1] + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * u * v and ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / ext_call.return_data[32] * u * v:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * u * v * ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] * s * t)
        u = 10
        v = 1
        idx = -ext_call.return_data[31 len 1] + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[0] and u * v > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not aggregators[stor3[stor1].field_256]:
            if False and ext_call.return_data[0] * u * v > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (0 / ext_call.return_data[0] * s * t)
        require ext_code.size(aggregators[stor3[stor1].field_256])
        staticcall aggregators[stor3[stor1].field_256].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if 0 == ext_call.return_data[32]:
            if False and ext_call.return_data[0] * u * v > 0:
                revert with 0, 17
            if not ext_call.return_data[0] * s * t:
                revert with 0, 18
            return (0 / ext_call.return_data[0] * s * t)
        require ext_code.size(aggregators[stor3[stor1].field_256])
        staticcall aggregators[stor3[stor1].field_256].0x313ce567 with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 18:
        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] and ext_call.return_data[0] * u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0] * s * t:
            revert with 0, 18
        return (ext_call.return_data[32] * ext_call.return_data[0] * u * v / ext_call.return_data[0] * s * t)
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if ext_call.return_data[32] and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) and ext_call.return_data[0] * u * v > -1 / ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18):
            revert with 0, 17
        if not ext_call.return_data[0] * s * t:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^(-ext_call.return_data[31 len 1] + 18) * ext_call.return_data[0] * u * v / ext_call.return_data[0] * s * t)
    w = 10
    x = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if w > -1 / w:
            revert with 0, 17
        if not bool(idx):
            w = w * w
            x = x
            idx = uint255(idx) * 0.5
            continue 
        w = w * w
        x = w * x
        idx = uint255(idx) * 0.5
        continue 
    if x > -1 / w:
        revert with 0, 17
    if ext_call.return_data[32] and w * x > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] * w * x and ext_call.return_data[0] * u * v > -1 / ext_call.return_data[32] * w * x:
        revert with 0, 17
    if not ext_call.return_data[0] * s * t:
        revert with 0, 18
    return (ext_call.return_data[32] * w * x * ext_call.return_data[0] * u * v / ext_call.return_data[0] * s * t)
}



}
