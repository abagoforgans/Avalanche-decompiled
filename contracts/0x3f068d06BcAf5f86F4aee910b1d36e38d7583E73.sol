contract main {




// =====================  Runtime code  =====================


#
#  - sub_3d5628fc(?)
#  - sub_3fd634af(?)
#
address owner;
uint8 stor2;
mapping of uint8 stor3;
uint256 feeRate;
uint256 sub_7e5bf1a9;

function paused() {
    return bool(stor2)
}

function sub_7e5bf1a9(?) {
    return sub_7e5bf1a9
}

function owner() {
    return owner
}

function feeRate() {
    return feeRate
}

function isMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function changeFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    feeRate = arg1
    emit FeeRateChanged(feeRate, arg1);
}

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)]:
        revert with 0, 'Address is member already.'
    stor3[address(arg1)] = 1
    emit MemberAdded(arg1);
}

function removeMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0, 'Not member of whitelist.'
    stor3[address(arg1)] = 0
    emit MemberRemoved(arg1);
}

function changeReferrerFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    sub_7e5bf1a9 = arg1
    emit ReferrerFeeRateChanged(sub_7e5bf1a9, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_595d0397(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[4] <= test266151307()
    mem[96] = cd[4]
    mem[64] = (32 * cd[4]) + 128
    if not cd[4]:
        require 0 < cd[4]
        mem[128] = cd[36]
        idx = 0
        while idx < ('cd', 68).length:
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            mem[0] = address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            mem[32] = 3
            if not stor3[address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])]:
                revert with 0, '!whitelisted'
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)] < mem[96]
            _118 = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)] < mem[96]
            if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)] < mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]:
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] < 2
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] <= 1
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]:
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 228)] == ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    require idx < ('cd', 68).length
                    require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 260)] == ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    mem[mem[64] + 4] = ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    mem[mem[64] + 36] = ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                    require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                    staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _176 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_176] == mem[_176]
                    require idx < ('cd', 68).length
                    require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                    mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_176]
                    idx = idx + 1
                    continue 
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
                require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]
                s = 0
                t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68
                u = mem[64] + 100
                while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _208 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _212 = mem[_208]
                require mem[_208] <= test266151307()
                require _208 + mem[_208] + 31 < _208 + return_data.size
                _216 = mem[_208 + mem[_208]]
                require mem[_208 + mem[_208]] <= test266151307()
                require _208 + ceil32(return_data.size) + (32 * mem[_208 + mem[_208]]) + 32 <= test266151307() and (32 * mem[_208 + mem[_208]]) + 32 >= 0
                mem[64] = _208 + ceil32(return_data.size) + (32 * mem[_208 + mem[_208]]) + 32
                mem[_208 + ceil32(return_data.size)] = _216
                require _212 + (32 * _216) + 32 <= return_data.size
                s = 0
                t = _208 + _212 + 32
                u = _208 + ceil32(return_data.size) + 32
                while s < _216:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require _216 - 1 < _216
                require _216 < ('cd', 68).length
                require cd[(cd[68] + (32 * _216) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * _216) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _216) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _216) + 36)] + 196)]) + 128] + mem[(32 * _216 - 1) + _208 + ceil32(return_data.size) + 32]
                s = _216 + 1
                continue 
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] = 0
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] < 2
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] <= 1
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]:
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 228)] == ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 260)] == ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 4] = ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 36] = ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 68] = _118
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), _118
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_177] == mem[_177]
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_177]
                idx = idx + 1
                continue 
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _118
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]
            s = 0
            t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68
            u = mem[64] + 100
            while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
            staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _213 = mem[_209]
            require mem[_209] <= test266151307()
            require _209 + mem[_209] + 31 < _209 + return_data.size
            _217 = mem[_209 + mem[_209]]
            require mem[_209 + mem[_209]] <= test266151307()
            require _209 + ceil32(return_data.size) + (32 * mem[_209 + mem[_209]]) + 32 <= test266151307() and (32 * mem[_209 + mem[_209]]) + 32 >= 0
            mem[64] = _209 + ceil32(return_data.size) + (32 * mem[_209 + mem[_209]]) + 32
            mem[_209 + ceil32(return_data.size)] = _217
            require _213 + (32 * _217) + 32 <= return_data.size
            s = 0
            t = _209 + _213 + 32
            u = _209 + ceil32(return_data.size) + 32
            while s < _217:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require _217 - 1 < _217
            require _217 < ('cd', 68).length
            require cd[(cd[68] + (32 * _217) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * _217) + 36)] + 196)] < mem[96]
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _217) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _217) + 36)] + 196)]) + 128] + mem[(32 * _217 - 1) + _209 + ceil32(return_data.size) + 32]
            s = _217 + 1
            continue 
    else:
        mem[128 len 32 * cd[4]] = call.data[calldata.size len 32 * cd[4]]
        require 0 < cd[4]
        mem[128] = cd[36]
        idx = 0
        while idx < ('cd', 68).length:
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            mem[0] = address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            mem[32] = 3
            if not stor3[address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])]:
                revert with 0, '!whitelisted'
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)] < mem[96]
            _119 = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)] < mem[96]
            if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)] < mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]:
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] < 2
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] <= 1
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]:
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 228)] == ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    require idx < ('cd', 68).length
                    require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 260)] == ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    mem[mem[64] + 4] = ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    mem[mem[64] + 36] = ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                    require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                    staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_178] == mem[_178]
                    require idx < ('cd', 68).length
                    require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                    mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_178]
                    idx = idx + 1
                    continue 
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
                require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]
                s = 0
                t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68
                u = mem[64] + 100
                while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _210 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _214 = mem[_210]
                require mem[_210] <= test266151307()
                require _210 + mem[_210] + 31 < _210 + return_data.size
                _218 = mem[_210 + mem[_210]]
                require mem[_210 + mem[_210]] <= test266151307()
                require _210 + ceil32(return_data.size) + (32 * mem[_210 + mem[_210]]) + 32 <= test266151307() and (32 * mem[_210 + mem[_210]]) + 32 >= 0
                mem[64] = _210 + ceil32(return_data.size) + (32 * mem[_210 + mem[_210]]) + 32
                mem[_210 + ceil32(return_data.size)] = _218
                require _214 + (32 * _218) + 32 <= return_data.size
                s = 0
                t = _210 + _214 + 32
                u = _210 + ceil32(return_data.size) + 32
                while s < _218:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require _218 - 1 < _218
                require _218 < ('cd', 68).length
                require cd[(cd[68] + (32 * _218) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * _218) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _218) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _218) + 36)] + 196)]) + 128] + mem[(32 * _218 - 1) + _210 + ceil32(return_data.size) + 32]
                s = _218 + 1
                continue 
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] = 0
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] < 2
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] <= 1
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]:
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 228)] == ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 260)] == ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 4] = ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 36] = ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 68] = _119
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), _119
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _179 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_179] == mem[_179]
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_179]
                idx = idx + 1
                continue 
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _119
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]
            s = 0
            t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68
            u = mem[64] + 100
            while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
            staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _211 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _215 = mem[_211]
            require mem[_211] <= test266151307()
            require _211 + mem[_211] + 31 < _211 + return_data.size
            _219 = mem[_211 + mem[_211]]
            require mem[_211 + mem[_211]] <= test266151307()
            require _211 + ceil32(return_data.size) + (32 * mem[_211 + mem[_211]]) + 32 <= test266151307() and (32 * mem[_211 + mem[_211]]) + 32 >= 0
            mem[64] = _211 + ceil32(return_data.size) + (32 * mem[_211 + mem[_211]]) + 32
            mem[_211 + ceil32(return_data.size)] = _219
            require _215 + (32 * _219) + 32 <= return_data.size
            s = 0
            t = _211 + _215 + 32
            u = _211 + ceil32(return_data.size) + 32
            while s < _219:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require _219 - 1 < _219
            require _219 < ('cd', 68).length
            require cd[(cd[68] + (32 * _219) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * _219) + 36)] + 196)] < mem[96]
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _219) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _219) + 36)] + 196)]) + 128] + mem[(32 * _219 - 1) + _211 + ceil32(return_data.size) + 32]
            s = _219 + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_3188c4e2(?) {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    require cd[164] == cd[164]
    require cd[4] <= test266151307()
    mem[96] = cd[4]
    mem[64] = (32 * cd[4]) + 128
    if not cd[4]:
        require 0 < cd[4]
        mem[128] = cd[36]
        idx = 0
        while idx < ('cd', 68).length:
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            mem[0] = address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            mem[32] = 3
            if not stor3[address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])]:
                revert with 0, '!whitelisted'
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)] < mem[96]
            _330 = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)] < mem[96]
            if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)] < mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]:
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] < 2
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] <= 1
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]:
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 228)] == ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    require idx < ('cd', 68).length
                    require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 260)] == ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    mem[mem[64] + 4] = ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    mem[mem[64] + 36] = ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                    mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                    require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                    staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_576] == mem[_576]
                    require idx < ('cd', 68).length
                    require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                    mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_576]
                    idx = idx + 1
                    continue 
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
                require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]
                s = 0
                t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68
                u = mem[64] + 100
                while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _616 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _626 = mem[_616]
                require mem[_616] <= test266151307()
                require _616 + mem[_616] + 31 < _616 + return_data.size
                _648 = mem[_616 + mem[_616]]
                require mem[_616 + mem[_616]] <= test266151307()
                require _616 + ceil32(return_data.size) + (32 * mem[_616 + mem[_616]]) + 32 <= test266151307() and (32 * mem[_616 + mem[_616]]) + 32 >= 0
                mem[64] = _616 + ceil32(return_data.size) + (32 * mem[_616 + mem[_616]]) + 32
                mem[_616 + ceil32(return_data.size)] = _648
                require _626 + (32 * _648) + 32 <= return_data.size
                s = 0
                t = _616 + _626 + 32
                u = _616 + ceil32(return_data.size) + 32
                while s < _648:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require _648 - 1 < _648
                require _648 < ('cd', 68).length
                require cd[(cd[68] + (32 * _648) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * _648) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _648) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _648) + 36)] + 196)]) + 128] + mem[(32 * _648 - 1) + _616 + ceil32(return_data.size) + 32]
                s = _648 + 1
                continue 
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] = 0
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] < 2
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] <= 1
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]:
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 228)] == ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 260)] == ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 4] = ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 36] = ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 68] = _330
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), _330
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_577] == mem[_577]
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_577]
                idx = idx + 1
                continue 
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _330
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]
            s = 0
            t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68
            u = mem[64] + 100
            while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
            staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _617 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _627 = mem[_617]
            require mem[_617] <= test266151307()
            require _617 + mem[_617] + 31 < _617 + return_data.size
            _649 = mem[_617 + mem[_617]]
            require mem[_617 + mem[_617]] <= test266151307()
            require _617 + ceil32(return_data.size) + (32 * mem[_617 + mem[_617]]) + 32 <= test266151307() and (32 * mem[_617 + mem[_617]]) + 32 >= 0
            mem[64] = _617 + ceil32(return_data.size) + (32 * mem[_617 + mem[_617]]) + 32
            mem[_617 + ceil32(return_data.size)] = _649
            require _627 + (32 * _649) + 32 <= return_data.size
            s = 0
            t = _617 + _627 + 32
            u = _617 + ceil32(return_data.size) + 32
            while s < _649:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require _649 - 1 < _649
            require _649 < ('cd', 68).length
            require cd[(cd[68] + (32 * _649) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * _649) + 36)] + 196)] < mem[96]
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _649) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _649) + 36)] + 196)]) + 128] + mem[(32 * _649 - 1) + _617 + ceil32(return_data.size) + 32]
            s = _649 + 1
            continue 
        require cd[132] < mem[96]
        _304 = mem[(32 * cd[132]) + 128]
        require cd[164] < mem[96]
        _308 = mem[(32 * cd[164]) + 128]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _314 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _316 = mem[_314]
        require mem[_314] == mem[_314 + 18 len 14]
        _318 = mem[_314 + 32]
        require mem[_314 + 32] == mem[_314 + 50 len 14]
        require mem[_314 + 64] == mem[_314 + 92 len 4]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _336 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_336] == mem[_336]
        if not _304:
            if Mask(112, 0, _316) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _316)
            if not _308:
                if Mask(112, 0, _318) <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require Mask(112, 0, _318)
                if 0 / Mask(112, 0, _316) < 0 / Mask(112, 0, _318):
                    if not 0 / Mask(112, 0, _316):
                        return _304, _308, 0
                    require 0 / Mask(112, 0, _316)
                    if 2 * 0 / Mask(112, 0, _316) / 0 / Mask(112, 0, _316) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return _304, _308, 2 * 0 / Mask(112, 0, _316)
                if not 0 / Mask(112, 0, _318):
                    return _304, _308, 0
                require 0 / Mask(112, 0, _318)
                if 2 * 0 / Mask(112, 0, _318) / 0 / Mask(112, 0, _318) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                return _304, _308, 2 * 0 / Mask(112, 0, _318)
            require _308
            if _308 * mem[_336] / _308 != mem[_336]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _318) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _318)
            if 0 / Mask(112, 0, _316) < _308 * mem[_336] / Mask(112, 0, _318):
                if not 0 / Mask(112, 0, _316):
                    return _304, _308, 0
                require 0 / Mask(112, 0, _316)
                if 2 * 0 / Mask(112, 0, _316) / 0 / Mask(112, 0, _316) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                return _304, _308, 2 * 0 / Mask(112, 0, _316)
        else:
            require _304
            if _304 * mem[_336] / _304 != mem[_336]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _316) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _316)
            if not _308:
                if Mask(112, 0, _318) <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require Mask(112, 0, _318)
                if _304 * mem[_336] / Mask(112, 0, _316) < 0 / Mask(112, 0, _318):
                    if not _304 * mem[_336] / Mask(112, 0, _316):
                        return _304, _308, 0
                    require _304 * mem[_336] / Mask(112, 0, _316)
                    if 2 * _304 * mem[_336] / Mask(112, 0, _316) / _304 * mem[_336] / Mask(112, 0, _316) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return _304, _308, 2 * _304 * mem[_336] / Mask(112, 0, _316)
                if not 0 / Mask(112, 0, _318):
                    return _304, _308, 0
                require 0 / Mask(112, 0, _318)
                if 2 * 0 / Mask(112, 0, _318) / 0 / Mask(112, 0, _318) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                return _304, _308, 2 * 0 / Mask(112, 0, _318)
            require _308
            if _308 * mem[_336] / _308 != mem[_336]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _318) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _318)
            if _304 * mem[_336] / Mask(112, 0, _316) < _308 * mem[_336] / Mask(112, 0, _318):
                if not _304 * mem[_336] / Mask(112, 0, _316):
                    return _304, _308, 0
                require _304 * mem[_336] / Mask(112, 0, _316)
                if 2 * _304 * mem[_336] / Mask(112, 0, _316) / _304 * mem[_336] / Mask(112, 0, _316) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                return _304, _308, 2 * _304 * mem[_336] / Mask(112, 0, _316)
        if not _308 * mem[_336] / Mask(112, 0, _318):
            return _304, _308, 0
        require _308 * mem[_336] / Mask(112, 0, _318)
        if 2 * _308 * mem[_336] / Mask(112, 0, _318) / _308 * mem[_336] / Mask(112, 0, _318) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        return _304, _308, 2 * _308 * mem[_336] / Mask(112, 0, _318)
    mem[128 len 32 * cd[4]] = call.data[calldata.size len 32 * cd[4]]
    require 0 < cd[4]
    mem[128] = cd[36]
    idx = 0
    while idx < ('cd', 68).length:
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
        mem[0] = address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
        mem[32] = 3
        if not stor3[address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])]:
            revert with 0, '!whitelisted'
        require idx < ('cd', 68).length
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
        require idx < ('cd', 68).length
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)] < mem[96]
        _331 = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]
        require idx < ('cd', 68).length
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)] < mem[96]
        if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)] < mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]:
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] < 2
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] <= 1
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]:
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 228)] == ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 260)] == ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 4] = ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 36] = ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
                mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _578 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_578] == mem[_578]
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_578]
                idx = idx + 1
                continue 
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 100)]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]
            s = 0
            t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68
            u = mem[64] + 100
            while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
            staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _618 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _634 = mem[_618]
            require mem[_618] <= test266151307()
            require _618 + mem[_618] + 31 < _618 + return_data.size
            _650 = mem[_618 + mem[_618]]
            require mem[_618 + mem[_618]] <= test266151307()
            require _618 + ceil32(return_data.size) + (32 * mem[_618 + mem[_618]]) + 32 <= test266151307() and (32 * mem[_618 + mem[_618]]) + 32 >= 0
            mem[64] = _618 + ceil32(return_data.size) + (32 * mem[_618 + mem[_618]]) + 32
            mem[_618 + ceil32(return_data.size)] = _650
            require _634 + (32 * _650) + 32 <= return_data.size
            s = 0
            t = _618 + _634 + 32
            u = _618 + ceil32(return_data.size) + 32
            while s < _650:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require _650 - 1 < _650
            require _650 < ('cd', 68).length
            require cd[(cd[68] + (32 * _650) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * _650) + 36)] + 196)] < mem[96]
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _650) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _650) + 36)] + 196)]) + 128] + mem[(32 * _650 - 1) + _618 + ceil32(return_data.size) + 32]
            s = _650 + 1
            continue 
        mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128] = 0
        require idx < ('cd', 68).length
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] < 2
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)] <= 1
        require idx < ('cd', 68).length
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] == address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)])
        require idx < ('cd', 68).length
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
        if cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68)]:
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 228)] == ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 260)] == ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
            mem[mem[64] + 4] = ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
            mem[mem[64] + 36] = ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0)))))))
            mem[mem[64] + 68] = _331
            require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
            staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), _331
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _579 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_579] == mem[_579]
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_579]
            idx = idx + 1
            continue 
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _331
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]
        s = 0
        t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68
        u = mem[64] + 100
        while s < cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)]:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
        staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _619 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _635 = mem[_619]
        require mem[_619] <= test266151307()
        require _619 + mem[_619] + 31 < _619 + return_data.size
        _651 = mem[_619 + mem[_619]]
        require mem[_619 + mem[_619]] <= test266151307()
        require _619 + ceil32(return_data.size) + (32 * mem[_619 + mem[_619]]) + 32 <= test266151307() and (32 * mem[_619 + mem[_619]]) + 32 >= 0
        mem[64] = _619 + ceil32(return_data.size) + (32 * mem[_619 + mem[_619]]) + 32
        mem[_619 + ceil32(return_data.size)] = _651
        require _635 + (32 * _651) + 32 <= return_data.size
        s = 0
        t = _619 + _635 + 32
        u = _619 + ceil32(return_data.size) + 32
        while s < _651:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require _651 - 1 < _651
        require _651 < ('cd', 68).length
        require cd[(cd[68] + (32 * _651) + 36)] < calldata.size + -cd[68] - 291
        require cd[(cd[68] + cd[(cd[68] + (32 * _651) + 36)] + 196)] < mem[96]
        mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _651) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _651) + 36)] + 196)]) + 128] + mem[(32 * _651 - 1) + _619 + ceil32(return_data.size) + 32]
        s = _651 + 1
        continue 
    require cd[132] < mem[96]
    _306 = mem[(32 * cd[132]) + 128]
    require cd[164] < mem[96]
    _311 = mem[(32 * cd[164]) + 128]
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _315 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _317 = mem[_315]
    require mem[_315] == mem[_315 + 18 len 14]
    _319 = mem[_315 + 32]
    require mem[_315 + 32] == mem[_315 + 50 len 14]
    require mem[_315 + 64] == mem[_315 + 92 len 4]
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _337 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_337] == mem[_337]
    if not _306:
        if Mask(112, 0, _317) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require Mask(112, 0, _317)
        if not _311:
            if Mask(112, 0, _319) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _319)
            if 0 / Mask(112, 0, _317) < 0 / Mask(112, 0, _319):
                if not 0 / Mask(112, 0, _317):
                    return _306, _311, 0
                require 0 / Mask(112, 0, _317)
                if 2 * 0 / Mask(112, 0, _317) / 0 / Mask(112, 0, _317) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                return _306, _311, 2 * 0 / Mask(112, 0, _317)
            if not 0 / Mask(112, 0, _319):
                return _306, _311, 0
            require 0 / Mask(112, 0, _319)
            if 2 * 0 / Mask(112, 0, _319) / 0 / Mask(112, 0, _319) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            return _306, _311, 2 * 0 / Mask(112, 0, _319)
        require _311
        if _311 * mem[_337] / _311 != mem[_337]:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, _319) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require Mask(112, 0, _319)
        if 0 / Mask(112, 0, _317) < _311 * mem[_337] / Mask(112, 0, _319):
            if not 0 / Mask(112, 0, _317):
                return _306, _311, 0
            require 0 / Mask(112, 0, _317)
            if 2 * 0 / Mask(112, 0, _317) / 0 / Mask(112, 0, _317) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            return _306, _311, 2 * 0 / Mask(112, 0, _317)
    else:
        require _306
        if _306 * mem[_337] / _306 != mem[_337]:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, _317) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require Mask(112, 0, _317)
        if not _311:
            if Mask(112, 0, _319) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _319)
            if _306 * mem[_337] / Mask(112, 0, _317) < 0 / Mask(112, 0, _319):
                if not _306 * mem[_337] / Mask(112, 0, _317):
                    return _306, _311, 0
                require _306 * mem[_337] / Mask(112, 0, _317)
                if 2 * _306 * mem[_337] / Mask(112, 0, _317) / _306 * mem[_337] / Mask(112, 0, _317) != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                return _306, _311, 2 * _306 * mem[_337] / Mask(112, 0, _317)
            if not 0 / Mask(112, 0, _319):
                return _306, _311, 0
            require 0 / Mask(112, 0, _319)
            if 2 * 0 / Mask(112, 0, _319) / 0 / Mask(112, 0, _319) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            return _306, _311, 2 * 0 / Mask(112, 0, _319)
        require _311
        if _311 * mem[_337] / _311 != mem[_337]:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, _319) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require Mask(112, 0, _319)
        if _306 * mem[_337] / Mask(112, 0, _317) < _311 * mem[_337] / Mask(112, 0, _319):
            if not _306 * mem[_337] / Mask(112, 0, _317):
                return _306, _311, 0
            require _306 * mem[_337] / Mask(112, 0, _317)
            if 2 * _306 * mem[_337] / Mask(112, 0, _317) / _306 * mem[_337] / Mask(112, 0, _317) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            return _306, _311, 2 * _306 * mem[_337] / Mask(112, 0, _317)
    if not _311 * mem[_337] / Mask(112, 0, _319):
        return _306, _311, 0
    require _311 * mem[_337] / Mask(112, 0, _319)
    if 2 * _311 * mem[_337] / Mask(112, 0, _319) / _311 * mem[_337] / Mask(112, 0, _319) != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    return _306, _311, 2 * _311 * mem[_337] / Mask(112, 0, _319)
}



}
