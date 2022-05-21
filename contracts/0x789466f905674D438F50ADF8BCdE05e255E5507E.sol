contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_78f223bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor3
    stor2 = arg1
}

function sub_65b7539c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor2 and arg1 > -1 / stor2:
        revert with 'NH{q', 17
    mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = stor1
    mem[164] = stor2 * arg1
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor1, stor2 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1:
        if not idx:
            _19 = mem[64]
            mem[64] = mem[64] + 64
            mem[_19] = 1
            mem[_19 + 32] = '0'
            _20 = mem[64]
            mem[mem[64] + 32 len arg2.length] = arg2[all]
            mem[mem[64] + arg2.length + 32] = 0
            s = 0
            while s < 1:
                mem[_20 + arg2.length + s + 32] = mem[_19 + s + 32]
                s = s + 32
                continue 
            mem[_20 + arg2.length + 33] = 0
            _39 = mem[64]
            mem[64] = _20 + arg2.length + 33
            mem[_20 + arg2.length + 33] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
            mem[_20 + arg2.length + 37] = msg.sender
            mem[_20 + arg2.length + 69] = 64
            _44 = mem[_39]
            mem[_20 + arg2.length + 101] = mem[_39]
            s = 0
            while s < _44:
                mem[_20 + arg2.length + s + 133] = mem[_39 + s + 32]
                s = s + 32
                continue 
            if ceil32(_44) > _44:
                mem[_20 + arg2.length + _44 + 133] = 0
            require ext_code.size(stor0)
            call stor0.0x12b8603f with:
                 gas gas_remaining wei
                args msg.sender, 64, mem[_20 + arg2.length + 101 len ceil32(_44) + 32]
        else:
            t = 0
            s = idx
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _36 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = u
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if s / 10 and 10 > -1 / s / 10:
                        revert with 'NH{q', 17
                    if s < 10 * s / 10:
                        revert with 'NH{q', 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_36]:
                        revert with 'NH{q', 50
                    mem[u + _36 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _83 = mem[64]
                mem[mem[64] + 32 len arg2.length] = arg2[all]
                mem[mem[64] + arg2.length + 32] = 0
                _89 = mem[_36]
                idx = 0
                while idx < _89:
                    mem[_83 + arg2.length + idx + 32] = mem[_36 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_89) <= _89:
                    _121 = mem[64]
                    mem[64] = _83 + arg2.length + _89 + 32
                    mem[_83 + arg2.length + _89 + 32] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                    mem[_83 + arg2.length + _89 + 36] = msg.sender
                    mem[_83 + arg2.length + _89 + 68] = 64
                    _129 = mem[_121]
                    mem[_83 + arg2.length + _89 + 100] = mem[_121]
                    idx = 0
                    while idx < _129:
                        mem[_83 + arg2.length + _89 + idx + 132] = mem[_121 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_129) > _129:
                        mem[_83 + arg2.length + _89 + _129 + 132] = 0
                    require ext_code.size(stor0)
                    call stor0.0x12b8603f with:
                         gas gas_remaining wei
                        args msg.sender, 64, mem[_83 + arg2.length + _89 + 100 len ceil32(_129) + 32]
                else:
                    mem[_83 + arg2.length + _89 + 32] = 0
                    _125 = mem[64]
                    mem[64] = _83 + arg2.length + _89 + 32
                    mem[_83 + arg2.length + _89 + 32] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                    mem[_83 + arg2.length + _89 + 36] = msg.sender
                    mem[_83 + arg2.length + _89 + 68] = 64
                    _131 = mem[_125]
                    mem[_83 + arg2.length + _89 + 100] = mem[_125]
                    idx = 0
                    while idx < _131:
                        mem[_83 + arg2.length + _89 + idx + 132] = mem[_125 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_131) > _131:
                        mem[_83 + arg2.length + _89 + _131 + 132] = 0
                    require ext_code.size(stor0)
                    call stor0.0x12b8603f with:
                         gas gas_remaining wei
                        args msg.sender, 64, mem[_83 + arg2.length + _89 + 100 len ceil32(_131) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                continue 
            mem[_36 + 32 len t] = call.data[calldata.size len t]
            u = t
            s = idx
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if s / 10 and 10 > -1 / s / 10:
                    revert with 'NH{q', 17
                if s < 10 * s / 10:
                    revert with 'NH{q', 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_36]:
                    revert with 'NH{q', 50
                mem[u + _36 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _84 = mem[64]
            mem[mem[64] + 32 len arg2.length] = arg2[all]
            mem[mem[64] + arg2.length + 32] = 0
            _90 = mem[_36]
            s = 0
            while s < _90:
                mem[_84 + arg2.length + s + 32] = mem[_36 + s + 32]
                s = s + 32
                continue 
            if ceil32(_90) <= _90:
                _123 = mem[64]
                mem[64] = _84 + arg2.length + _90 + 32
                mem[_84 + arg2.length + _90 + 32] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                mem[_84 + arg2.length + _90 + 36] = msg.sender
                mem[_84 + arg2.length + _90 + 68] = 64
                _130 = mem[_123]
                mem[_84 + arg2.length + _90 + 100] = mem[_123]
                s = 0
                while s < _130:
                    mem[_84 + arg2.length + _90 + s + 132] = mem[_123 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_130) > _130:
                    mem[_84 + arg2.length + _90 + _130 + 132] = 0
                require ext_code.size(stor0)
                call stor0.0x12b8603f with:
                     gas gas_remaining wei
                    args msg.sender, 64, mem[_84 + arg2.length + _90 + 100 len ceil32(_130) + 32]
            else:
                mem[_84 + arg2.length + _90 + 32] = 0
                _127 = mem[64]
                mem[64] = _84 + arg2.length + _90 + 32
                mem[_84 + arg2.length + _90 + 32] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                mem[_84 + arg2.length + _90 + 36] = msg.sender
                mem[_84 + arg2.length + _90 + 68] = 64
                _132 = mem[_127]
                mem[_84 + arg2.length + _90 + 100] = mem[_127]
                s = 0
                while s < _132:
                    mem[_84 + arg2.length + _90 + s + 132] = mem[_127 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_132) > _132:
                    mem[_84 + arg2.length + _90 + _132 + 132] = 0
                require ext_code.size(stor0)
                call stor0.0x12b8603f with:
                     gas gas_remaining wei
                    args msg.sender, 64, mem[_84 + arg2.length + _90 + 100 len ceil32(_132) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
