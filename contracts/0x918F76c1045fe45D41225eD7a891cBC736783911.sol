contract main {




// =====================  Runtime code  =====================


const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


mapping of uint8 stor0;

function sub_5b5bad73(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can call this function.'
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'TERMINATE_BY_NON_ADMIN'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _18
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    selfdestruct(msg.sender)
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        emit Received(msg.sender, msg.value);
    if unknown_0x63fb0b96(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x29380979(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x01fa4150(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x0a87b89b(?????):
                    if unknown_0x0e7a39c8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if not stor0[msg.sender]:
                            if msg.sender != this.address:
                                revert with 0, 'Only admins or self can call this function.'
                        if eth.balance(cd[4]) != cd[36]:
                            revert with 0, 'BALANCE_NOT_AT_TARGET'
                    else:
                        require unknown_0x1785f53c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not stor0[msg.sender]:
                            revert with 0, 'Only admins can call this function.'
                        stor0[address(cd[4])] = 0
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if not stor0[msg.sender]:
                        if msg.sender != this.address:
                            revert with 0, 'Only admins or self can call this function.'
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[68]:
                        revert with 0, 'BALANCE_BELOW_TARGET'
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                if not stor0[msg.sender]:
                    revert with 0, 'Only admins can call this function.'
                if not stor0[msg.sender]:
                    revert with 0, 'DRAIN_TO_NON_ADMIN'
                if stor0[msg.sender]:
                    mem[0] = msg.sender
                    mem[32] = 0
                    if not stor0[address(msg.sender)]:
                        revert with 0, 'TRANSFER_TO_NON_ADMIN'
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _588 = mem[_583]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _588
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _609 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_609] == bool(mem[_609])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if msg.sender != this.address:
                        revert with 0, 'Only admins or self can call this function.'
                    mem[0] = msg.sender
                    mem[32] = 0
                    if not stor0[address(msg.sender)]:
                        revert with 0, 'TRANSFER_TO_NON_ADMIN'
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _584 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _589 = mem[_584]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _589
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_610] == bool(mem[_610])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            if unknown_0x29380979(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if not stor0[msg.sender]:
                    if msg.sender != this.address:
                        revert with 0, 'Only admins or self can call this function.'
                if eth.balance(cd[4]) < cd[36]:
                    revert with 0, 'BALANCE_BELOW_TARGET'
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x4395a024(?????):
                    if unknown_0x46b61695(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if not stor0[msg.sender]:
                            if msg.sender != this.address:
                                revert with 0, 'Only admins or self can call this function.'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] != cd[68]:
                            revert with 0, 'BALANCE_NOT_AT_TARGET'
                    require unknown_0x5b5bad73(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    if not stor0[msg.sender]:
                        revert with 0, 'Only admins can call this function.'
                    mem[0] = msg.sender
                    mem[32] = 0
                    if not stor0[msg.sender]:
                        revert with 0, 'TERMINATE_BY_NON_ADMIN'
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _585 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _590 = mem[_585]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _590
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _612 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_612] == bool(mem[_612])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    selfdestruct(msg.sender)
                require calldata.size - 4 >= 96
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                mem[0] = msg.sender
                if not stor0[msg.sender]:
                    revert with 0, 'Only admins can call this function.'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    _611 = mem[64]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                       value cd[((32 * idx) + cd[68] + 36)] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _611 + -mem[64] - 4]
                    if return_data.size:
                        _637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_637] = return_data.size
                        mem[_637 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SUB_TX_FAILED'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 21000 > !gas_remaining:
                    revert with 0, 17
                if gas_remaining + 21000 < gas_remaining:
                    revert with 0, 17
                if 21000 > !(16 * calldata.size):
                    revert with 0, 17
                if 14154 > !((16 * calldata.size) + 21000):
                    revert with 0, 17
                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, (16 * calldata.size) + 35154 / 41947
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if unknown_0x8d403b28(?????) > uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0x63fb0b96(?????):
            if unknown_0x70480275(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if not stor0[msg.sender]:
                    revert with 0, 'Only admins can call this function.'
                stor0[address(cd[4])] = 1
            else:
                if unknown_0x8014bad3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    require cd[36] == address(cd[36])
                    if stor0[msg.sender]:
                        mem[0] = address(cd[36])
                        mem[32] = 0
                        if not stor0[address(cd[36])]:
                            revert with 0, 'TRANSFER_TO_NON_ADMIN'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _586 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _593 = mem[_586]
                            mem[mem[64] + 4] = address(cd[36])
                            mem[mem[64] + 36] = _593
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), _593
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _613 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_613] == bool(mem[_613])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if msg.sender != this.address:
                            revert with 0, 'Only admins or self can call this function.'
                        mem[0] = address(cd[36])
                        mem[32] = 0
                        if not stor0[address(cd[36])]:
                            revert with 0, 'TRANSFER_TO_NON_ADMIN'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _587 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _594 = mem[_587]
                            mem[mem[64] + 4] = address(cd[36])
                            mem[mem[64] + 36] = _594
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), _594
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _614 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_614] == bool(mem[_614])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    require unknown_0x85e23dc6(?????) == uint32(call.func_hash) >> 224
                    require calldata.size - 4 >= 96
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    require ('cd', 68).length <= test266151307()
                    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                    if not stor0[msg.sender]:
                        revert with 0, 'Only admins can call this function.'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 68).length:
                            revert with 0, 50
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                        call address(cd[((32 * idx) + cd[4] + 36)]) with:
                           value cd[((32 * idx) + cd[68] + 36)] wei
                             gas gas_remaining wei
                            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                        if return_data.size:
                            _638 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_638] = return_data.size
                            mem[_638 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        require ('cd', 4).length <= test266151307()
        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        require ('cd', 36).length <= test266151307()
        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
        mem[0] = msg.sender
        mem[32] = 0
        if stor0[msg.sender]:
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 36).length
            mem[64] = (32 * ('cd', 36).length) + 160
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    _607 = mem[64]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _607 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = 96
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require mem[96] >= 68
                        _659 = mem[100]
                        require mem[100] >= 32
                        _689 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _717 = mem[mem[132] + 132]
                        if mem[mem[132] + 132] > test266151307():
                            revert with 0, 65
                        _725 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                        mem[_725] = mem[mem[132] + 132]
                        require _689 + _717 + 164 <= _659 + 132
                        idx = 0
                        while idx < _717:
                            mem[idx + _725 + 32] = mem[idx + _689 + 164]
                            idx = idx + 32
                            continue 
                        if ceil32(_717) <= _717:
                            _965 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _989 = mem[_725]
                            mem[mem[64] + 36] = mem[_725]
                            idx = 0
                            while idx < _989:
                                mem[idx + _965 + 68] = mem[idx + _725 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_989) > _989:
                                mem[_989 + _965 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_989) + _965 + -mem[64] + 68
                        mem[_717 + _725 + 32] = 0
                        _966 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _990 = mem[_725]
                        mem[mem[64] + 36] = mem[_725]
                        idx = 0
                        while idx < _990:
                            mem[idx + _966 + 68] = mem[idx + _725 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_990) > _990:
                            mem[_990 + _966 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_990) + _966 + -mem[64] + 68
                    _626 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_626] = return_data.size
                    mem[_626 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _626
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 68
                    _660 = Mask(224, 0, return_data.size), mem[_626 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_626 + 32 len 4] >= 32
                    _690 = mem[_626 + 36]
                    require mem[_626 + 36] <= test266151307()
                    require _626 + mem[_626 + 36] + 67 < _626 + Mask(224, 0, return_data.size), mem[_626 + 32 len 4] + 36
                    _718 = mem[_626 + mem[_626 + 36] + 36]
                    if mem[_626 + mem[_626 + 36] + 36] > test266151307():
                        revert with 0, 65
                    _726 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_626 + mem[_626 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_626 + mem[_626 + 36] + 36])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_626 + mem[_626 + 36] + 36])) + 1
                    mem[_726] = _718
                    require _690 + _718 + 68 <= _660 + 36
                    idx = 0
                    while idx < _718:
                        mem[idx + _726 + 32] = mem[idx + _626 + _690 + 68]
                        idx = idx + 32
                        continue 
                    if ceil32(_718) <= _718:
                        _967 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _718
                        idx = 0
                        while idx < _718:
                            mem[idx + _967 + 68] = mem[idx + _726 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_718) > _718:
                            mem[_718 + _967 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_718) + _967 + -mem[64] + 68
                    mem[_718 + _726 + 32] = 0
                    _968 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _718
                    idx = 0
                    while idx < _718:
                        mem[idx + _968 + 68] = mem[idx + _726 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_718) > _718:
                        mem[_718 + _968 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_718) + _968 + -mem[64] + 68
                _529 = mem[64]
                mem[mem[64]] = 32
                _533 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                u = mem[64] + (32 * _533) + 64
                while idx < _533:
                    mem[t] = u + -_529 - 64
                    _937 = mem[s]
                    _950 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _950:
                        mem[v + u + 32] = mem[v + _937 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_950) > _950:
                        mem[_950 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_950) + u + 32
                    continue 
            else:
                mem[160] = 96
                s = 160
                idx = ('cd', 36).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    _1065 = mem[64]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _1065 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = 96
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require mem[96] >= 68
                        _1085 = mem[100]
                        require mem[100] >= 32
                        _1101 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _1109 = mem[mem[132] + 132]
                        if mem[mem[132] + 132] > test266151307():
                            revert with 0, 65
                        _1113 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                        mem[_1113] = mem[mem[132] + 132]
                        require _1101 + _1109 + 164 <= _1085 + 132
                        idx = 0
                        while idx < _1109:
                            mem[idx + _1113 + 32] = mem[idx + _1101 + 164]
                            idx = idx + 32
                            continue 
                        if ceil32(_1109) <= _1109:
                            _1253 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1305 = mem[_1113]
                            mem[mem[64] + 36] = mem[_1113]
                            idx = 0
                            while idx < _1305:
                                mem[idx + _1253 + 68] = mem[idx + _1113 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1305) > _1305:
                                mem[_1305 + _1253 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1305) + _1253 + -mem[64] + 68
                        mem[_1109 + _1113 + 32] = 0
                        _1254 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1306 = mem[_1113]
                        mem[mem[64] + 36] = mem[_1113]
                        idx = 0
                        while idx < _1306:
                            mem[idx + _1254 + 68] = mem[idx + _1113 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1306) > _1306:
                            mem[_1306 + _1254 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1306) + _1254 + -mem[64] + 68
                    _1071 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1071] = return_data.size
                    mem[_1071 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _1071
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 68
                    _1086 = Mask(224, 0, return_data.size), mem[_1071 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_1071 + 32 len 4] >= 32
                    _1102 = mem[_1071 + 36]
                    require mem[_1071 + 36] <= test266151307()
                    require _1071 + mem[_1071 + 36] + 67 < _1071 + Mask(224, 0, return_data.size), mem[_1071 + 32 len 4] + 36
                    _1110 = mem[_1071 + mem[_1071 + 36] + 36]
                    if mem[_1071 + mem[_1071 + 36] + 36] > test266151307():
                        revert with 0, 65
                    _1114 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1071 + mem[_1071 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1071 + mem[_1071 + 36] + 36])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1071 + mem[_1071 + 36] + 36])) + 1
                    mem[_1114] = _1110
                    require _1102 + _1110 + 68 <= _1086 + 36
                    idx = 0
                    while idx < _1110:
                        mem[idx + _1114 + 32] = mem[idx + _1071 + _1102 + 68]
                        idx = idx + 32
                        continue 
                    if ceil32(_1110) <= _1110:
                        _1255 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1110
                        idx = 0
                        while idx < _1110:
                            mem[idx + _1255 + 68] = mem[idx + _1114 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1110) > _1110:
                            mem[_1110 + _1255 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1110) + _1255 + -mem[64] + 68
                    mem[_1110 + _1114 + 32] = 0
                    _1256 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1110
                    idx = 0
                    while idx < _1110:
                        mem[idx + _1256 + 68] = mem[idx + _1114 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1110) > _1110:
                        mem[_1110 + _1256 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1110) + _1256 + -mem[64] + 68
                _951 = mem[64]
                mem[mem[64]] = 32
                _961 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                u = mem[64] + (32 * _961) + 64
                while idx < _961:
                    mem[t] = u + -_951 - 64
                    _1218 = mem[s]
                    _1246 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _1246:
                        mem[v + u + 32] = mem[v + _1218 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1246) > _1246:
                        mem[_1246 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1246) + u + 32
                    continue 
        else:
            if msg.sender != this.address:
                revert with 0, 'Only admins or self can call this function.'
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 36).length
            mem[64] = (32 * ('cd', 36).length) + 160
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]) with:
                         gas gas_remaining wei
                        args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    if not return_data.size:
                        if ext_call.success:
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = 96
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require mem[96] >= 68
                        _662 = mem[100]
                        require mem[100] >= 32
                        _695 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _719 = mem[mem[132] + 132]
                        if mem[mem[132] + 132] > test266151307():
                            revert with 0, 65
                        _729 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                        mem[_729] = mem[mem[132] + 132]
                        require _695 + _719 + 164 <= _662 + 132
                        idx = 0
                        while idx < _719:
                            mem[idx + _729 + 32] = mem[idx + _695 + 164]
                            idx = idx + 32
                            continue 
                        if ceil32(_719) <= _719:
                            _969 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _995 = mem[_729]
                            mem[mem[64] + 36] = mem[_729]
                            idx = 0
                            while idx < _995:
                                mem[idx + _969 + 68] = mem[idx + _729 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_995) > _995:
                                mem[_995 + _969 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_995) + _969 + -mem[64] + 68
                        mem[_719 + _729 + 32] = 0
                        _970 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _996 = mem[_729]
                        mem[mem[64] + 36] = mem[_729]
                        idx = 0
                        while idx < _996:
                            mem[idx + _970 + 68] = mem[idx + _729 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_996) > _996:
                            mem[_996 + _970 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_996) + _970 + -mem[64] + 68
                    _628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_628] = return_data.size
                    mem[_628 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _628
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 68
                    _663 = Mask(224, 0, return_data.size), mem[_628 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_628 + 32 len 4] >= 32
                    _696 = mem[_628 + 36]
                    require mem[_628 + 36] <= test266151307()
                    require _628 + mem[_628 + 36] + 67 < _628 + Mask(224, 0, return_data.size), mem[_628 + 32 len 4] + 36
                    _720 = mem[_628 + mem[_628 + 36] + 36]
                    if mem[_628 + mem[_628 + 36] + 36] > test266151307():
                        revert with 0, 65
                    _730 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_628 + mem[_628 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_628 + mem[_628 + 36] + 36])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_628 + mem[_628 + 36] + 36])) + 1
                    mem[_730] = _720
                    require _696 + _720 + 68 <= _663 + 36
                    idx = 0
                    while idx < _720:
                        mem[idx + _730 + 32] = mem[idx + _628 + _696 + 68]
                        idx = idx + 32
                        continue 
                    if ceil32(_720) <= _720:
                        _971 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _720
                        idx = 0
                        while idx < _720:
                            mem[idx + _971 + 68] = mem[idx + _730 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_720) > _720:
                            mem[_720 + _971 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_720) + _971 + -mem[64] + 68
                    mem[_720 + _730 + 32] = 0
                    _972 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _720
                    idx = 0
                    while idx < _720:
                        mem[idx + _972 + 68] = mem[idx + _730 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_720) > _720:
                        mem[_720 + _972 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_720) + _972 + -mem[64] + 68
                _530 = mem[64]
                mem[mem[64]] = 32
                _534 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                u = mem[64] + (32 * _534) + 64
                while idx < _534:
                    mem[t] = u + -_530 - 64
                    _940 = mem[s]
                    _953 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _953:
                        mem[v + u + 32] = mem[v + _940 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_953) > _953:
                        mem[_953 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_953) + u + 32
                    continue 
            else:
                mem[160] = 96
                s = 160
                idx = ('cd', 36).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]) with:
                         gas gas_remaining wei
                        args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    if not return_data.size:
                        if ext_call.success:
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = 96
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require mem[96] >= 68
                        _1087 = mem[100]
                        require mem[100] >= 32
                        _1103 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _1111 = mem[mem[132] + 132]
                        if mem[mem[132] + 132] > test266151307():
                            revert with 0, 65
                        _1115 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                        mem[_1115] = mem[mem[132] + 132]
                        require _1103 + _1111 + 164 <= _1087 + 132
                        idx = 0
                        while idx < _1111:
                            mem[idx + _1115 + 32] = mem[idx + _1103 + 164]
                            idx = idx + 32
                            continue 
                        if ceil32(_1111) <= _1111:
                            _1257 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1309 = mem[_1115]
                            mem[mem[64] + 36] = mem[_1115]
                            idx = 0
                            while idx < _1309:
                                mem[idx + _1257 + 68] = mem[idx + _1115 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1309) > _1309:
                                mem[_1309 + _1257 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1309) + _1257 + -mem[64] + 68
                        mem[_1111 + _1115 + 32] = 0
                        _1258 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1310 = mem[_1115]
                        mem[mem[64] + 36] = mem[_1115]
                        idx = 0
                        while idx < _1310:
                            mem[idx + _1258 + 68] = mem[idx + _1115 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1310) > _1310:
                            mem[_1310 + _1258 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1310) + _1258 + -mem[64] + 68
                    _1072 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1072] = return_data.size
                    mem[_1072 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _1072
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 68
                    _1088 = Mask(224, 0, return_data.size), mem[_1072 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_1072 + 32 len 4] >= 32
                    _1104 = mem[_1072 + 36]
                    require mem[_1072 + 36] <= test266151307()
                    require _1072 + mem[_1072 + 36] + 67 < _1072 + Mask(224, 0, return_data.size), mem[_1072 + 32 len 4] + 36
                    _1112 = mem[_1072 + mem[_1072 + 36] + 36]
                    if mem[_1072 + mem[_1072 + 36] + 36] > test266151307():
                        revert with 0, 65
                    _1116 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1072 + mem[_1072 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1072 + mem[_1072 + 36] + 36])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1072 + mem[_1072 + 36] + 36])) + 1
                    mem[_1116] = _1112
                    require _1104 + _1112 + 68 <= _1088 + 36
                    idx = 0
                    while idx < _1112:
                        mem[idx + _1116 + 32] = mem[idx + _1072 + _1104 + 68]
                        idx = idx + 32
                        continue 
                    if ceil32(_1112) <= _1112:
                        _1259 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1112
                        idx = 0
                        while idx < _1112:
                            mem[idx + _1259 + 68] = mem[idx + _1116 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1112) > _1112:
                            mem[_1112 + _1259 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1112) + _1259 + -mem[64] + 68
                    mem[_1112 + _1116 + 32] = 0
                    _1260 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1112
                    idx = 0
                    while idx < _1112:
                        mem[idx + _1260 + 68] = mem[idx + _1116 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1112) > _1112:
                        mem[_1112 + _1260 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1112) + _1260 + -mem[64] + 68
                _954 = mem[64]
                mem[mem[64]] = 32
                _962 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                u = mem[64] + (32 * _962) + 64
                while idx < _962:
                    mem[t] = u + -_954 - 64
                    _1226 = mem[s]
                    _1248 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _1248:
                        mem[v + u + 32] = mem[v + _1226 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1248) > _1248:
                        mem[_1248 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1248) + u + 32
                    continue 
    else:
        if unknown_0xc92aecc4(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc92aecc4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0x4946c0e9f43f4dee607b0ef1fa1c
            if unknown_0xe264172c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not stor0[msg.sender]:
                    revert with 0, 'Only admins can call this function.'
                if not stor0[msg.sender]:
                    revert with 0, 'DRAIN_TO_NON_ADMIN'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'FAILED_ETH_RETURN'
            else:
                require unknown_0xfbb95f5a(?????) == uint32(call.func_hash) >> 224
                require calldata.size - 4 >= 96
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                if not stor0[msg.sender]:
                    revert with 0, 'Only admins can call this function.'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]) with:
                       value cd[((32 * idx) + cd[68] + 36)] wei
                         gas gas_remaining wei
                        args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    if return_data.size:
                        _644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_644] = return_data.size
                        mem[_644 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 21000 > !gas_remaining:
                    revert with 0, 17
                if gas_remaining + 21000 < gas_remaining:
                    revert with 0, 17
                if 21000 > !(16 * calldata.size):
                    revert with 0, 17
                if 14154 > !((16 * calldata.size) + 21000):
                    revert with 0, 17
                require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
                call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, (16 * calldata.size) + 35154 / 41947
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            ('bool', 'ext_call.success')
        if uint32(call.func_hash) >> 224 != unknown_0x8d403b28(?????):
            require unknown_0xb5593d08(?????) == uint32(call.func_hash) >> 224
            require calldata.size - 4 >= 96
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            require ('cd', 36).length <= test266151307()
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            require cd[68] <= test266151307()
            require cd[68] + 35 < calldata.size
            require ('cd', 68).length <= test266151307()
            require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
            if not stor0[msg.sender]:
                revert with 0, 'Only admins can call this function.'
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                   value cd[((32 * idx) + cd[68] + 36)] wei
                     gas gas_remaining wei
                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_643] = return_data.size
                    mem[_643 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SUB_TX_FAILED'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        require calldata.size - 4 >= 96
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        require ('cd', 4).length <= test266151307()
        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        require ('cd', 36).length <= test266151307()
        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
        require cd[68] <= test266151307()
        require cd[68] + 35 < calldata.size
        require ('cd', 68).length <= test266151307()
        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
        mem[0] = msg.sender
        mem[32] = 0
        if stor0[msg.sender]:
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 36).length
            mem[64] = (32 * ('cd', 36).length) + 160
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    _616 = mem[64]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                       value cd[((32 * idx) + cd[68] + 36)] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _616 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = 96
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require mem[96] >= 68
                        _681 = mem[100]
                        require mem[100] >= 32
                        _705 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _733 = mem[mem[132] + 132]
                        if mem[mem[132] + 132] > test266151307():
                            revert with 0, 65
                        _737 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                        mem[_737] = mem[mem[132] + 132]
                        require _705 + _733 + 164 <= _681 + 132
                        idx = 0
                        while idx < _733:
                            mem[idx + _737 + 32] = mem[idx + _705 + 164]
                            idx = idx + 32
                            continue 
                        if ceil32(_733) <= _733:
                            _973 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1001 = mem[_737]
                            mem[mem[64] + 36] = mem[_737]
                            idx = 0
                            while idx < _1001:
                                mem[idx + _973 + 68] = mem[idx + _737 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1001) > _1001:
                                mem[_1001 + _973 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1001) + _973 + -mem[64] + 68
                        mem[_733 + _737 + 32] = 0
                        _974 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1002 = mem[_737]
                        mem[mem[64] + 36] = mem[_737]
                        idx = 0
                        while idx < _1002:
                            mem[idx + _974 + 68] = mem[idx + _737 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1002) > _1002:
                            mem[_1002 + _974 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1002) + _974 + -mem[64] + 68
                    _639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_639] = return_data.size
                    mem[_639 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _639
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 68
                    _682 = Mask(224, 0, return_data.size), mem[_639 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_639 + 32 len 4] >= 32
                    _706 = mem[_639 + 36]
                    require mem[_639 + 36] <= test266151307()
                    require _639 + mem[_639 + 36] + 67 < _639 + Mask(224, 0, return_data.size), mem[_639 + 32 len 4] + 36
                    _734 = mem[_639 + mem[_639 + 36] + 36]
                    if mem[_639 + mem[_639 + 36] + 36] > test266151307():
                        revert with 0, 65
                    _738 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_639 + mem[_639 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_639 + mem[_639 + 36] + 36])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_639 + mem[_639 + 36] + 36])) + 1
                    mem[_738] = _734
                    require _706 + _734 + 68 <= _682 + 36
                    idx = 0
                    while idx < _734:
                        mem[idx + _738 + 32] = mem[idx + _639 + _706 + 68]
                        idx = idx + 32
                        continue 
                    if ceil32(_734) <= _734:
                        _975 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _734
                        idx = 0
                        while idx < _734:
                            mem[idx + _975 + 68] = mem[idx + _738 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_734) > _734:
                            mem[_734 + _975 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_734) + _975 + -mem[64] + 68
                    mem[_734 + _738 + 32] = 0
                    _976 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _734
                    idx = 0
                    while idx < _734:
                        mem[idx + _976 + 68] = mem[idx + _738 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_734) > _734:
                        mem[_734 + _976 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_734) + _976 + -mem[64] + 68
                _531 = mem[64]
                mem[mem[64]] = 32
                _535 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                u = mem[64] + (32 * _535) + 64
                while idx < _535:
                    mem[t] = u + -_531 - 64
                    _943 = mem[s]
                    _956 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _956:
                        mem[v + u + 32] = mem[v + _943 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_956) > _956:
                        mem[_956 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_956) + u + 32
                    continue 
            else:
                mem[160] = 96
                s = 160
                idx = ('cd', 36).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]) with:
                       value cd[((32 * idx) + cd[68] + 36)] wei
                         gas gas_remaining wei
                        args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    if not return_data.size:
                        if ext_call.success:
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = 96
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require mem[96] >= 68
                        _1097 = mem[100]
                        require mem[100] >= 32
                        _1105 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _1117 = mem[mem[132] + 132]
                        if mem[mem[132] + 132] > test266151307():
                            revert with 0, 65
                        _1121 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                        mem[_1121] = mem[mem[132] + 132]
                        require _1105 + _1117 + 164 <= _1097 + 132
                        idx = 0
                        while idx < _1117:
                            mem[idx + _1121 + 32] = mem[idx + _1105 + 164]
                            idx = idx + 32
                            continue 
                        if ceil32(_1117) <= _1117:
                            _1261 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1313 = mem[_1121]
                            mem[mem[64] + 36] = mem[_1121]
                            idx = 0
                            while idx < _1313:
                                mem[idx + _1261 + 68] = mem[idx + _1121 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1313) > _1313:
                                mem[_1313 + _1261 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1313) + _1261 + -mem[64] + 68
                        mem[_1117 + _1121 + 32] = 0
                        _1262 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1314 = mem[_1121]
                        mem[mem[64] + 36] = mem[_1121]
                        idx = 0
                        while idx < _1314:
                            mem[idx + _1262 + 68] = mem[idx + _1121 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1314) > _1314:
                            mem[_1314 + _1262 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1314) + _1262 + -mem[64] + 68
                    _1075 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1075] = return_data.size
                    mem[_1075 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _1075
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 68
                    _1098 = Mask(224, 0, return_data.size), mem[_1075 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_1075 + 32 len 4] >= 32
                    _1106 = mem[_1075 + 36]
                    require mem[_1075 + 36] <= test266151307()
                    require _1075 + mem[_1075 + 36] + 67 < _1075 + Mask(224, 0, return_data.size), mem[_1075 + 32 len 4] + 36
                    _1118 = mem[_1075 + mem[_1075 + 36] + 36]
                    if mem[_1075 + mem[_1075 + 36] + 36] > test266151307():
                        revert with 0, 65
                    _1122 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1075 + mem[_1075 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1075 + mem[_1075 + 36] + 36])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1075 + mem[_1075 + 36] + 36])) + 1
                    mem[_1122] = _1118
                    require _1106 + _1118 + 68 <= _1098 + 36
                    idx = 0
                    while idx < _1118:
                        mem[idx + _1122 + 32] = mem[idx + _1075 + _1106 + 68]
                        idx = idx + 32
                        continue 
                    if ceil32(_1118) <= _1118:
                        _1263 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1118
                        idx = 0
                        while idx < _1118:
                            mem[idx + _1263 + 68] = mem[idx + _1122 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1118) > _1118:
                            mem[_1118 + _1263 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1118) + _1263 + -mem[64] + 68
                    mem[_1118 + _1122 + 32] = 0
                    _1264 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1118
                    idx = 0
                    while idx < _1118:
                        mem[idx + _1264 + 68] = mem[idx + _1122 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1118) > _1118:
                        mem[_1118 + _1264 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1118) + _1264 + -mem[64] + 68
                _957 = mem[64]
                mem[mem[64]] = 32
                _963 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                u = mem[64] + (32 * _963) + 64
                while idx < _963:
                    mem[t] = u + -_957 - 64
                    _1234 = mem[s]
                    _1250 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _1250:
                        mem[v + u + 32] = mem[v + _1234 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1250) > _1250:
                        mem[_1250 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1250) + u + 32
                    continue 
        else:
            if msg.sender != this.address:
                revert with 0, 'Only admins or self can call this function.'
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 36).length
            mem[64] = (32 * ('cd', 36).length) + 160
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]) with:
                       value cd[((32 * idx) + cd[68] + 36)] wei
                         gas gas_remaining wei
                        args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    if not return_data.size:
                        if ext_call.success:
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = 96
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require mem[96] >= 68
                        _684 = mem[100]
                        require mem[100] >= 32
                        _711 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _735 = mem[mem[132] + 132]
                        if mem[mem[132] + 132] > test266151307():
                            revert with 0, 65
                        _741 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                        mem[_741] = mem[mem[132] + 132]
                        require _711 + _735 + 164 <= _684 + 132
                        idx = 0
                        while idx < _735:
                            mem[idx + _741 + 32] = mem[idx + _711 + 164]
                            idx = idx + 32
                            continue 
                        if ceil32(_735) <= _735:
                            _977 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1007 = mem[_741]
                            mem[mem[64] + 36] = mem[_741]
                            idx = 0
                            while idx < _1007:
                                mem[idx + _977 + 68] = mem[idx + _741 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1007) > _1007:
                                mem[_1007 + _977 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1007) + _977 + -mem[64] + 68
                        mem[_735 + _741 + 32] = 0
                        _978 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1008 = mem[_741]
                        mem[mem[64] + 36] = mem[_741]
                        idx = 0
                        while idx < _1008:
                            mem[idx + _978 + 68] = mem[idx + _741 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1008) > _1008:
                            mem[_1008 + _978 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1008) + _978 + -mem[64] + 68
                    _641 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_641] = return_data.size
                    mem[_641 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _641
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 68
                    _685 = Mask(224, 0, return_data.size), mem[_641 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_641 + 32 len 4] >= 32
                    _712 = mem[_641 + 36]
                    require mem[_641 + 36] <= test266151307()
                    require _641 + mem[_641 + 36] + 67 < _641 + Mask(224, 0, return_data.size), mem[_641 + 32 len 4] + 36
                    _736 = mem[_641 + mem[_641 + 36] + 36]
                    if mem[_641 + mem[_641 + 36] + 36] > test266151307():
                        revert with 0, 65
                    _742 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_641 + mem[_641 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_641 + mem[_641 + 36] + 36])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_641 + mem[_641 + 36] + 36])) + 1
                    mem[_742] = _736
                    require _712 + _736 + 68 <= _685 + 36
                    idx = 0
                    while idx < _736:
                        mem[idx + _742 + 32] = mem[idx + _641 + _712 + 68]
                        idx = idx + 32
                        continue 
                    if ceil32(_736) <= _736:
                        _979 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _736
                        idx = 0
                        while idx < _736:
                            mem[idx + _979 + 68] = mem[idx + _742 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_736) > _736:
                            mem[_736 + _979 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_736) + _979 + -mem[64] + 68
                    mem[_736 + _742 + 32] = 0
                    _980 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _736
                    idx = 0
                    while idx < _736:
                        mem[idx + _980 + 68] = mem[idx + _742 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_736) > _736:
                        mem[_736 + _980 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_736) + _980 + -mem[64] + 68
                _532 = mem[64]
                mem[mem[64]] = 32
                _536 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                u = mem[64] + (32 * _536) + 64
                while idx < _536:
                    mem[t] = u + -_532 - 64
                    _946 = mem[s]
                    _959 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _959:
                        mem[v + u + 32] = mem[v + _946 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_959) > _959:
                        mem[_959 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_959) + u + 32
                    continue 
            else:
                mem[160] = 96
                s = 160
                idx = ('cd', 36).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]) with:
                       value cd[((32 * idx) + cd[68] + 36)] wei
                         gas gas_remaining wei
                        args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    if not return_data.size:
                        if ext_call.success:
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = 96
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require mem[96] >= 68
                        _1099 = mem[100]
                        require mem[100] >= 32
                        _1107 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _1119 = mem[mem[132] + 132]
                        if mem[mem[132] + 132] > test266151307():
                            revert with 0, 65
                        _1123 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                        mem[_1123] = mem[mem[132] + 132]
                        require _1107 + _1119 + 164 <= _1099 + 132
                        idx = 0
                        while idx < _1119:
                            mem[idx + _1123 + 32] = mem[idx + _1107 + 164]
                            idx = idx + 32
                            continue 
                        if ceil32(_1119) <= _1119:
                            _1265 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1317 = mem[_1123]
                            mem[mem[64] + 36] = mem[_1123]
                            idx = 0
                            while idx < _1317:
                                mem[idx + _1265 + 68] = mem[idx + _1123 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1317) > _1317:
                                mem[_1317 + _1265 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1317) + _1265 + -mem[64] + 68
                        mem[_1119 + _1123 + 32] = 0
                        _1266 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1318 = mem[_1123]
                        mem[mem[64] + 36] = mem[_1123]
                        idx = 0
                        while idx < _1318:
                            mem[idx + _1266 + 68] = mem[idx + _1123 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1318) > _1318:
                            mem[_1318 + _1266 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1318) + _1266 + -mem[64] + 68
                    _1076 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1076] = return_data.size
                    mem[_1076 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[128]:
                            revert with 0, 50
                        mem[(32 * idx) + 160] = _1076
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 68
                    _1100 = Mask(224, 0, return_data.size), mem[_1076 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_1076 + 32 len 4] >= 32
                    _1108 = mem[_1076 + 36]
                    require mem[_1076 + 36] <= test266151307()
                    require _1076 + mem[_1076 + 36] + 67 < _1076 + Mask(224, 0, return_data.size), mem[_1076 + 32 len 4] + 36
                    _1120 = mem[_1076 + mem[_1076 + 36] + 36]
                    if mem[_1076 + mem[_1076 + 36] + 36] > test266151307():
                        revert with 0, 65
                    _1124 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1076 + mem[_1076 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1076 + mem[_1076 + 36] + 36])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1076 + mem[_1076 + 36] + 36])) + 1
                    mem[_1124] = _1120
                    require _1108 + _1120 + 68 <= _1100 + 36
                    idx = 0
                    while idx < _1120:
                        mem[idx + _1124 + 32] = mem[idx + _1076 + _1108 + 68]
                        idx = idx + 32
                        continue 
                    if ceil32(_1120) <= _1120:
                        _1267 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1120
                        idx = 0
                        while idx < _1120:
                            mem[idx + _1267 + 68] = mem[idx + _1124 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1120) > _1120:
                            mem[_1120 + _1267 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1120) + _1267 + -mem[64] + 68
                    mem[_1120 + _1124 + 32] = 0
                    _1268 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1120
                    idx = 0
                    while idx < _1120:
                        mem[idx + _1268 + 68] = mem[idx + _1124 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1120) > _1120:
                        mem[_1120 + _1268 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1120) + _1268 + -mem[64] + 68
                _960 = mem[64]
                mem[mem[64]] = 32
                _964 = mem[128]
                mem[mem[64] + 32] = mem[128]
                idx = 0
                s = 160
                t = mem[64] + 64
                u = mem[64] + (32 * _964) + 64
                while idx < _964:
                    mem[t] = u + -_960 - 64
                    _1242 = mem[s]
                    _1252 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _1252:
                        mem[v + u + 32] = mem[v + _1242 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1252) > _1252:
                        mem[_1252 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1252) + u + 32
                    continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can call this function.'
    stor0[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can call this function.'
    stor0[address(arg1)] = 0
}

