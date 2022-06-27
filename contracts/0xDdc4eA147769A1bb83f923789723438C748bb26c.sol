contract main {




// =====================  Runtime code  =====================


address owner;
array of address banks;
address sub_cfa37c36Address;
address sub_9651da56Address;
address sub_6e209528Address;
address sub_673d6bf5Address;
address sub_48905b69Address;
array of uint256 sub_505d7f74;
uint256 sub_1c984d36;
uint256 sub_2ce97037;
uint8 stor10;

function banks(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < banks.length
    return banks[arg1]
}

function sub_1c984d36(?) payable {
    return sub_1c984d36
}

function sub_2ce97037(?) payable {
    return sub_2ce97037
}

function sub_48905b69(?) payable {
    return sub_48905b69Address
}

function sub_505d7f74(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_505d7f74.length
    return sub_505d7f74[arg1]
}

function sub_673d6bf5(?) payable {
    return sub_673d6bf5Address
}

function sub_6e209528(?) payable {
    return sub_6e209528Address
}

function owner() payable {
    return owner
}

function sub_9651da56(?) payable {
    return sub_9651da56Address
}

function sub_cfa37c36(?) payable {
    return sub_cfa37c36Address
}

function isToken0() payable {
    return bool(stor10)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_7fe7ac16(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_673d6bf5Address = arg1
}

function sub_a1bcbe86(?) payable {
    require calldata.size - 4 >= 32
    if not sub_48905b69Address:
        return 0
    require ext_code.size(sub_48905b69Address)
    staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_1c984d36, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1cfe03e6(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < banks.length:
        mem[0] = 1
        mem[100] = arg1
        require ext_code.size(banks[idx])
        staticcall banks[idx].0x70a08231 with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_14 * banks.length)
}

function sub_513f3a25(?) payable {
    require calldata.size - 4 >= 32
    if not sub_673d6bf5Address:
        return 0
    require ext_code.size(sub_673d6bf5Address)
    staticcall sub_673d6bf5Address.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_673d6bf5Address)
    staticcall sub_673d6bf5Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_f1646c97(?) payable {
    require calldata.size - 4 >= 32
    if not sub_48905b69Address:
        return 0
    idx = 0
    s = 0
    while idx < sub_505d7f74.length:
        mem[0] = 7
        mem[100] = sub_505d7f74[idx]
        mem[132] = arg1
        require ext_code.size(sub_48905b69Address)
        staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_505d7f74[idx], arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_16 * sub_505d7f74.length)
}

function sub_f32a73a2(?) payable {
    require ext_code.size(sub_9651da56Address)
    staticcall sub_9651da56Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_9651da56Address)
    staticcall sub_9651da56Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor10:
        if ext_call.return_data[0]:
            return (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_98bd0368(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    banks.length = arg1.length
    if not arg1.length:
        idx = 0
        while banks.length > idx:
            banks[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            banks[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while banks.length > idx:
            banks[idx] = 0
            idx = idx + 1
            continue 
}

function sub_442798de(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_48905b69Address = arg1
    sub_1c984d36 = arg2
    sub_505d7f74.length = arg3.length
    if not arg3.length:
        idx = 0
        while sub_505d7f74.length > idx:
            sub_505d7f74[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            sub_505d7f74[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while sub_505d7f74.length > idx:
            sub_505d7f74[idx] = 0
            idx = idx + 1
            continue 
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_9651da56Address)
    staticcall sub_9651da56Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6e209528Address)
    staticcall sub_6e209528Address.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_2ce97037, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not sub_48905b69Address:
        if not sub_673d6bf5Address:
            require ext_code.size(sub_9651da56Address)
            staticcall sub_9651da56Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_9651da56Address)
            staticcall sub_9651da56Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if stor10:
                if not sub_48905b69Address:
                    idx = 0
                    s = 0
                    while idx < banks.length:
                        mem[0] = 1
                        mem[100] = arg1
                        require ext_code.size(banks[idx])
                        staticcall banks[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = ext_call.return_data[0] + s
                        continue 
                    require ext_code.size(sub_cfa37c36Address)
                    staticcall sub_cfa37c36Address.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ((_397 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18))
                idx = 0
                s = 0
                while idx < sub_505d7f74.length:
                    mem[0] = 7
                    mem[100] = sub_505d7f74[idx]
                    mem[132] = arg1
                    require ext_code.size(sub_48905b69Address)
                    staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args sub_505d7f74[idx], arg1
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
                idx = 0
                s = 0
                while idx < banks.length:
                    mem[0] = 1
                    mem[100] = arg1
                    require ext_code.size(banks[idx])
                    staticcall banks[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _574 = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
                require ext_code.size(sub_cfa37c36Address)
                staticcall sub_cfa37c36Address.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ((_574 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18) + (_395 * sub_505d7f74.length))
            if not sub_48905b69Address:
                idx = 0
                s = 0
                while idx < banks.length:
                    mem[0] = 1
                    mem[100] = arg1
                    require ext_code.size(banks[idx])
                    staticcall banks[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
                require ext_code.size(sub_cfa37c36Address)
                staticcall sub_cfa37c36Address.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ((_400 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 10^18))
            idx = 0
            s = 0
            while idx < sub_505d7f74.length:
                mem[0] = 7
                mem[100] = sub_505d7f74[idx]
                mem[132] = arg1
                require ext_code.size(sub_48905b69Address)
                staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_505d7f74[idx], arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            idx = 0
            s = 0
            while idx < banks.length:
                mem[0] = 1
                mem[100] = arg1
                require ext_code.size(banks[idx])
                staticcall banks[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _576 = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            require ext_code.size(sub_cfa37c36Address)
            staticcall sub_cfa37c36Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((_576 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 10^18) + (_398 * sub_505d7f74.length))
        require ext_code.size(sub_673d6bf5Address)
        staticcall sub_673d6bf5Address.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_673d6bf5Address)
        staticcall sub_673d6bf5Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_9651da56Address)
        staticcall sub_9651da56Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_9651da56Address)
        staticcall sub_9651da56Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if stor10:
            if not sub_48905b69Address:
                idx = 0
                s = 0
                while idx < banks.length:
                    mem[0] = 1
                    mem[100] = arg1
                    require ext_code.size(banks[idx])
                    staticcall banks[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
                require ext_code.size(sub_cfa37c36Address)
                staticcall sub_cfa37c36Address.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ((_391 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18))
            idx = 0
            s = 0
            while idx < sub_505d7f74.length:
                mem[0] = 7
                mem[100] = sub_505d7f74[idx]
                mem[132] = arg1
                require ext_code.size(sub_48905b69Address)
                staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_505d7f74[idx], arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            idx = 0
            s = 0
            while idx < banks.length:
                mem[0] = 1
                mem[100] = arg1
                require ext_code.size(banks[idx])
                staticcall banks[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _570 = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            require ext_code.size(sub_cfa37c36Address)
            staticcall sub_cfa37c36Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((_570 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18) + (_389 * sub_505d7f74.length))
        if not sub_48905b69Address:
            idx = 0
            s = 0
            while idx < banks.length:
                mem[0] = 1
                mem[100] = arg1
                require ext_code.size(banks[idx])
                staticcall banks[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            require ext_code.size(sub_cfa37c36Address)
            staticcall sub_cfa37c36Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((_394 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 10^18))
        idx = 0
        s = 0
        while idx < sub_505d7f74.length:
            mem[0] = 7
            mem[100] = sub_505d7f74[idx]
            mem[132] = arg1
            require ext_code.size(sub_48905b69Address)
            staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_505d7f74[idx], arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        idx = 0
        s = 0
        while idx < banks.length:
            mem[0] = 1
            mem[100] = arg1
            require ext_code.size(banks[idx])
            staticcall banks[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _572 = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        require ext_code.size(sub_cfa37c36Address)
        staticcall sub_cfa37c36Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((_572 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 10^18) + (_392 * sub_505d7f74.length))
    require ext_code.size(sub_48905b69Address)
    staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_1c984d36, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_673d6bf5Address:
        require ext_code.size(sub_9651da56Address)
        staticcall sub_9651da56Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_9651da56Address)
        staticcall sub_9651da56Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if stor10:
            if not sub_48905b69Address:
                idx = 0
                s = 0
                while idx < banks.length:
                    mem[0] = 1
                    mem[100] = arg1
                    require ext_code.size(banks[idx])
                    staticcall banks[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = ext_call.return_data[0] + s
                    continue 
                require ext_code.size(sub_cfa37c36Address)
                staticcall sub_cfa37c36Address.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ((_385 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18))
            idx = 0
            s = 0
            while idx < sub_505d7f74.length:
                mem[0] = 7
                mem[100] = sub_505d7f74[idx]
                mem[132] = arg1
                require ext_code.size(sub_48905b69Address)
                staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_505d7f74[idx], arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            idx = 0
            s = 0
            while idx < banks.length:
                mem[0] = 1
                mem[100] = arg1
                require ext_code.size(banks[idx])
                staticcall banks[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _566 = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            require ext_code.size(sub_cfa37c36Address)
            staticcall sub_cfa37c36Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((_566 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18) + (_383 * sub_505d7f74.length))
        if not sub_48905b69Address:
            idx = 0
            s = 0
            while idx < banks.length:
                mem[0] = 1
                mem[100] = arg1
                require ext_code.size(banks[idx])
                staticcall banks[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            require ext_code.size(sub_cfa37c36Address)
            staticcall sub_cfa37c36Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((_388 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 10^18))
        idx = 0
        s = 0
        while idx < sub_505d7f74.length:
            mem[0] = 7
            mem[100] = sub_505d7f74[idx]
            mem[132] = arg1
            require ext_code.size(sub_48905b69Address)
            staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_505d7f74[idx], arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        idx = 0
        s = 0
        while idx < banks.length:
            mem[0] = 1
            mem[100] = arg1
            require ext_code.size(banks[idx])
            staticcall banks[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _568 = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        require ext_code.size(sub_cfa37c36Address)
        staticcall sub_cfa37c36Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((_568 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 10^18) + (_386 * sub_505d7f74.length))
    require ext_code.size(sub_673d6bf5Address)
    staticcall sub_673d6bf5Address.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_673d6bf5Address)
    staticcall sub_673d6bf5Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9651da56Address)
    staticcall sub_9651da56Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_9651da56Address)
    staticcall sub_9651da56Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor10:
        if not sub_48905b69Address:
            idx = 0
            s = 0
            while idx < banks.length:
                mem[0] = 1
                mem[100] = arg1
                require ext_code.size(banks[idx])
                staticcall banks[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            require ext_code.size(sub_cfa37c36Address)
            staticcall sub_cfa37c36Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ((_379 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18))
        idx = 0
        s = 0
        while idx < sub_505d7f74.length:
            mem[0] = 7
            mem[100] = sub_505d7f74[idx]
            mem[132] = arg1
            require ext_code.size(sub_48905b69Address)
            staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_505d7f74[idx], arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        idx = 0
        s = 0
        while idx < banks.length:
            mem[0] = 1
            mem[100] = arg1
            require ext_code.size(banks[idx])
            staticcall banks[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _562 = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        require ext_code.size(sub_cfa37c36Address)
        staticcall sub_cfa37c36Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((_562 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18) + (_377 * sub_505d7f74.length))
    if not sub_48905b69Address:
        idx = 0
        s = 0
        while idx < banks.length:
            mem[0] = 1
            mem[100] = arg1
            require ext_code.size(banks[idx])
            staticcall banks[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        require ext_code.size(sub_cfa37c36Address)
        staticcall sub_cfa37c36Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((_382 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 10^18))
    idx = 0
    s = 0
    while idx < sub_505d7f74.length:
        mem[0] = 7
        mem[100] = sub_505d7f74[idx]
        mem[132] = arg1
        require ext_code.size(sub_48905b69Address)
        staticcall sub_48905b69Address.stakedTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_505d7f74[idx], arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    idx = 0
    s = 0
    while idx < banks.length:
        mem[0] = 1
        mem[100] = arg1
        require ext_code.size(banks[idx])
        staticcall banks[idx].0x70a08231 with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _564 = ext_call.return_data[0]
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    require ext_code.size(sub_cfa37c36Address)
    staticcall sub_cfa37c36Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((_564 * banks.length) + ext_call.return_data[0] + ((ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) / 10^18) + (_380 * sub_505d7f74.length))
}



}
