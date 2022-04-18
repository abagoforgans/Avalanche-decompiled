contract main {




// =====================  Runtime code  =====================


uint256 root;
address tangleV3Address;
address tangleV3LiquidityAddress;
address uniswapishAddress;
address wrappedFantomAddress;
address owner;
address tangleV3Address;
address tangleV3LiquidityAddress;
address uniswapishAddress;

function TangleV3() payable {
    return tangleV3Address
}

function Uniswapish() payable {
    return uniswapishAddress
}

function WrappedFantomAddress() payable {
    return wrappedFantomAddress
}

function owner() payable {
    return owner
}

function TangleV3Liquidity() payable {
    return tangleV3LiquidityAddress
}

function UniswapishAddress() payable {
    return uniswapishAddress
}

function root() payable {
    return root
}

function TangleV3Address() payable {
    return tangleV3Address
}

function TangleV3LiquidityAddress() payable {
    return tangleV3LiquidityAddress
}

function _fallback() payable {
    revert
}

function CALL(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    require ext_call.success
    return bool(ext_call.success)
}

function yoink() payable {
    require ext_code.size(tangleV3Address)
    call tangleV3Address.changeMinHoldAmount(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tangleV3Address)
    call tangleV3Address.0x70a08231 with:
         gas gas_remaining wei
        args 0xe1a811bdfb656dc47a7262dbde31071d9a916b1a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tangleV3Address)
    call tangleV3Address.0x23b872dd with:
         gas gas_remaining wei
        args 0xe1a811bdfb656dc47a7262dbde31071d9a916b1a, 0x8f89dc36a2fdd165a0b03d817eb8bf3af3bbf446, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tangleV3Address)
    call tangleV3Address.changeMinHoldAmount(uint256 rg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function verifyAddress(bytes32[] arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 == arg2
    mem[ceil32(32 * arg1.length) + 129] = address(arg2)
    mem[ceil32(32 * arg1.length) + 97] = 20
    mem[64] = ceil32(32 * arg1.length) + 149
    idx = 0
    s = 0
    t = arg3
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if bool(t):
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s + sha3(mem[ceil32(32 * arg1.length) + 129 len mem[ceil32(32 * arg1.length) + 97]])
            _49 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_49 + 32 len mem[_49]])
            t = t / 2
            continue 
        _47 = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = s + sha3(mem[ceil32(32 * arg1.length) + 129 len mem[ceil32(32 * arg1.length) + 97]])
        mem[mem[64] + 64] = _47
        _52 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = sha3(mem[_52 + 32 len mem[_52]])
        t = t / 2
        continue 
    return (root == s)
}

