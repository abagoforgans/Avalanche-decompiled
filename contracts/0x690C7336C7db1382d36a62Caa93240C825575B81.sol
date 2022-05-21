contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recover(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1++
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
    if stor1 + 1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function getTokenIndex(address arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    mem[96] = 0xc661065700000000000000000000000000000000000000000000000000000000
    mem[100] = var10001
    require ext_code.size(arg2)
    staticcall arg2.mem[var12003 len 4] with:
            gas gas_remaining wei
           args mem[var12003 + 4 len var12004 - 4]
    mem[var12005] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if mem[var16002 + 12 len 20] == arg1:
            return var16004
        require ext_code.size(arg2)
        staticcall arg2.coins(uint256 arg1) with:
                gas gas_remaining wei
               args (var16004 + 1)
        mem[96] = ext_call.return_data[0]
        s = var16004
        while ext_call.success:
            require return_data.size >= 32
            if mem[108 len 20] == arg1:
                return (s + 1)
            mem[100] = s + 2
            require ext_code.size(arg2)
            staticcall arg2.coins(uint256 arg1) with:
                    gas gas_remaining wei
                   args (s + 2)
            mem[96] = ext_call.return_data[0]
            s = s + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    stor1++
    if tx.origin == msg.sender:
        revert with 0, 'only contracts'
    require ext_code.size(msg.sender)
    staticcall msg.sender.0x42294bfe with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.0xd1a81102 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.vaultAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.operator() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).config() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3.length >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args cd[(arg3 + 68)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xc661065700000000000000000000000000000000000000000000000000000000
    mem[100] = var37001
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).mem[var39003 len 4] with:
            gas gas_remaining wei
           args mem[var39003 + 4 len var39004 - 4]
    mem[var39005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[var43002 + 12 len 20] != address(ext_call.return_data[0]):
        mem[100] = var43004 + 1
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).coins(uint256 arg1) with:
                gas gas_remaining wei
               args (var43004 + 1)
        mem[96] = ext_call.return_data[0]
        s = var43004
        while ext_call.success:
            require return_data.size >= 32
            if mem[108 len 20] != address(ext_call.return_data[0]):
                mem[100] = s + 2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).coins(uint256 arg1) with:
                        gas gas_remaining wei
                       args (s + 2)
                mem[96] = ext_call.return_data[0]
                s = s + 1
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ('signextend', 15, ('signextend', 15, ('add', 1, ('var', 1)))), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 100)]:
                revert with 0, 'insufficient LP tokens received'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[132] = msg.sender
            mem[164] = ext_call.return_data[0]
            mem[96] = 68
            mem[64] = 196
            mem[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            t = 128
            u = mem[64]
            idx = mem[96]
            while idx >= 32:
                mem[u] = mem[t]
                mem[mem[64]] = 0xc661065700000000000000000000000000000000000000000000000000000000
                mem[100] = s + 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).coins(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len -mem[64] + 128]
                mem[mem[64]] = ext_call.return_data[0]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[96])] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])])
            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len -mem[64] + 260]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not mem[96]:
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x237f0 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'not stable'
                    _1696 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1697 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1697 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1697 + 36 len 28]
                    _1700 = mem[_1697]
                    t = _1697 + 32
                    u = mem[64]
                    idx = mem[_1697]
                    while idx >= 32:
                        mem[u] = mem[t]
                        mem[mem[64]] = 0xc661065700000000000000000000000000000000000000000000000000000000
                        mem[100] = s + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).coins(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        t = t + 32
                        u = u + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1697])] = mem[_1697 + floor32(mem[_1697]) + -(mem[_1697] % 32) + 64 len mem[_1697] % 32] or Mask(8 * -(mem[_1697] % 32) + 32, -(8 * -(mem[_1697] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1697])])
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1700 + _1696 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeTransfer'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, '!safeTransfer'
                    else:
                        _1846 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1846 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeTransfer'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1846 + 32]:
                                revert with 0, '!safeTransfer'
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, '!safeTransfer'
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x237f0 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'not stable'
                    _1716 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1717 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1717 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1717 + 36 len 28]
                    _1720 = mem[_1717]
                    t = _1717 + 32
                    u = mem[64]
                    idx = mem[_1717]
                    while idx >= 32:
                        mem[u] = mem[t]
                        mem[mem[64]] = 0xc661065700000000000000000000000000000000000000000000000000000000
                        mem[100] = s + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).coins(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        t = t + 32
                        u = u + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1717])] = mem[_1717 + floor32(mem[_1717]) + -(mem[_1717] % 32) + 64 len mem[_1717] % 32] or Mask(8 * -(mem[_1717] % 32) + 32, -(8 * -(mem[_1717] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1717])])
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1720 + _1716 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeTransfer'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, '!safeTransfer'
                    else:
                        _1847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1847 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeTransfer'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1847 + 32]:
                                revert with 0, '!safeTransfer'
            else:
                _1571 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1571] = return_data.size
                mem[_1571 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not return_data.size:
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x237f0 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'not stable'
                    _1702 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1703 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1703 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1703 + 36 len 28]
                    _1706 = mem[_1703]
                    t = _1703 + 32
                    u = mem[64]
                    idx = mem[_1703]
                    while idx >= 32:
                        mem[u] = mem[t]
                        mem[mem[64]] = 0xc661065700000000000000000000000000000000000000000000000000000000
                        mem[100] = s + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).coins(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        t = t + 32
                        u = u + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1703])] = mem[_1703 + floor32(mem[_1703]) + -(mem[_1703] % 32) + 64 len mem[_1703] % 32] or Mask(8 * -(mem[_1703] % 32) + 32, -(8 * -(mem[_1703] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1703])])
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1706 + _1702 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeTransfer'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, '!safeTransfer'
                    else:
                        _1848 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1848 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeTransfer'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1848 + 32]:
                                revert with 0, '!safeTransfer'
                else:
                    require return_data.size >= 32
                    if not mem[_1571 + 32]:
                        revert with 0, '!safeTransfer'
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x237f0 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'not stable'
                    _1725 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1726 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1726 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1726 + 36 len 28]
                    _1729 = mem[_1726]
                    t = _1726 + 32
                    u = mem[64]
                    idx = mem[_1726]
                    while idx >= 32:
                        mem[u] = mem[t]
                        mem[mem[64]] = 0xc661065700000000000000000000000000000000000000000000000000000000
                        mem[100] = s + 1
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).coins(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len -mem[64] + 128]
                        mem[mem[64]] = ext_call.return_data[0]
                        t = t + 32
                        u = u + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1726])] = mem[_1726 + floor32(mem[_1726]) + -(mem[_1726] % 32) + 64 len mem[_1726] % 32] or Mask(8 * -(mem[_1726] % 32) + 32, -(8 * -(mem[_1726] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1726])])
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1729 + _1725 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeTransfer'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, '!safeTransfer'
                    else:
                        _1849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1849 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeTransfer'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1849 + 32]:
                                revert with 0, '!safeTransfer'
            if stor1 + 1 != stor1:
                revert with 0, 'ReentrancyGuard: reentrant call'
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], ('signextend', 15, ('signextend', 15, ('var', 43004))), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[(arg3 + 100)]:
        revert with 0, 'insufficient LP tokens received'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call address(ext_call.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, '!safeTransfer'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x237f0 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'not stable'
        mem[296 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call address(ext_call.return_data[0]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, '!safeTransfer'
        else:
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x237f0 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'not stable'
        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call address(ext_call.return_data[0]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, '!safeTransfer'
        else:
            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 329]:
                    revert with 0, '!safeTransfer'
    if stor1 + 1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