function sub_29380979(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor0[msg.sender]:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins or self can call this function.'
    if eth.balance(arg1) < arg2:
        revert with 0, 'BALANCE_BELOW_TARGET'
}

function sub_0e7a39c8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor0[msg.sender]:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins or self can call this function.'
    if eth.balance(arg1) != arg2:
        revert with 0, 'BALANCE_NOT_AT_TARGET'
}

function drainETH() {
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can call this function.'
    if not stor0[msg.sender]:
        revert with 0, 'DRAIN_TO_NON_ADMIN'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'FAILED_ETH_RETURN'
}

function sub_0a87b89b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor0[msg.sender]:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins or self can call this function.'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'BALANCE_BELOW_TARGET'
}

function sub_46b61695(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor0[msg.sender]:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins or self can call this function.'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != arg3:
        revert with 0, 'BALANCE_NOT_AT_TARGET'
}

function sub_85e23dc6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can call this function.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[68] + 36)] wei
             gas gas_remaining wei
            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        if return_data.size:
            _9 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_9] = return_data.size
            mem[_9 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b5593d08(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can call this function.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[68] + 36)] wei
             gas gas_remaining wei
            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        if return_data.size:
            _13 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_13] = return_data.size
            mem[_13 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SUB_TX_FAILED'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fbb95f5a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can call this function.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[68] + 36)] wei
             gas gas_remaining wei
            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        if return_data.size:
            _11 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_11] = return_data.size
            mem[_11 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4395a024(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can call this function.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[68] + 36)] wei
             gas gas_remaining wei
            args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        if return_data.size:
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_15] = return_data.size
            mem[_15 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SUB_TX_FAILED'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferAll(address[] arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if stor0[msg.sender]:
        mem[0] = arg2
        mem[32] = 0
        if not stor0[address(arg2)]:
            revert with 0, 'TRANSFER_TO_NON_ADMIN'
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _32 = mem[_30]
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = _32
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), _32
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_38] == bool(mem[_38])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins or self can call this function.'
        mem[0] = arg2
        mem[32] = 0
        if not stor0[address(arg2)]:
            revert with 0, 'TRANSFER_TO_NON_ADMIN'
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _33 = mem[_31]
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = _33
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), _33
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_39] == bool(mem[_39])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_01fa4150(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can call this function.'
    if not stor0[msg.sender]:
        revert with 0, 'DRAIN_TO_NON_ADMIN'
    if stor0[msg.sender]:
        mem[0] = msg.sender
        mem[32] = 0
        if not stor0[address(msg.sender)]:
            revert with 0, 'TRANSFER_TO_NON_ADMIN'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _38 = mem[_36]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _38
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _38
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _44 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_44] == bool(mem[_44])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins or self can call this function.'
        mem[0] = msg.sender
        mem[32] = 0
        if not stor0[address(msg.sender)]:
            revert with 0, 'TRANSFER_TO_NON_ADMIN'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _39 = mem[_37]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _39
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _39
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_45] == bool(mem[_45])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_63fb0b96(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if stor0[msg.sender]:
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[96] = ('cd', 36).length
        mem[64] = (32 * ('cd', 36).length) + 128
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                     gas gas_remaining wei
                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require mem[96] >= 68
                    _220 = mem[100]
                    require mem[100] >= 32
                    _226 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _242 = mem[mem[132] + 132]
                    if mem[mem[132] + 132] > test266151307():
                        revert with 0, 65
                    _246 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                    mem[_246] = mem[mem[132] + 132]
                    require _226 + _242 + 164 <= _220 + 132
                    idx = 0
                    while idx < _242:
                        mem[idx + _246 + 32] = mem[idx + _226 + 164]
                        idx = idx + 32
                        continue 
                    if ceil32(_242) <= _242:
                        _364 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _376 = mem[_246]
                        mem[mem[64] + 36] = mem[_246]
                        idx = 0
                        while idx < _376:
                            mem[idx + _364 + 68] = mem[idx + _246 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_376) > _376:
                            mem[_376 + _364 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_376) + _364 + -mem[64] + 68
                    mem[_242 + _246 + 32] = 0
                    _365 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _377 = mem[_246]
                    mem[mem[64] + 36] = mem[_246]
                    idx = 0
                    while idx < _377:
                        mem[idx + _365 + 68] = mem[idx + _246 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_377) > _377:
                        mem[_377 + _365 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_377) + _365 + -mem[64] + 68
                _206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_206] = return_data.size
                mem[_206 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _206
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 68
                _221 = Mask(224, 0, return_data.size), mem[_206 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_206 + 32 len 4] >= 32
                _227 = mem[_206 + 36]
                require mem[_206 + 36] <= test266151307()
                require _206 + mem[_206 + 36] + 67 < _206 + Mask(224, 0, return_data.size), mem[_206 + 32 len 4] + 36
                _243 = mem[_206 + mem[_206 + 36] + 36]
                if mem[_206 + mem[_206 + 36] + 36] > test266151307():
                    revert with 0, 65
                _247 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_206 + mem[_206 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_206 + mem[_206 + 36] + 36])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_206 + mem[_206 + 36] + 36])) + 1
                mem[_247] = _243
                require _227 + _243 + 68 <= _221 + 36
                idx = 0
                while idx < _243:
                    mem[idx + _247 + 32] = mem[idx + _206 + _227 + 68]
                    idx = idx + 32
                    continue 
                if ceil32(_243) <= _243:
                    _366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _243
                    idx = 0
                    while idx < _243:
                        mem[idx + _366 + 68] = mem[idx + _247 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_243) > _243:
                        mem[_243 + _366 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_243) + _366 + -mem[64] + 68
                mem[_243 + _247 + 32] = 0
                _367 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _243
                idx = 0
                while idx < _243:
                    mem[idx + _367 + 68] = mem[idx + _247 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_243) > _243:
                    mem[_243 + _367 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_243) + _367 + -mem[64] + 68
            _178 = mem[64]
            mem[mem[64]] = 32
            _180 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _180:
                mem[t] = u + -_178 - 64
                _350 = mem[s]
                _357 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _357:
                    mem[v + u + 32] = mem[v + _350 + 32]
                    v = v + 32
                    continue 
                if ceil32(_357) > _357:
                    mem[_357 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_357) + u + 32
                continue 
        else:
            mem[128] = 96
            s = 128
            idx = ('cd', 36).length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _414 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _414 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require mem[96] >= 68
                    _428 = mem[100]
                    require mem[100] >= 32
                    _432 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _436 = mem[mem[132] + 132]
                    if mem[mem[132] + 132] > test266151307():
                        revert with 0, 65
                    _440 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                    mem[_440] = mem[mem[132] + 132]
                    require _432 + _436 + 164 <= _428 + 132
                    idx = 0
                    while idx < _436:
                        mem[idx + _440 + 32] = mem[idx + _432 + 164]
                        idx = idx + 32
                        continue 
                    if ceil32(_436) <= _436:
                        _508 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _534 = mem[_440]
                        mem[mem[64] + 36] = mem[_440]
                        idx = 0
                        while idx < _534:
                            mem[idx + _508 + 68] = mem[idx + _440 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_534) > _534:
                            mem[_534 + _508 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_534) + _508 + -mem[64] + 68
                    mem[_436 + _440 + 32] = 0
                    _509 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _535 = mem[_440]
                    mem[mem[64] + 36] = mem[_440]
                    idx = 0
                    while idx < _535:
                        mem[idx + _509 + 68] = mem[idx + _440 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_535) > _535:
                        mem[_535 + _509 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_535) + _509 + -mem[64] + 68
                _418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_418] = return_data.size
                mem[_418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _418
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 68
                _429 = Mask(224, 0, return_data.size), mem[_418 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_418 + 32 len 4] >= 32
                _433 = mem[_418 + 36]
                require mem[_418 + 36] <= test266151307()
                require _418 + mem[_418 + 36] + 67 < _418 + Mask(224, 0, return_data.size), mem[_418 + 32 len 4] + 36
                _437 = mem[_418 + mem[_418 + 36] + 36]
                if mem[_418 + mem[_418 + 36] + 36] > test266151307():
                    revert with 0, 65
                _441 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_418 + mem[_418 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_418 + mem[_418 + 36] + 36])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_418 + mem[_418 + 36] + 36])) + 1
                mem[_441] = _437
                require _433 + _437 + 68 <= _429 + 36
                idx = 0
                while idx < _437:
                    mem[idx + _441 + 32] = mem[idx + _418 + _433 + 68]
                    idx = idx + 32
                    continue 
                if ceil32(_437) <= _437:
                    _510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _437
                    idx = 0
                    while idx < _437:
                        mem[idx + _510 + 68] = mem[idx + _441 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_437) > _437:
                        mem[_437 + _510 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_437) + _510 + -mem[64] + 68
                mem[_437 + _441 + 32] = 0
                _511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _437
                idx = 0
                while idx < _437:
                    mem[idx + _511 + 68] = mem[idx + _441 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_437) > _437:
                    mem[_437 + _511 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_437) + _511 + -mem[64] + 68
            _358 = mem[64]
            mem[mem[64]] = 32
            _362 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _362:
                mem[t] = u + -_358 - 64
                _493 = mem[s]
                _505 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _505:
                    mem[v + u + 32] = mem[v + _493 + 32]
                    v = v + 32
                    continue 
                if ceil32(_505) > _505:
                    mem[_505 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_505) + u + 32
                continue 
    else:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins or self can call this function.'
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[96] = ('cd', 36).length
        mem[64] = (32 * ('cd', 36).length) + 128
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                     gas gas_remaining wei
                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require mem[96] >= 68
                    _223 = mem[100]
                    require mem[100] >= 32
                    _232 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _244 = mem[mem[132] + 132]
                    if mem[mem[132] + 132] > test266151307():
                        revert with 0, 65
                    _250 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                    mem[_250] = mem[mem[132] + 132]
                    require _232 + _244 + 164 <= _223 + 132
                    idx = 0
                    while idx < _244:
                        mem[idx + _250 + 32] = mem[idx + _232 + 164]
                        idx = idx + 32
                        continue 
                    if ceil32(_244) <= _244:
                        _368 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _382 = mem[_250]
                        mem[mem[64] + 36] = mem[_250]
                        idx = 0
                        while idx < _382:
                            mem[idx + _368 + 68] = mem[idx + _250 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_382) > _382:
                            mem[_382 + _368 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_382) + _368 + -mem[64] + 68
                    mem[_244 + _250 + 32] = 0
                    _369 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _383 = mem[_250]
                    mem[mem[64] + 36] = mem[_250]
                    idx = 0
                    while idx < _383:
                        mem[idx + _369 + 68] = mem[idx + _250 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_383) > _383:
                        mem[_383 + _369 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_383) + _369 + -mem[64] + 68
                _208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_208] = return_data.size
                mem[_208 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _208
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 68
                _224 = Mask(224, 0, return_data.size), mem[_208 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_208 + 32 len 4] >= 32
                _233 = mem[_208 + 36]
                require mem[_208 + 36] <= test266151307()
                require _208 + mem[_208 + 36] + 67 < _208 + Mask(224, 0, return_data.size), mem[_208 + 32 len 4] + 36
                _245 = mem[_208 + mem[_208 + 36] + 36]
                if mem[_208 + mem[_208 + 36] + 36] > test266151307():
                    revert with 0, 65
                _251 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_208 + mem[_208 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_208 + mem[_208 + 36] + 36])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_208 + mem[_208 + 36] + 36])) + 1
                mem[_251] = _245
                require _233 + _245 + 68 <= _224 + 36
                idx = 0
                while idx < _245:
                    mem[idx + _251 + 32] = mem[idx + _208 + _233 + 68]
                    idx = idx + 32
                    continue 
                if ceil32(_245) <= _245:
                    _370 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _245
                    idx = 0
                    while idx < _245:
                        mem[idx + _370 + 68] = mem[idx + _251 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_245) > _245:
                        mem[_245 + _370 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_245) + _370 + -mem[64] + 68
                mem[_245 + _251 + 32] = 0
                _371 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _245
                idx = 0
                while idx < _245:
                    mem[idx + _371 + 68] = mem[idx + _251 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_245) > _245:
                    mem[_245 + _371 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_245) + _371 + -mem[64] + 68
            _179 = mem[64]
            mem[mem[64]] = 32
            _181 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _181:
                mem[t] = u + -_179 - 64
                _353 = mem[s]
                _360 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _360:
                    mem[v + u + 32] = mem[v + _353 + 32]
                    v = v + 32
                    continue 
                if ceil32(_360) > _360:
                    mem[_360 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_360) + u + 32
                continue 
        else:
            mem[128] = 96
            s = 128
            idx = ('cd', 36).length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                     gas gas_remaining wei
                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require mem[96] >= 68
                    _430 = mem[100]
                    require mem[100] >= 32
                    _434 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _438 = mem[mem[132] + 132]
                    if mem[mem[132] + 132] > test266151307():
                        revert with 0, 65
                    _442 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                    mem[_442] = mem[mem[132] + 132]
                    require _434 + _438 + 164 <= _430 + 132
                    idx = 0
                    while idx < _438:
                        mem[idx + _442 + 32] = mem[idx + _434 + 164]
                        idx = idx + 32
                        continue 
                    if ceil32(_438) <= _438:
                        _512 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _538 = mem[_442]
                        mem[mem[64] + 36] = mem[_442]
                        idx = 0
                        while idx < _538:
                            mem[idx + _512 + 68] = mem[idx + _442 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_538) > _538:
                            mem[_538 + _512 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_538) + _512 + -mem[64] + 68
                    mem[_438 + _442 + 32] = 0
                    _513 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _539 = mem[_442]
                    mem[mem[64] + 36] = mem[_442]
                    idx = 0
                    while idx < _539:
                        mem[idx + _513 + 68] = mem[idx + _442 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_539) > _539:
                        mem[_539 + _513 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_539) + _513 + -mem[64] + 68
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_419] = return_data.size
                mem[_419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _419
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 68
                _431 = Mask(224, 0, return_data.size), mem[_419 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_419 + 32 len 4] >= 32
                _435 = mem[_419 + 36]
                require mem[_419 + 36] <= test266151307()
                require _419 + mem[_419 + 36] + 67 < _419 + Mask(224, 0, return_data.size), mem[_419 + 32 len 4] + 36
                _439 = mem[_419 + mem[_419 + 36] + 36]
                if mem[_419 + mem[_419 + 36] + 36] > test266151307():
                    revert with 0, 65
                _443 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_419 + mem[_419 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_419 + mem[_419 + 36] + 36])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_419 + mem[_419 + 36] + 36])) + 1
                mem[_443] = _439
                require _435 + _439 + 68 <= _431 + 36
                idx = 0
                while idx < _439:
                    mem[idx + _443 + 32] = mem[idx + _419 + _435 + 68]
                    idx = idx + 32
                    continue 
                if ceil32(_439) <= _439:
                    _514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _439
                    idx = 0
                    while idx < _439:
                        mem[idx + _514 + 68] = mem[idx + _443 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_439) > _439:
                        mem[_439 + _514 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_439) + _514 + -mem[64] + 68
                mem[_439 + _443 + 32] = 0
                _515 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _439
                idx = 0
                while idx < _439:
                    mem[idx + _515 + 68] = mem[idx + _443 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_439) > _439:
                    mem[_439 + _515 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_439) + _515 + -mem[64] + 68
            _361 = mem[64]
            mem[mem[64]] = 32
            _363 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _363:
                mem[t] = u + -_361 - 64
                _501 = mem[s]
                _507 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _507:
                    mem[v + u + 32] = mem[v + _501 + 32]
                    v = v + 32
                    continue 
                if ceil32(_507) > _507:
                    mem[_507 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_507) + u + 32
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_8d403b28(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if stor0[msg.sender]:
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[96] = ('cd', 36).length
        mem[64] = (32 * ('cd', 36).length) + 128
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _202 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + cd[68] + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _202 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require mem[96] >= 68
                    _220 = mem[100]
                    require mem[100] >= 32
                    _226 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _242 = mem[mem[132] + 132]
                    if mem[mem[132] + 132] > test266151307():
                        revert with 0, 65
                    _246 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                    mem[_246] = mem[mem[132] + 132]
                    require _226 + _242 + 164 <= _220 + 132
                    idx = 0
                    while idx < _242:
                        mem[idx + _246 + 32] = mem[idx + _226 + 164]
                        idx = idx + 32
                        continue 
                    if ceil32(_242) <= _242:
                        _364 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _376 = mem[_246]
                        mem[mem[64] + 36] = mem[_246]
                        idx = 0
                        while idx < _376:
                            mem[idx + _364 + 68] = mem[idx + _246 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_376) > _376:
                            mem[_376 + _364 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_376) + _364 + -mem[64] + 68
                    mem[_242 + _246 + 32] = 0
                    _365 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _377 = mem[_246]
                    mem[mem[64] + 36] = mem[_246]
                    idx = 0
                    while idx < _377:
                        mem[idx + _365 + 68] = mem[idx + _246 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_377) > _377:
                        mem[_377 + _365 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_377) + _365 + -mem[64] + 68
                _206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_206] = return_data.size
                mem[_206 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _206
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 68
                _221 = Mask(224, 0, return_data.size), mem[_206 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_206 + 32 len 4] >= 32
                _227 = mem[_206 + 36]
                require mem[_206 + 36] <= test266151307()
                require _206 + mem[_206 + 36] + 67 < _206 + Mask(224, 0, return_data.size), mem[_206 + 32 len 4] + 36
                _243 = mem[_206 + mem[_206 + 36] + 36]
                if mem[_206 + mem[_206 + 36] + 36] > test266151307():
                    revert with 0, 65
                _247 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_206 + mem[_206 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_206 + mem[_206 + 36] + 36])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_206 + mem[_206 + 36] + 36])) + 1
                mem[_247] = _243
                require _227 + _243 + 68 <= _221 + 36
                idx = 0
                while idx < _243:
                    mem[idx + _247 + 32] = mem[idx + _206 + _227 + 68]
                    idx = idx + 32
                    continue 
                if ceil32(_243) <= _243:
                    _366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _243
                    idx = 0
                    while idx < _243:
                        mem[idx + _366 + 68] = mem[idx + _247 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_243) > _243:
                        mem[_243 + _366 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_243) + _366 + -mem[64] + 68
                mem[_243 + _247 + 32] = 0
                _367 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _243
                idx = 0
                while idx < _243:
                    mem[idx + _367 + 68] = mem[idx + _247 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_243) > _243:
                    mem[_243 + _367 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_243) + _367 + -mem[64] + 68
            _178 = mem[64]
            mem[mem[64]] = 32
            _180 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _180:
                mem[t] = u + -_178 - 64
                _350 = mem[s]
                _357 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _357:
                    mem[v + u + 32] = mem[v + _350 + 32]
                    v = v + 32
                    continue 
                if ceil32(_357) > _357:
                    mem[_357 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_357) + u + 32
                continue 
        else:
            mem[128] = 96
            s = 128
            idx = ('cd', 36).length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                   value cd[((32 * idx) + cd[68] + 36)] wei
                     gas gas_remaining wei
                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require mem[96] >= 68
                    _428 = mem[100]
                    require mem[100] >= 32
                    _432 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _436 = mem[mem[132] + 132]
                    if mem[mem[132] + 132] > test266151307():
                        revert with 0, 65
                    _440 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                    mem[_440] = mem[mem[132] + 132]
                    require _432 + _436 + 164 <= _428 + 132
                    idx = 0
                    while idx < _436:
                        mem[idx + _440 + 32] = mem[idx + _432 + 164]
                        idx = idx + 32
                        continue 
                    if ceil32(_436) <= _436:
                        _508 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _534 = mem[_440]
                        mem[mem[64] + 36] = mem[_440]
                        idx = 0
                        while idx < _534:
                            mem[idx + _508 + 68] = mem[idx + _440 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_534) > _534:
                            mem[_534 + _508 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_534) + _508 + -mem[64] + 68
                    mem[_436 + _440 + 32] = 0
                    _509 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _535 = mem[_440]
                    mem[mem[64] + 36] = mem[_440]
                    idx = 0
                    while idx < _535:
                        mem[idx + _509 + 68] = mem[idx + _440 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_535) > _535:
                        mem[_535 + _509 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_535) + _509 + -mem[64] + 68
                _418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_418] = return_data.size
                mem[_418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _418
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 68
                _429 = Mask(224, 0, return_data.size), mem[_418 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_418 + 32 len 4] >= 32
                _433 = mem[_418 + 36]
                require mem[_418 + 36] <= test266151307()
                require _418 + mem[_418 + 36] + 67 < _418 + Mask(224, 0, return_data.size), mem[_418 + 32 len 4] + 36
                _437 = mem[_418 + mem[_418 + 36] + 36]
                if mem[_418 + mem[_418 + 36] + 36] > test266151307():
                    revert with 0, 65
                _441 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_418 + mem[_418 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_418 + mem[_418 + 36] + 36])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_418 + mem[_418 + 36] + 36])) + 1
                mem[_441] = _437
                require _433 + _437 + 68 <= _429 + 36
                idx = 0
                while idx < _437:
                    mem[idx + _441 + 32] = mem[idx + _418 + _433 + 68]
                    idx = idx + 32
                    continue 
                if ceil32(_437) <= _437:
                    _510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _437
                    idx = 0
                    while idx < _437:
                        mem[idx + _510 + 68] = mem[idx + _441 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_437) > _437:
                        mem[_437 + _510 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_437) + _510 + -mem[64] + 68
                mem[_437 + _441 + 32] = 0
                _511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _437
                idx = 0
                while idx < _437:
                    mem[idx + _511 + 68] = mem[idx + _441 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_437) > _437:
                    mem[_437 + _511 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_437) + _511 + -mem[64] + 68
            _358 = mem[64]
            mem[mem[64]] = 32
            _362 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _362:
                mem[t] = u + -_358 - 64
                _493 = mem[s]
                _505 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _505:
                    mem[v + u + 32] = mem[v + _493 + 32]
                    v = v + 32
                    continue 
                if ceil32(_505) > _505:
                    mem[_505 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_505) + u + 32
                continue 
    else:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins or self can call this function.'
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[96] = ('cd', 36).length
        mem[64] = (32 * ('cd', 36).length) + 128
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                   value cd[((32 * idx) + cd[68] + 36)] wei
                     gas gas_remaining wei
                    args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require mem[96] >= 68
                    _223 = mem[100]
                    require mem[100] >= 32
                    _232 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _244 = mem[mem[132] + 132]
                    if mem[mem[132] + 132] > test266151307():
                        revert with 0, 65
                    _250 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                    mem[_250] = mem[mem[132] + 132]
                    require _232 + _244 + 164 <= _223 + 132
                    idx = 0
                    while idx < _244:
                        mem[idx + _250 + 32] = mem[idx + _232 + 164]
                        idx = idx + 32
                        continue 
                    if ceil32(_244) <= _244:
                        _368 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _382 = mem[_250]
                        mem[mem[64] + 36] = mem[_250]
                        idx = 0
                        while idx < _382:
                            mem[idx + _368 + 68] = mem[idx + _250 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_382) > _382:
                            mem[_382 + _368 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_382) + _368 + -mem[64] + 68
                    mem[_244 + _250 + 32] = 0
                    _369 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _383 = mem[_250]
                    mem[mem[64] + 36] = mem[_250]
                    idx = 0
                    while idx < _383:
                        mem[idx + _369 + 68] = mem[idx + _250 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_383) > _383:
                        mem[_383 + _369 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_383) + _369 + -mem[64] + 68
                _208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_208] = return_data.size
                mem[_208 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _208
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 68
                _224 = Mask(224, 0, return_data.size), mem[_208 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_208 + 32 len 4] >= 32
                _233 = mem[_208 + 36]
                require mem[_208 + 36] <= test266151307()
                require _208 + mem[_208 + 36] + 67 < _208 + Mask(224, 0, return_data.size), mem[_208 + 32 len 4] + 36
                _245 = mem[_208 + mem[_208 + 36] + 36]
                if mem[_208 + mem[_208 + 36] + 36] > test266151307():
                    revert with 0, 65
                _251 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_208 + mem[_208 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_208 + mem[_208 + 36] + 36])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_208 + mem[_208 + 36] + 36])) + 1
                mem[_251] = _245
                require _233 + _245 + 68 <= _224 + 36
                idx = 0
                while idx < _245:
                    mem[idx + _251 + 32] = mem[idx + _208 + _233 + 68]
                    idx = idx + 32
                    continue 
                if ceil32(_245) <= _245:
                    _370 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _245
                    idx = 0
                    while idx < _245:
                        mem[idx + _370 + 68] = mem[idx + _251 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_245) > _245:
                        mem[_245 + _370 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_245) + _370 + -mem[64] + 68
                mem[_245 + _251 + 32] = 0
                _371 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _245
                idx = 0
                while idx < _245:
                    mem[idx + _371 + 68] = mem[idx + _251 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_245) > _245:
                    mem[_245 + _371 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_245) + _371 + -mem[64] + 68
            _179 = mem[64]
            mem[mem[64]] = 32
            _181 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _181:
                mem[t] = u + -_179 - 64
                _353 = mem[s]
                _360 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _360:
                    mem[v + u + 32] = mem[v + _353 + 32]
                    v = v + 32
                    continue 
                if ceil32(_360) > _360:
                    mem[_360 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_360) + u + 32
                continue 
        else:
            mem[128] = 96
            s = 128
            idx = ('cd', 36).length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _415 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + cd[68] + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _415 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require mem[96] >= 68
                    _430 = mem[100]
                    require mem[100] >= 32
                    _434 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _438 = mem[mem[132] + 132]
                    if mem[mem[132] + 132] > test266151307():
                        revert with 0, 65
                    _442 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                    mem[_442] = mem[mem[132] + 132]
                    require _434 + _438 + 164 <= _430 + 132
                    idx = 0
                    while idx < _438:
                        mem[idx + _442 + 32] = mem[idx + _434 + 164]
                        idx = idx + 32
                        continue 
                    if ceil32(_438) <= _438:
                        _512 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _538 = mem[_442]
                        mem[mem[64] + 36] = mem[_442]
                        idx = 0
                        while idx < _538:
                            mem[idx + _512 + 68] = mem[idx + _442 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_538) > _538:
                            mem[_538 + _512 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_538) + _512 + -mem[64] + 68
                    mem[_438 + _442 + 32] = 0
                    _513 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _539 = mem[_442]
                    mem[mem[64] + 36] = mem[_442]
                    idx = 0
                    while idx < _539:
                        mem[idx + _513 + 68] = mem[idx + _442 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_539) > _539:
                        mem[_539 + _513 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_539) + _513 + -mem[64] + 68
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_419] = return_data.size
                mem[_419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _419
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 68
                _431 = Mask(224, 0, return_data.size), mem[_419 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_419 + 32 len 4] >= 32
                _435 = mem[_419 + 36]
                require mem[_419 + 36] <= test266151307()
                require _419 + mem[_419 + 36] + 67 < _419 + Mask(224, 0, return_data.size), mem[_419 + 32 len 4] + 36
                _439 = mem[_419 + mem[_419 + 36] + 36]
                if mem[_419 + mem[_419 + 36] + 36] > test266151307():
                    revert with 0, 65
                _443 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_419 + mem[_419 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_419 + mem[_419 + 36] + 36])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_419 + mem[_419 + 36] + 36])) + 1
                mem[_443] = _439
                require _435 + _439 + 68 <= _431 + 36
                idx = 0
                while idx < _439:
                    mem[idx + _443 + 32] = mem[idx + _419 + _435 + 68]
                    idx = idx + 32
                    continue 
                if ceil32(_439) <= _439:
                    _514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _439
                    idx = 0
                    while idx < _439:
                        mem[idx + _514 + 68] = mem[idx + _443 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_439) > _439:
                        mem[_439 + _514 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_439) + _514 + -mem[64] + 68
                mem[_439 + _443 + 32] = 0
                _515 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _439
                idx = 0
                while idx < _439:
                    mem[idx + _515 + 68] = mem[idx + _443 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_439) > _439:
                    mem[_439 + _515 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_439) + _515 + -mem[64] + 68
            _361 = mem[64]
            mem[mem[64]] = 32
            _363 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _363:
                mem[t] = u + -_361 - 64
                _501 = mem[s]
                _507 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _507:
                    mem[v + u + 32] = mem[v + _501 + 32]
                    v = v + 32
                    continue 
                if ceil32(_507) > _507:
                    mem[_507 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_507) + u + 32
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
