contract main {




// =====================  Runtime code  =====================


address owner;
uint256 maxRefundAtATime;
uint256 maxTokenIdToRefund;
uint256 isEnabled;
address stor4;
mapping of uint256 tokenRefunds;

function isEnabled() {
    return isEnabled
}

function owner() {
    return owner
}

function tokenRefunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenRefunds[arg1]
}

function maxTokenIdToRefund() {
    return maxTokenIdToRefund
}

function maxRefundAtATime() {
    return maxRefundAtATime
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function flipControl() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 < isEnabled:
        revert with 0, 17
    isEnabled = -isEnabled + 1
}

function setMaxRefundAtATime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxRefundAtATime = arg1
}

function setMaxTokenIdToRefund(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTokenIdToRefund = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function refundTokens() {
    if isEnabled != 1:
        revert with 0, 'Refund not available'
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(stor4)
    call stor4.0xe985e9c5 with:
         gas gas_remaining wei
        args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Please approve refund contract'
    mem[ceil32(return_data.size) + 96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor4)
    call stor4.tokensOfOwner(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require return_data.size >= _12 + (32 * _13) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _13] = mem[ceil32(return_data.size) + _12 + 128 len 32 * _13]
    if not _13:
        revert with 0, 'No available token to refund'
    if block.number < 2:
        revert with 0, 17
    if block.number < 3:
        revert with 0, 17
    if block.number < 4:
        revert with 0, 17
    _150 = mem[64]
    mem[mem[64] + 32] = block.number - 2
    mem[mem[64] + 64] = block.hash(block.number - 3)
    mem[mem[64] + 96] = block.hash(block.number - 4)
    _151 = mem[64]
    mem[mem[64]] = 96
    mem[64] = mem[64] + 128
    _153 = sha3(mem[_151 + 32 len mem[_151]])
    mem[_150 + 128] = 7
    mem[_150 + 160] = 0x524546554e444200000000000000000000000000000000000000000000000000
    mem[_150 + 224] = 0x524546554e444200000000000000000000000000000000000000000000000000
    mem[_150 + 231] = _13
    mem[_150 + 263] = _153
    mem[_150 + 192] = 71
    mem[64] = _150 + 295
    idx = 0
    s = 0
    while idx < _13:
        _399 = mem[64]
        mem[64] = mem[64] + 64
        mem[_399] = 7
        mem[_399 + 32] = 0x524546554e444200000000000000000000000000000000000000000000000000
        _403 = mem[64]
        t = 0
        while t < 7:
            mem[t + _403 + 32] = mem[_399 + t + 32]
            t = t + 32
            continue 
        mem[_403 + 39] = idx
        mem[_403 + 71] = s + sha3(mem[_150 + 224 len mem[_150 + 192]])
        _555 = mem[64]
        mem[mem[64]] = _403 + -mem[64] + 71
        mem[64] = _403 + 103
        _557 = sha3(mem[_555 + 32 len mem[_555]])
        if _13 < idx:
            revert with 0, 17
        if not _13 - idx:
            revert with 0, 18
        if idx > !(sha3(mem[_555 + 32 len mem[_555]]) % _13 - idx):
            revert with 0, 17
        if idx + (sha3(mem[_555 + 32 len mem[_555]]) % _13 - idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        _636 = mem[(32 * idx + (sha3(mem[_555 + 32 len mem[_555]]) % _13 - idx)) + (2 * ceil32(return_data.size)) + 128]
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        if idx + (sha3(mem[_555 + 32 len mem[_555]]) % _13 - idx) >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        mem[(32 * idx + (sha3(mem[_555 + 32 len mem[_555]]) % _13 - idx)) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _636
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _557
        continue 
    if maxRefundAtATime > test266151307():
        revert with 0, 65
    _402 = mem[64]
    mem[mem[64]] = maxRefundAtATime
    mem[64] = mem[64] + (32 * maxRefundAtATime) + 32
    if not maxRefundAtATime:
        idx = 0
        s = 0
        while idx < _13:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            if maxTokenIdToRefund <= mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[32] = 5
            if tokenRefunds[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] != 0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            if s >= mem[_402]:
                revert with 0, 50
            mem[(32 * s) + _402 + 32] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            if s > -2:
                revert with 0, 17
            if s + 1 < maxRefundAtATime:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if s + 1 <= 0:
                revert with 0, 'No refundable token found'
            t = 0
            while t < s + 1:
                if t >= mem[_402]:
                    revert with 0, 50
                _717 = mem[(32 * t) + _402 + 32]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = owner
                mem[mem[64] + 68] = _717
                require ext_code.size(stor4)
                call stor4.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, owner, _717
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if t >= mem[_402]:
                    revert with 0, 50
                mem[0] = mem[(32 * t) + _402 + 32]
                mem[32] = 5
                tokenRefunds[mem[0]] = 1
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            if s + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            call msg.sender with:
               value (10^18 * s) + 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _757 = mem[64]
            mem[mem[64]] = 64
            _771 = mem[_402]
            mem[mem[64] + 64] = mem[_402]
            idx = 0
            s = _402 + 32
            t = mem[64] + 96
            while idx < _771:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_757 + 32] = msg.sender
            emit 0xf32d362b: mem[mem[64] len _757 + (32 * _771) + -mem[64] + 96]
        if s <= 0:
            revert with 0, 'No refundable token found'
        t = 0
        while t < s:
            if t >= mem[_402]:
                revert with 0, 50
            _714 = mem[(32 * t) + _402 + 32]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = owner
            mem[mem[64] + 68] = _714
            require ext_code.size(stor4)
            call stor4.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, owner, _714
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if t >= mem[_402]:
                revert with 0, 50
            mem[0] = mem[(32 * t) + _402 + 32]
            mem[32] = 5
            tokenRefunds[mem[0]] = 1
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        if s > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        call msg.sender with:
           value 10^18 * s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _754 = mem[64]
        mem[mem[64]] = 64
        _770 = mem[_402]
        mem[mem[64] + 64] = mem[_402]
        mem[mem[64] + 96 len 32 * _770] = mem[_402 + 32 len 32 * _770]
        mem[mem[64] + 32] = msg.sender
        emit 0xf32d362b: mem[mem[64] len _754 + (32 * _770) + -mem[64] + 96]
    else:
        mem[_402 + 32 len 32 * maxRefundAtATime] = call.data[calldata.size len 32 * maxRefundAtATime]
        idx = 0
        s = 0
        while idx < _13:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            if maxTokenIdToRefund <= mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[32] = 5
            if tokenRefunds[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] != 0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            if s >= mem[_402]:
                revert with 0, 50
            mem[(32 * s) + _402 + 32] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            if s > -2:
                revert with 0, 17
            if s + 1 < maxRefundAtATime:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if s + 1 <= 0:
                revert with 0, 'No refundable token found'
            t = 0
            while t < s + 1:
                if t >= mem[_402]:
                    revert with 0, 50
                _723 = mem[(32 * t) + _402 + 32]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = owner
                mem[mem[64] + 68] = _723
                require ext_code.size(stor4)
                call stor4.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, owner, _723
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if t >= mem[_402]:
                    revert with 0, 50
                mem[0] = mem[(32 * t) + _402 + 32]
                mem[32] = 5
                tokenRefunds[mem[0]] = 1
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            if s + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            call msg.sender with:
               value (10^18 * s) + 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _763 = mem[64]
            mem[mem[64]] = 64
            _773 = mem[_402]
            mem[mem[64] + 64] = mem[_402]
            idx = 0
            s = _402 + 32
            t = mem[64] + 96
            while idx < _773:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_763 + 32] = msg.sender
            emit 0xf32d362b: mem[mem[64] len _763 + (32 * _773) + -mem[64] + 96]
        if s <= 0:
            revert with 0, 'No refundable token found'
        t = 0
        while t < s:
            if t >= mem[_402]:
                revert with 0, 50
            _720 = mem[(32 * t) + _402 + 32]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = owner
            mem[mem[64] + 68] = _720
            require ext_code.size(stor4)
            call stor4.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, owner, _720
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if t >= mem[_402]:
                revert with 0, 50
            mem[0] = mem[(32 * t) + _402 + 32]
            mem[32] = 5
            tokenRefunds[mem[0]] = 1
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        if s > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        call msg.sender with:
           value 10^18 * s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _760 = mem[64]
        mem[mem[64]] = 64
        _772 = mem[_402]
        mem[mem[64] + 64] = mem[_402]
        mem[mem[64] + 96 len 32 * _772] = mem[_402 + 32 len 32 * _772]
        mem[mem[64] + 32] = msg.sender
        emit 0xf32d362b: mem[mem[64] len _760 + (32 * _772) + -mem[64] + 96]
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xecb7f7ef(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0xa6f15fa9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return tokenRefunds[arg1]
                if uint32(call.func_hash) >> 224 != unknown_0xb75ac4ca(?????):
                require not msg.value
                return maxTokenIdToRefund
            if unknown_0xecb7f7ef(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                maxTokenIdToRefund = arg1
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    if unknown_0xf89c2c8a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return maxRefundAtATime
                    if unknown_0xfc4f8902(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if 1 < isEnabled:
                            revert with 0, 17
                        isEnabled = -isEnabled + 1
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
        else:
            if withdrawAmount(uint256 rg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call msg.sender with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x175ea85a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    maxRefundAtATime = arg1
                else:
                    if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x6aa633b6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return isEnabled
                        if uint32(call.func_hash) >> 224 != unknown_0x71007509(?????):
                            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                owner = 0
                                emit OwnershipTransferred(owner, 0);
                        else:
                            require not msg.value
                            if isEnabled != 1:
                                revert with 0, 'Refund not available'
                            mem[132] = msg.sender
                            mem[164] = this.address
                            require ext_code.size(stor4)
                            call stor4.0xe985e9c5 with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Please approve refund contract'
                            mem[ceil32(return_data.size) + 128] = 0x8462151c00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 132] = msg.sender
                            require ext_code.size(stor4)
                            call stor4.tokensOfOwner(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _43 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159 < ceil32(return_data.size) + return_data.size + 128
                            _44 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                            mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                            require return_data.size >= _43 + (32 * _44) + 32
                            mem[(2 * ceil32(return_data.size)) + 160 len 32 * _44] = mem[ceil32(return_data.size) + _43 + 160 len 32 * _44]
                            if not _44:
                                revert with 0, 'No available token to refund'
                            if block.number < 2:
                                revert with 0, 17
                            if block.number < 3:
                                revert with 0, 17
                            if block.number < 4:
                                revert with 0, 17
                            _181 = mem[64]
                            mem[mem[64] + 32] = block.number - 2
                            mem[mem[64] + 64] = block.hash(block.number - 3)
                            mem[mem[64] + 96] = block.hash(block.number - 4)
                            _182 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            _184 = sha3(mem[_182 + 32 len mem[_182]])
                            mem[_181 + 128] = 7
                            mem[_181 + 160] = 0x524546554e444200000000000000000000000000000000000000000000000000
                            mem[_181 + 224] = 0x524546554e444200000000000000000000000000000000000000000000000000
                            mem[_181 + 231] = _44
                            mem[_181 + 263] = _184
                            mem[_181 + 192] = 71
                            mem[64] = _181 + 295
                            idx = 0
                            s = 0
                            while idx < _44:
                                _430 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_430] = 7
                                mem[_430 + 32] = 0x524546554e444200000000000000000000000000000000000000000000000000
                                _434 = mem[64]
                                t = 0
                                while t < 7:
                                    mem[t + _434 + 32] = mem[_430 + t + 32]
                                    t = t + 32
                                    continue 
                                mem[_434 + 39] = idx
                                mem[_434 + 71] = s + sha3(mem[_181 + 224 len mem[_181 + 192]])
                                _586 = mem[64]
                                mem[mem[64]] = _434 + -mem[64] + 71
                                mem[64] = _434 + 103
                                _588 = sha3(mem[_586 + 32 len mem[_586]])
                                if _44 < idx:
                                    revert with 0, 17
                                if not _44 - idx:
                                    revert with 0, 18
                                if idx > !(sha3(mem[_586 + 32 len mem[_586]]) % _44 - idx):
                                    revert with 0, 17
                                if idx + (sha3(mem[_586 + 32 len mem[_586]]) % _44 - idx) >= mem[(2 * ceil32(return_data.size)) + 128]:
                                    revert with 0, 50
                                _667 = mem[(32 * idx + (sha3(mem[_586 + 32 len mem[_586]]) % _44 - idx)) + (2 * ceil32(return_data.size)) + 160]
                                if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                                    revert with 0, 50
                                if idx + (sha3(mem[_586 + 32 len mem[_586]]) % _44 - idx) >= mem[(2 * ceil32(return_data.size)) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx + (sha3(mem[_586 + 32 len mem[_586]]) % _44 - idx)) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                                if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160] = _667
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _588
                                continue 
                            if maxRefundAtATime > test266151307():
                                revert with 0, 65
                            _433 = mem[64]
                            mem[mem[64]] = maxRefundAtATime
                            mem[64] = mem[64] + (32 * maxRefundAtATime) + 32
                            if not maxRefundAtATime:
                                idx = 0
                                s = 0
                                while idx < _44:
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    if maxTokenIdToRefund <= mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                                    mem[32] = 5
                                    if tokenRefunds[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]] != 0:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    if s >= mem[_433]:
                                        revert with 0, 50
                                    mem[(32 * s) + _433 + 32] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                                    if s > -2:
                                        revert with 0, 17
                                    if s + 1 < maxRefundAtATime:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    if s + 1 <= 0:
                                        revert with 0, 'No refundable token found'
                                    t = 0
                                    while t < s + 1:
                                        if t >= mem[_433]:
                                            revert with 0, 50
                                        _748 = mem[(32 * t) + _433 + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = owner
                                        mem[mem[64] + 68] = _748
                                        require ext_code.size(stor4)
                                        call stor4.0x42842e0e with:
                                             gas gas_remaining wei
                                            args msg.sender, owner, _748
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t >= mem[_433]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * t) + _433 + 32]
                                        mem[32] = 5
                                        tokenRefunds[mem[0]] = 1
                                        if t == -1:
                                            revert with 0, 17
                                        t = t + 1
                                        continue 
                                    if s + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call msg.sender with:
                                       value (10^18 * s) + 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _788 = mem[64]
                                    mem[mem[64]] = 64
                                    _802 = mem[_433]
                                    mem[mem[64] + 64] = mem[_433]
                                    idx = 0
                                    s = _433 + 32
                                    t = mem[64] + 96
                                    while idx < _802:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_788 + 32] = msg.sender
                                    emit 0xf32d362b: mem[mem[64] len _788 + (32 * _802) + -mem[64] + 96]
                                if s <= 0:
                                    revert with 0, 'No refundable token found'
                                t = 0
                                while t < s:
                                    if t >= mem[_433]:
                                        revert with 0, 50
                                    _745 = mem[(32 * t) + _433 + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = owner
                                    mem[mem[64] + 68] = _745
                                    require ext_code.size(stor4)
                                    call stor4.0x42842e0e with:
                                         gas gas_remaining wei
                                        args msg.sender, owner, _745
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t >= mem[_433]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * t) + _433 + 32]
                                    mem[32] = 5
                                    tokenRefunds[mem[0]] = 1
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if s > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                call msg.sender with:
                                   value 10^18 * s wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _785 = mem[64]
                                mem[mem[64]] = 64
                                _801 = mem[_433]
                                mem[mem[64] + 64] = mem[_433]
                                mem[mem[64] + 96 len 32 * _801] = mem[_433 + 32 len 32 * _801]
                                mem[mem[64] + 32] = msg.sender
                                emit 0xf32d362b: mem[mem[64] len _785 + (32 * _801) + -mem[64] + 96]
                            else:
                                mem[_433 + 32 len 32 * maxRefundAtATime] = call.data[calldata.size len 32 * maxRefundAtATime]
                                idx = 0
                                s = 0
                                while idx < _44:
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    if maxTokenIdToRefund <= mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                                    mem[32] = 5
                                    if tokenRefunds[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]] != 0:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 128]:
                                        revert with 0, 50
                                    if s >= mem[_433]:
                                        revert with 0, 50
                                    mem[(32 * s) + _433 + 32] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 160]
                                    if s > -2:
                                        revert with 0, 17
                                    if s + 1 < maxRefundAtATime:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + 1
                                        continue 
                                    if s + 1 <= 0:
                                        revert with 0, 'No refundable token found'
                                    t = 0
                                    while t < s + 1:
                                        if t >= mem[_433]:
                                            revert with 0, 50
                                        _754 = mem[(32 * t) + _433 + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = owner
                                        mem[mem[64] + 68] = _754
                                        require ext_code.size(stor4)
                                        call stor4.0x42842e0e with:
                                             gas gas_remaining wei
                                            args msg.sender, owner, _754
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if t >= mem[_433]:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * t) + _433 + 32]
                                        mem[32] = 5
                                        tokenRefunds[mem[0]] = 1
                                        if t == -1:
                                            revert with 0, 17
                                        t = t + 1
                                        continue 
                                    if s + 1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    call msg.sender with:
                                       value (10^18 * s) + 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _794 = mem[64]
                                    mem[mem[64]] = 64
                                    _804 = mem[_433]
                                    mem[mem[64] + 64] = mem[_433]
                                    idx = 0
                                    s = _433 + 32
                                    t = mem[64] + 96
                                    while idx < _804:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_794 + 32] = msg.sender
                                    emit 0xf32d362b: mem[mem[64] len _794 + (32 * _804) + -mem[64] + 96]
                                if s <= 0:
                                    revert with 0, 'No refundable token found'
                                t = 0
                                while t < s:
                                    if t >= mem[_433]:
                                        revert with 0, 50
                                    _751 = mem[(32 * t) + _433 + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = owner
                                    mem[mem[64] + 68] = _751
                                    require ext_code.size(stor4)
                                    call stor4.0x42842e0e with:
                                         gas gas_remaining wei
                                        args msg.sender, owner, _751
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t >= mem[_433]:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * t) + _433 + 32]
                                    mem[32] = 5
                                    tokenRefunds[mem[0]] = 1
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if s > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                call msg.sender with:
                                   value 10^18 * s wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _791 = mem[64]
                                mem[mem[64]] = 64
                                _803 = mem[_433]
                                mem[mem[64] + 64] = mem[_433]
                                mem[mem[64] + 96 len 32 * _803] = mem[_433 + 32 len 32 * _803]
                                mem[mem[64] + 32] = msg.sender
                                emit 0xf32d362b: mem[mem[64] len _791 + (32 * _803) + -mem[64] + 96]
}



}
