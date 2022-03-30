contract main {




// =====================  Runtime code  =====================


#
#  - sub_4395a024(?)
#  - sub_5b5bad73(?)
#  - _fallback()
#
const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


mapping of uint8 stor0;

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
    mem[0] = msg.sender
    mem[32] = 0
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
        _71 = mem[64]
        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
           value cd[((32 * idx) + cd[68] + 36)] wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _71 + -mem[64] - 4]
        if not return_data.size:
            if not idx:
                _74 = mem[64]
                mem[64] = mem[64] + 64
                mem[_74] = 1
                mem[_74 + 32] = '0'
                _76 = mem[64]
                mem[mem[64] + 32] = 'TX '
                s = 0
                while s < 1:
                    mem[s + _76 + 35] = mem[s + _74 + 32]
                    s = s + 32
                    continue 
                mem[_76 + 36] = ': '
                _143 = mem[96]
                s = 0
                while s < _143:
                    mem[s + _76 + 38] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_143) <= _143:
                    _340 = mem[64]
                    mem[mem[64]] = _143 + _76 + -mem[64] + 6
                    mem[64] = _143 + _76 + 38
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_143 + _76 + 38] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_143 + _76 + 42] = 32
                    _360 = mem[_340]
                    mem[_143 + _76 + 74] = mem[_340]
                    idx = 0
                    while idx < _360:
                        mem[idx + _143 + _76 + 106] = mem[idx + _340 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_360) > _360:
                        mem[_360 + _143 + _76 + 106] = 0
                    revert with 0, 32, mem[_143 + _76 + 74 len ceil32(_360) + 32]
                mem[_143 + _76 + 38] = 0
                _341 = mem[64]
                mem[mem[64]] = _143 + _76 + -mem[64] + 6
                mem[64] = _143 + _76 + 38
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_143 + _76 + 38] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_143 + _76 + 42] = 32
                _361 = mem[_341]
                mem[_143 + _76 + 74] = mem[_341]
                idx = 0
                while idx < _361:
                    mem[idx + _143 + _76 + 106] = mem[idx + _341 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_361) > _361:
                    mem[_361 + _143 + _76 + 106] = 0
                revert with 0, 32, mem[_143 + _76 + 74 len ceil32(_361) + 32]
            t = 0
            s = idx
            while s:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 0, 65
            _140 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = idx
                while s:
                    if u < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if u - 1 >= mem[_140]:
                        revert with 0, 50
                    mem[u + _140 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _330 = mem[64]
                mem[mem[64] + 32] = 'TX '
                _334 = mem[_140]
                s = 0
                while s < _334:
                    mem[s + _330 + 35] = mem[s + _140 + 32]
                    s = s + 32
                    continue 
                mem[_330 + _334 + 35] = ': '
                if ceil32(_334) <= _334:
                    _518 = mem[96]
                    s = 0
                    while s < _518:
                        mem[s + _330 + _334 + 37] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_518) <= _518:
                        _654 = mem[64]
                        mem[mem[64]] = _518 + _330 + _334 + -mem[64] + 5
                        mem[64] = _518 + _330 + _334 + 37
                        if ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_518 + _330 + _334 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_518 + _330 + _334 + 41] = 32
                        _686 = mem[_654]
                        mem[_518 + _330 + _334 + 73] = mem[_654]
                        idx = 0
                        while idx < _686:
                            mem[idx + _518 + _330 + _334 + 105] = mem[idx + _654 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_686) > _686:
                            mem[_686 + _518 + _330 + _334 + 105] = 0
                        revert with 0, 32, mem[_518 + _330 + _334 + 73 len ceil32(_686) + 32]
                    mem[_518 + _330 + _334 + 37] = 0
                    _655 = mem[64]
                    mem[mem[64]] = _518 + _330 + _334 + -mem[64] + 5
                    mem[64] = _518 + _330 + _334 + 37
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_518 + _330 + _334 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_518 + _330 + _334 + 41] = 32
                    _687 = mem[_655]
                    mem[_518 + _330 + _334 + 73] = mem[_655]
                    idx = 0
                    while idx < _687:
                        mem[idx + _518 + _330 + _334 + 105] = mem[idx + _655 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_687) > _687:
                        mem[_687 + _518 + _330 + _334 + 105] = 0
                    revert with 0, 32, mem[_518 + _330 + _334 + 73 len ceil32(_687) + 32]
                _519 = mem[96]
                s = 0
                while s < _519:
                    mem[s + _330 + _334 + 37] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_519) <= _519:
                    _656 = mem[64]
                    mem[mem[64]] = _519 + _330 + _334 + -mem[64] + 5
                    mem[64] = _519 + _330 + _334 + 37
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_519 + _330 + _334 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_519 + _330 + _334 + 41] = 32
                    _688 = mem[_656]
                    mem[_519 + _330 + _334 + 73] = mem[_656]
                    idx = 0
                    while idx < _688:
                        mem[idx + _519 + _330 + _334 + 105] = mem[idx + _656 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_688) > _688:
                        mem[_688 + _519 + _330 + _334 + 105] = 0
                    revert with 0, 32, mem[_519 + _330 + _334 + 73 len ceil32(_688) + 32]
                mem[_519 + _330 + _334 + 37] = 0
                _657 = mem[64]
                mem[mem[64]] = _519 + _330 + _334 + -mem[64] + 5
                mem[64] = _519 + _330 + _334 + 37
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_519 + _330 + _334 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_519 + _330 + _334 + 41] = 32
                _689 = mem[_657]
                mem[_519 + _330 + _334 + 73] = mem[_657]
                idx = 0
                while idx < _689:
                    mem[idx + _519 + _330 + _334 + 105] = mem[idx + _657 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_689) > _689:
                    mem[_689 + _519 + _330 + _334 + 105] = 0
                revert with 0, 32, mem[_519 + _330 + _334 + 73 len ceil32(_689) + 32]
            mem[_140 + 32 len t] = call.data[calldata.size len t]
            u = t
            s = idx
            while s:
                if u < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if u - 1 >= mem[_140]:
                    revert with 0, 50
                mem[u + _140 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _331 = mem[64]
            mem[mem[64] + 32] = 'TX '
            _335 = mem[_140]
            s = 0
            while s < _335:
                mem[s + _331 + 35] = mem[s + _140 + 32]
                s = s + 32
                continue 
            mem[_331 + _335 + 35] = ': '
            if ceil32(_335) <= _335:
                _520 = mem[96]
                s = 0
                while s < _520:
                    mem[s + _331 + _335 + 37] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_520) <= _520:
                    _658 = mem[64]
                    mem[mem[64]] = _520 + _331 + _335 + -mem[64] + 5
                    mem[64] = _520 + _331 + _335 + 37
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_520 + _331 + _335 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_520 + _331 + _335 + 41] = 32
                    _690 = mem[_658]
                    mem[_520 + _331 + _335 + 73] = mem[_658]
                    idx = 0
                    while idx < _690:
                        mem[idx + _520 + _331 + _335 + 105] = mem[idx + _658 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_690) > _690:
                        mem[_690 + _520 + _331 + _335 + 105] = 0
                    revert with 0, 32, mem[_520 + _331 + _335 + 73 len ceil32(_690) + 32]
                mem[_520 + _331 + _335 + 37] = 0
                _659 = mem[64]
                mem[mem[64]] = _520 + _331 + _335 + -mem[64] + 5
                mem[64] = _520 + _331 + _335 + 37
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_520 + _331 + _335 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_520 + _331 + _335 + 41] = 32
                _691 = mem[_659]
                mem[_520 + _331 + _335 + 73] = mem[_659]
                idx = 0
                while idx < _691:
                    mem[idx + _520 + _331 + _335 + 105] = mem[idx + _659 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_691) > _691:
                    mem[_691 + _520 + _331 + _335 + 105] = 0
                revert with 0, 32, mem[_520 + _331 + _335 + 73 len ceil32(_691) + 32]
            _521 = mem[96]
            s = 0
            while s < _521:
                mem[s + _331 + _335 + 37] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_521) <= _521:
                _660 = mem[64]
                mem[mem[64]] = _521 + _331 + _335 + -mem[64] + 5
                mem[64] = _521 + _331 + _335 + 37
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_521 + _331 + _335 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_521 + _331 + _335 + 41] = 32
                _692 = mem[_660]
                mem[_521 + _331 + _335 + 73] = mem[_660]
                idx = 0
                while idx < _692:
                    mem[idx + _521 + _331 + _335 + 105] = mem[idx + _660 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_692) > _692:
                    mem[_692 + _521 + _331 + _335 + 105] = 0
                revert with 0, 32, mem[_521 + _331 + _335 + 73 len ceil32(_692) + 32]
            mem[_521 + _331 + _335 + 37] = 0
            _661 = mem[64]
            mem[mem[64]] = _521 + _331 + _335 + -mem[64] + 5
            mem[64] = _521 + _331 + _335 + 37
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_521 + _331 + _335 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_521 + _331 + _335 + 41] = 32
            _693 = mem[_661]
            mem[_521 + _331 + _335 + 73] = mem[_661]
            idx = 0
            while idx < _693:
                mem[idx + _521 + _331 + _335 + 105] = mem[idx + _661 + 32]
                idx = idx + 32
                continue 
            if ceil32(_693) > _693:
                mem[_693 + _521 + _331 + _335 + 105] = 0
            revert with 0, 32, mem[_521 + _331 + _335 + 73 len ceil32(_693) + 32]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_73] = return_data.size
        mem[_73 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not idx:
            _75 = mem[64]
            mem[64] = mem[64] + 64
            mem[_75] = 1
            mem[_75 + 32] = '0'
            _77 = mem[64]
            mem[mem[64] + 32] = 'TX '
            s = 0
            while s < 1:
                mem[s + _77 + 35] = mem[s + _75 + 32]
                s = s + 32
                continue 
            mem[_77 + 36] = ': '
            _145 = mem[_73]
            s = 0
            while s < _145:
                mem[s + _77 + 38] = mem[s + _73 + 32]
                s = s + 32
                continue 
            if ceil32(_145) <= _145:
                _344 = mem[64]
                mem[mem[64]] = _145 + _77 + -mem[64] + 6
                mem[64] = _145 + _77 + 38
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_145 + _77 + 38] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_145 + _77 + 42] = 32
                _364 = mem[_344]
                mem[_145 + _77 + 74] = mem[_344]
                idx = 0
                while idx < _364:
                    mem[idx + _145 + _77 + 106] = mem[idx + _344 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_364) > _364:
                    mem[_364 + _145 + _77 + 106] = 0
                revert with 0, 32, mem[_145 + _77 + 74 len ceil32(_364) + 32]
            mem[_145 + _77 + 38] = 0
            _345 = mem[64]
            mem[mem[64]] = _145 + _77 + -mem[64] + 6
            mem[64] = _145 + _77 + 38
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_145 + _77 + 38] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_145 + _77 + 42] = 32
            _365 = mem[_345]
            mem[_145 + _77 + 74] = mem[_345]
            idx = 0
            while idx < _365:
                mem[idx + _145 + _77 + 106] = mem[idx + _345 + 32]
                idx = idx + 32
                continue 
            if ceil32(_365) > _365:
                mem[_365 + _145 + _77 + 106] = 0
            revert with 0, 32, mem[_145 + _77 + 74 len ceil32(_365) + 32]
        t = 0
        s = idx
        while s:
            if t == -1:
                revert with 0, 17
            t = t + 1
            s = s / 10
            continue 
        if t > test266151307():
            revert with 0, 65
        _141 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            s = idx
            while s:
                if u < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if u - 1 >= mem[_141]:
                    revert with 0, 50
                mem[u + _141 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _332 = mem[64]
            mem[mem[64] + 32] = 'TX '
            _336 = mem[_141]
            s = 0
            while s < _336:
                mem[s + _332 + 35] = mem[s + _141 + 32]
                s = s + 32
                continue 
            mem[_332 + _336 + 35] = ': '
            if ceil32(_336) <= _336:
                _522 = mem[_73]
                s = 0
                while s < _522:
                    mem[s + _332 + _336 + 37] = mem[s + _73 + 32]
                    s = s + 32
                    continue 
                if ceil32(_522) <= _522:
                    _662 = mem[64]
                    mem[mem[64]] = _522 + _332 + _336 + -mem[64] + 5
                    mem[64] = _522 + _332 + _336 + 37
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_522 + _332 + _336 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_522 + _332 + _336 + 41] = 32
                    _694 = mem[_662]
                    mem[_522 + _332 + _336 + 73] = mem[_662]
                    idx = 0
                    while idx < _694:
                        mem[idx + _522 + _332 + _336 + 105] = mem[idx + _662 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_694) > _694:
                        mem[_694 + _522 + _332 + _336 + 105] = 0
                    revert with 0, 32, mem[_522 + _332 + _336 + 73 len ceil32(_694) + 32]
                mem[_522 + _332 + _336 + 37] = 0
                _663 = mem[64]
                mem[mem[64]] = _522 + _332 + _336 + -mem[64] + 5
                mem[64] = _522 + _332 + _336 + 37
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_522 + _332 + _336 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_522 + _332 + _336 + 41] = 32
                _695 = mem[_663]
                mem[_522 + _332 + _336 + 73] = mem[_663]
                idx = 0
                while idx < _695:
                    mem[idx + _522 + _332 + _336 + 105] = mem[idx + _663 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_695) > _695:
                    mem[_695 + _522 + _332 + _336 + 105] = 0
                revert with 0, 32, mem[_522 + _332 + _336 + 73 len ceil32(_695) + 32]
            _523 = mem[_73]
            s = 0
            while s < _523:
                mem[s + _332 + _336 + 37] = mem[s + _73 + 32]
                s = s + 32
                continue 
            if ceil32(_523) <= _523:
                _664 = mem[64]
                mem[mem[64]] = _523 + _332 + _336 + -mem[64] + 5
                mem[64] = _523 + _332 + _336 + 37
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_523 + _332 + _336 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_523 + _332 + _336 + 41] = 32
                _696 = mem[_664]
                mem[_523 + _332 + _336 + 73] = mem[_664]
                idx = 0
                while idx < _696:
                    mem[idx + _523 + _332 + _336 + 105] = mem[idx + _664 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_696) > _696:
                    mem[_696 + _523 + _332 + _336 + 105] = 0
                revert with 0, 32, mem[_523 + _332 + _336 + 73 len ceil32(_696) + 32]
            mem[_523 + _332 + _336 + 37] = 0
            _665 = mem[64]
            mem[mem[64]] = _523 + _332 + _336 + -mem[64] + 5
            mem[64] = _523 + _332 + _336 + 37
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_523 + _332 + _336 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_523 + _332 + _336 + 41] = 32
            _697 = mem[_665]
            mem[_523 + _332 + _336 + 73] = mem[_665]
            idx = 0
            while idx < _697:
                mem[idx + _523 + _332 + _336 + 105] = mem[idx + _665 + 32]
                idx = idx + 32
                continue 
            if ceil32(_697) > _697:
                mem[_697 + _523 + _332 + _336 + 105] = 0
            revert with 0, 32, mem[_523 + _332 + _336 + 73 len ceil32(_697) + 32]
        mem[_141 + 32 len t] = call.data[calldata.size len t]
        u = t
        s = idx
        while s:
            if u < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if u - 1 >= mem[_141]:
                revert with 0, 50
            mem[u + _141 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            u = u - 1
            s = s / 10
            continue 
        _333 = mem[64]
        mem[mem[64] + 32] = 'TX '
        _337 = mem[_141]
        s = 0
        while s < _337:
            mem[s + _333 + 35] = mem[s + _141 + 32]
            s = s + 32
            continue 
        mem[_333 + _337 + 35] = ': '
        if ceil32(_337) <= _337:
            _524 = mem[_73]
            s = 0
            while s < _524:
                mem[s + _333 + _337 + 37] = mem[s + _73 + 32]
                s = s + 32
                continue 
            if ceil32(_524) <= _524:
                _666 = mem[64]
                mem[mem[64]] = _524 + _333 + _337 + -mem[64] + 5
                mem[64] = _524 + _333 + _337 + 37
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_524 + _333 + _337 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_524 + _333 + _337 + 41] = 32
                _698 = mem[_666]
                mem[_524 + _333 + _337 + 73] = mem[_666]
                idx = 0
                while idx < _698:
                    mem[idx + _524 + _333 + _337 + 105] = mem[idx + _666 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_698) > _698:
                    mem[_698 + _524 + _333 + _337 + 105] = 0
                revert with 0, 32, mem[_524 + _333 + _337 + 73 len ceil32(_698) + 32]
            mem[_524 + _333 + _337 + 37] = 0
            _667 = mem[64]
            mem[mem[64]] = _524 + _333 + _337 + -mem[64] + 5
            mem[64] = _524 + _333 + _337 + 37
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_524 + _333 + _337 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_524 + _333 + _337 + 41] = 32
            _699 = mem[_667]
            mem[_524 + _333 + _337 + 73] = mem[_667]
            idx = 0
            while idx < _699:
                mem[idx + _524 + _333 + _337 + 105] = mem[idx + _667 + 32]
                idx = idx + 32
                continue 
            if ceil32(_699) > _699:
                mem[_699 + _524 + _333 + _337 + 105] = 0
            revert with 0, 32, mem[_524 + _333 + _337 + 73 len ceil32(_699) + 32]
        _525 = mem[_73]
        s = 0
        while s < _525:
            mem[s + _333 + _337 + 37] = mem[s + _73 + 32]
            s = s + 32
            continue 
        if ceil32(_525) <= _525:
            _668 = mem[64]
            mem[mem[64]] = _525 + _333 + _337 + -mem[64] + 5
            mem[64] = _525 + _333 + _337 + 37
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_525 + _333 + _337 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_525 + _333 + _337 + 41] = 32
            _700 = mem[_668]
            mem[_525 + _333 + _337 + 73] = mem[_668]
            idx = 0
            while idx < _700:
                mem[idx + _525 + _333 + _337 + 105] = mem[idx + _668 + 32]
                idx = idx + 32
                continue 
            if ceil32(_700) > _700:
                mem[_700 + _525 + _333 + _337 + 105] = 0
            revert with 0, 32, mem[_525 + _333 + _337 + 73 len ceil32(_700) + 32]
        mem[_525 + _333 + _337 + 37] = 0
        _669 = mem[64]
        mem[mem[64]] = _525 + _333 + _337 + -mem[64] + 5
        mem[64] = _525 + _333 + _337 + 37
        if ext_call.success:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_525 + _333 + _337 + 37] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_525 + _333 + _337 + 41] = 32
        _701 = mem[_669]
        mem[_525 + _333 + _337 + 73] = mem[_669]
        idx = 0
        while idx < _701:
            mem[idx + _525 + _333 + _337 + 105] = mem[idx + _669 + 32]
            idx = idx + 32
            continue 
        if ceil32(_701) > _701:
            mem[_701 + _525 + _333 + _337 + 105] = 0
        revert with 0, 32, mem[_525 + _333 + _337 + 73 len ceil32(_701) + 32]
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
                _415 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
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
                _203 = mem[64]
                mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + cd[68] + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _203 + -mem[64] - 4]
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
