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
            _266 = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]
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
                    _448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_448] == mem[_448]
                    require idx < ('cd', 68).length
                    require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                    require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                    mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_448]
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
                _488 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _498 = mem[_488]
                require mem[_488] <= test266151307()
                require _488 + mem[_488] + 31 < _488 + return_data.size
                _520 = mem[_488 + mem[_488]]
                require mem[_488 + mem[_488]] <= test266151307()
                require _488 + ceil32(return_data.size) + (32 * mem[_488 + mem[_488]]) + 32 <= test266151307() and (32 * mem[_488 + mem[_488]]) + 32 >= 0
                mem[64] = _488 + ceil32(return_data.size) + (32 * mem[_488 + mem[_488]]) + 32
                mem[_488 + ceil32(return_data.size)] = _520
                require _498 + (32 * _520) + 32 <= return_data.size
                s = 0
                t = _488 + _498 + 32
                u = _488 + ceil32(return_data.size) + 32
                while s < _520:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require _520 - 1 < _520
                require _520 < ('cd', 68).length
                require cd[(cd[68] + (32 * _520) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * _520) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _520) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _520) + 36)] + 196)]) + 128] + mem[(32 * _520 - 1) + _488 + ceil32(return_data.size) + 32]
                s = _520 + 1
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
                mem[mem[64] + 68] = _266
                require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
                staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), _266
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _449 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_449] == mem[_449]
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_449]
                idx = idx + 1
                continue 
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _266
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
            _489 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _499 = mem[_489]
            require mem[_489] <= test266151307()
            require _489 + mem[_489] + 31 < _489 + return_data.size
            _521 = mem[_489 + mem[_489]]
            require mem[_489 + mem[_489]] <= test266151307()
            require _489 + ceil32(return_data.size) + (32 * mem[_489 + mem[_489]]) + 32 <= test266151307() and (32 * mem[_489 + mem[_489]]) + 32 >= 0
            mem[64] = _489 + ceil32(return_data.size) + (32 * mem[_489 + mem[_489]]) + 32
            mem[_489 + ceil32(return_data.size)] = _521
            require _499 + (32 * _521) + 32 <= return_data.size
            s = 0
            t = _489 + _499 + 32
            u = _489 + ceil32(return_data.size) + 32
            while s < _521:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require _521 - 1 < _521
            require _521 < ('cd', 68).length
            require cd[(cd[68] + (32 * _521) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * _521) + 36)] + 196)] < mem[96]
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _521) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _521) + 36)] + 196)]) + 128] + mem[(32 * _521 - 1) + _489 + ceil32(return_data.size) + 32]
            s = _521 + 1
            continue 
        require cd[132] < mem[96]
        _240 = mem[(32 * cd[132]) + 128]
        require cd[164] < mem[96]
        _244 = mem[(32 * cd[164]) + 128]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _250 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _252 = mem[_250]
        require mem[_250] == mem[_250 + 18 len 14]
        _254 = mem[_250 + 32]
        require mem[_250 + 32] == mem[_250 + 50 len 14]
        require mem[_250 + 64] == mem[_250 + 92 len 4]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_272] == mem[_272]
        if not _240:
            if Mask(112, 0, _252) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _252)
            if not _244:
                if Mask(112, 0, _254) <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require Mask(112, 0, _254)
                if 0 / Mask(112, 0, _252) < 0 / Mask(112, 0, _254):
                    return _240, _244, 0 / Mask(112, 0, _252)
                return _240, _244, 0 / Mask(112, 0, _254)
            require _244
            if _244 * mem[_272] / _244 != mem[_272]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _254) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _254)
            if 0 / Mask(112, 0, _252) < _244 * mem[_272] / Mask(112, 0, _254):
                return _240, _244, 0 / Mask(112, 0, _252)
        else:
            require _240
            if _240 * mem[_272] / _240 != mem[_272]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _252) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _252)
            if not _244:
                if Mask(112, 0, _254) <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require Mask(112, 0, _254)
                if _240 * mem[_272] / Mask(112, 0, _252) < 0 / Mask(112, 0, _254):
                    return _240, _244, _240 * mem[_272] / Mask(112, 0, _252)
                return _240, _244, 0 / Mask(112, 0, _254)
            require _244
            if _244 * mem[_272] / _244 != mem[_272]:
                revert with 0, 'SafeMath: multiplication overflow'
            if Mask(112, 0, _254) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _254)
            if _240 * mem[_272] / Mask(112, 0, _252) < _244 * mem[_272] / Mask(112, 0, _254):
                return _240, _244, _240 * mem[_272] / Mask(112, 0, _252)
        return _240, _244, _244 * mem[_272] / Mask(112, 0, _254)
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
        _267 = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 164)]) + 128]
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
                _450 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_450] == mem[_450]
                require idx < ('cd', 68).length
                require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
                require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
                mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_450]
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
            _490 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _506 = mem[_490]
            require mem[_490] <= test266151307()
            require _490 + mem[_490] + 31 < _490 + return_data.size
            _522 = mem[_490 + mem[_490]]
            require mem[_490 + mem[_490]] <= test266151307()
            require _490 + ceil32(return_data.size) + (32 * mem[_490 + mem[_490]]) + 32 <= test266151307() and (32 * mem[_490 + mem[_490]]) + 32 >= 0
            mem[64] = _490 + ceil32(return_data.size) + (32 * mem[_490 + mem[_490]]) + 32
            mem[_490 + ceil32(return_data.size)] = _522
            require _506 + (32 * _522) + 32 <= return_data.size
            s = 0
            t = _490 + _506 + 32
            u = _490 + ceil32(return_data.size) + 32
            while s < _522:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require _522 - 1 < _522
            require _522 < ('cd', 68).length
            require cd[(cd[68] + (32 * _522) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * _522) + 36)] + 196)] < mem[96]
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _522) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _522) + 36)] + 196)]) + 128] + mem[(32 * _522 - 1) + _490 + ceil32(return_data.size) + 32]
            s = _522 + 1
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
            mem[mem[64] + 68] = _267
            require ext_code.size(address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]))
            staticcall address(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('cd', ('add', 228, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), ('signextend', 15, ('cd', ('add', 260, ('cd', 68), ('cd', ('add', 36, ('cd', 68), ('mask_shl', 251, 0, 5, ('var', 0))))))), _267
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _451 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_451] == mem[_451]
            require idx < ('cd', 68).length
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 291
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)] < mem[96]
            mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 196)]) + 128] + mem[_451]
            idx = idx + 1
            continue 
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[68] + -cd[(cd[68] + (32 * idx) + 36)] - 67
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 132)] + 36)])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _267
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
        _491 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _507 = mem[_491]
        require mem[_491] <= test266151307()
        require _491 + mem[_491] + 31 < _491 + return_data.size
        _523 = mem[_491 + mem[_491]]
        require mem[_491 + mem[_491]] <= test266151307()
        require _491 + ceil32(return_data.size) + (32 * mem[_491 + mem[_491]]) + 32 <= test266151307() and (32 * mem[_491 + mem[_491]]) + 32 >= 0
        mem[64] = _491 + ceil32(return_data.size) + (32 * mem[_491 + mem[_491]]) + 32
        mem[_491 + ceil32(return_data.size)] = _523
        require _507 + (32 * _523) + 32 <= return_data.size
        s = 0
        t = _491 + _507 + 32
        u = _491 + ceil32(return_data.size) + 32
        while s < _523:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require _523 - 1 < _523
        require _523 < ('cd', 68).length
        require cd[(cd[68] + (32 * _523) + 36)] < calldata.size + -cd[68] - 291
        require cd[(cd[68] + cd[(cd[68] + (32 * _523) + 36)] + 196)] < mem[96]
        mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _523) + 36)] + 196)]) + 128] = mem[(32 * cd[(cd[68] + cd[(cd[68] + (32 * _523) + 36)] + 196)]) + 128] + mem[(32 * _523 - 1) + _491 + ceil32(return_data.size) + 32]
        s = _523 + 1
        continue 
    require cd[132] < mem[96]
    _242 = mem[(32 * cd[132]) + 128]
    require cd[164] < mem[96]
    _247 = mem[(32 * cd[164]) + 128]
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _251 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _253 = mem[_251]
    require mem[_251] == mem[_251 + 18 len 14]
    _255 = mem[_251 + 32]
    require mem[_251 + 32] == mem[_251 + 50 len 14]
    require mem[_251 + 64] == mem[_251 + 92 len 4]
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _273 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_273] == mem[_273]
    if not _242:
        if Mask(112, 0, _253) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require Mask(112, 0, _253)
        if not _247:
            if Mask(112, 0, _255) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _255)
            if 0 / Mask(112, 0, _253) < 0 / Mask(112, 0, _255):
                return _242, _247, 0 / Mask(112, 0, _253)
            return _242, _247, 0 / Mask(112, 0, _255)
        require _247
        if _247 * mem[_273] / _247 != mem[_273]:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, _255) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require Mask(112, 0, _255)
        if 0 / Mask(112, 0, _253) < _247 * mem[_273] / Mask(112, 0, _255):
            return _242, _247, 0 / Mask(112, 0, _253)
    else:
        require _242
        if _242 * mem[_273] / _242 != mem[_273]:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, _253) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require Mask(112, 0, _253)
        if not _247:
            if Mask(112, 0, _255) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require Mask(112, 0, _255)
            if _242 * mem[_273] / Mask(112, 0, _253) < 0 / Mask(112, 0, _255):
                return _242, _247, _242 * mem[_273] / Mask(112, 0, _253)
            return _242, _247, 0 / Mask(112, 0, _255)
        require _247
        if _247 * mem[_273] / _247 != mem[_273]:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, _255) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require Mask(112, 0, _255)
        if _242 * mem[_273] / Mask(112, 0, _253) < _247 * mem[_273] / Mask(112, 0, _255):
            return _242, _247, _242 * mem[_273] / Mask(112, 0, _253)
    return _242, _247, _247 * mem[_273] / Mask(112, 0, _255)
}



}