function AAAAAAAAAAAAAA(bytes32[] arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 == arg2
    if 0xe1a811bdfb656dc47a7262dbde31071d9a916b1a == msg.sender:
        revert with 0, 'really?'
    if msg.sender == owner:
        require ext_code.size(tangleV3Address)
        call tangleV3Address.changeMinHoldAmount(uint256 rg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * arg1.length) + 101] = msg.sender
        require ext_code.size(tangleV3Address)
        call tangleV3Address.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[ceil32(32 * arg1.length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 101] = msg.sender
        require ext_code.size(tangleV3LiquidityAddress)
        call tangleV3LiquidityAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tangleV3Address)
        call tangleV3Address.getAllAvailableRewards(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 97 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if ext_call.return_data[96] > 0:
            require ext_code.size(tangleV3Address)
            call tangleV3Address.withdrawAllRewards(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                require ext_code.size(tangleV3Address)
                call tangleV3Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 133] = -1
            require ext_code.size(tangleV3Address)
            call tangleV3Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args uniswapishAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg1.length:
                revert with 'NH{q', 50
            mem[128] = tangleV3Address
            if 1 >= arg1.length:
                revert with 'NH{q', 50
            mem[160] = wrappedFantomAddress
            mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 101] = this.address
            require ext_code.size(tangleV3Address)
            call tangleV3Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 24 * 3600 > !block.timestamp:
                revert with 'NH{q', 17
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 133] = 0
            idx = 0
            s = ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 293
            t = 128
            while idx < arg1.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapishAddress)
            call uniswapishAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + (24 * 3600), arg1.length, mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 293 len 32 * arg1.length]
        else:
            require ext_code.size(tangleV3LiquidityAddress)
            call tangleV3LiquidityAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tangleV3LiquidityAddress)
            call tangleV3LiquidityAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args uniswapishAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 24 * 3600 > !block.timestamp:
                revert with 'NH{q', 17
            mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 101] = tangleV3Address
            mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
            mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 165] = 0
            require ext_code.size(uniswapishAddress)
            call uniswapishAddress.removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                 gas gas_remaining wei
                args tangleV3Address, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + (24 * 3600)
            mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                require ext_code.size(tangleV3Address)
                call tangleV3Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 133] = -1
            require ext_code.size(tangleV3Address)
            call tangleV3Address.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args uniswapishAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg1.length:
                revert with 'NH{q', 50
            mem[128] = tangleV3Address
            if 1 >= arg1.length:
                revert with 'NH{q', 50
            mem[160] = wrappedFantomAddress
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 101] = this.address
            require ext_code.size(tangleV3Address)
            call tangleV3Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 24 * 3600 > !block.timestamp:
                revert with 'NH{q', 17
            mem[ceil32(32 * arg1.length) + (7 * ceil32(return_data.size)) + 97] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg1.length) + (7 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
            mem[ceil32(32 * arg1.length) + (7 * ceil32(return_data.size)) + 133] = 0
            idx = 0
            s = ceil32(32 * arg1.length) + (7 * ceil32(return_data.size)) + 293
            t = 128
            while idx < arg1.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapishAddress)
            call uniswapishAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + (24 * 3600), arg1.length, mem[ceil32(32 * arg1.length) + (7 * ceil32(return_data.size)) + 293 len 32 * arg1.length]
    else:
        mem[ceil32(32 * arg1.length) + 129] = address(arg2)
        mem[ceil32(32 * arg1.length) + 97] = 20
        mem[64] = ceil32(32 * arg1.length) + 149
        idx = 0
        s = 0
        t = arg3
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if bool(t):
                mem[mem[64] + 32] = mem[(32 * idx) + 128]
                mem[mem[64] + 64] = s + sha3(mem[ceil32(32 * arg1.length) + 129 len mem[ceil32(32 * arg1.length) + 97]])
                _750 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = sha3(mem[_750 + 32 len mem[_750]])
                t = t / 2
                continue 
            _747 = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = s + sha3(mem[ceil32(32 * arg1.length) + 129 len mem[ceil32(32 * arg1.length) + 97]])
            mem[mem[64] + 64] = _747
            _753 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_753 + 32 len mem[_753]])
            t = t / 2
            continue 
        if root != s:
            revert with 0, 'not whitelisted'
        require ext_code.size(tangleV3Address)
        call tangleV3Address.changeMinHoldAmount(uint256 rg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(tangleV3Address)
        call tangleV3Address.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _749 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _756 = mem[_749]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(tangleV3LiquidityAddress)
        call tangleV3LiquidityAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _759 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _760 = mem[_759]
        require ext_code.size(tangleV3Address)
        call tangleV3Address.getAllAvailableRewards(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _763 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        if mem[_763 + 96] <= 0:
            if not _760:
                if not _756:
                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uniswapishAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args uniswapishAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = tangleV3Address
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = wrappedFantomAddress
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _794 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _805 = mem[_794]
                    if 24 * 3600 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _805
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = mem[64] + 196
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapishAddress)
                    call uniswapishAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _805, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * mem[96]) + 32]
                else:
                    mem[mem[64] + 68] = _756
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, _756
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uniswapishAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args uniswapishAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = tangleV3Address
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = wrappedFantomAddress
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _808 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _816 = mem[_808]
                    if 24 * 3600 > !block.timestamp:
                        revert with 'NH{q', 17
                    _829 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _816
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _833 = mem[96]
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = mem[64] + 196
                    t = 128
                    while idx < _833:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_829 + 100] = this.address
                    mem[_829 + 132] = block.timestamp + (24 * 3600)
                    require ext_code.size(uniswapishAddress)
                    call uniswapishAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _829 + (32 * _833) + -mem[64] + 192]
            else:
                require ext_code.size(tangleV3LiquidityAddress)
                call tangleV3LiquidityAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, _760
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tangleV3LiquidityAddress)
                call tangleV3LiquidityAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args uniswapishAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 24 * 3600 > !block.timestamp:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp + (24 * 3600)
                require ext_code.size(uniswapishAddress)
                call uniswapishAddress.removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                     gas gas_remaining wei
                    args tangleV3Address, _760, 0, 0, address(this.address), block.timestamp + (24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _756:
                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uniswapishAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args uniswapishAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = tangleV3Address
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = wrappedFantomAddress
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _853 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _865 = mem[_853]
                    if 24 * 3600 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _865
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = mem[64] + 196
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapishAddress)
                    call uniswapishAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _865, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * mem[96]) + 32]
                else:
                    mem[mem[64] + 68] = _756
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, _756
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uniswapishAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args uniswapishAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = tangleV3Address
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = wrappedFantomAddress
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _871 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _879 = mem[_871]
                    if 24 * 3600 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _879
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = mem[64] + 196
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapishAddress)
                    call uniswapishAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _879, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * mem[96]) + 32]
        else:
            require ext_code.size(tangleV3Address)
            call tangleV3Address.withdrawAllRewards(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not _760:
                if not _756:
                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uniswapishAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args uniswapishAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = tangleV3Address
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = wrappedFantomAddress
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _817 = mem[_809]
                    if 24 * 3600 > !block.timestamp:
                        revert with 'NH{q', 17
                    _831 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _817
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _837 = mem[96]
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = mem[64] + 196
                    t = 128
                    while idx < _837:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_831 + 100] = this.address
                    mem[_831 + 132] = block.timestamp + (24 * 3600)
                    require ext_code.size(uniswapishAddress)
                    call uniswapishAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _831 + (32 * _837) + -mem[64] + 192]
                else:
                    mem[mem[64] + 68] = _756
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, _756
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uniswapishAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args uniswapishAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = tangleV3Address
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = wrappedFantomAddress
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _820 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _827 = mem[_820]
                    if 24 * 3600 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _827
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = mem[64] + 196
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapishAddress)
                    call uniswapishAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _827, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * mem[96]) + 32]
            else:
                require ext_code.size(tangleV3LiquidityAddress)
                call tangleV3LiquidityAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, _760
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tangleV3LiquidityAddress)
                call tangleV3LiquidityAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args uniswapishAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 24 * 3600 > !block.timestamp:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp + (24 * 3600)
                require ext_code.size(uniswapishAddress)
                call uniswapishAddress.removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                     gas gas_remaining wei
                    args tangleV3Address, _760, 0, 0, address(this.address), block.timestamp + (24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _756:
                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uniswapishAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args uniswapishAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = tangleV3Address
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = wrappedFantomAddress
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _881 = mem[_875]
                    if 24 * 3600 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _881
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = mem[64] + 196
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapishAddress)
                    call uniswapishAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _881, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * mem[96]) + 32]
                else:
                    mem[mem[64] + 68] = _756
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, _756
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uniswapishAddress
                    mem[mem[64] + 36] = -1
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args uniswapishAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = tangleV3Address
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = wrappedFantomAddress
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tangleV3Address)
                    call tangleV3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _885 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _887 = mem[_885]
                    if 24 * 3600 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _887
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = mem[64] + 196
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapishAddress)
                    call uniswapishAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _887, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(tangleV3Address)
    call tangleV3Address.changeMinHoldAmount(uint256 rg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
