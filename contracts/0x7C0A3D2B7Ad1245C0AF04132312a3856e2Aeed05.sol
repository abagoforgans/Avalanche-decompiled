contract main {




// =====================  Runtime code  =====================


#
#  - sub_57833fb0(?)
#  - sub_cc8839b3(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
address sub_3c99a2bdAddress;
address sub_52f0c36dAddress;
mapping of address sub_3d4b8eba;
mapping of uint8 stor154;
mapping of uint8 stor155;
uint256 sub_947646e0;

function sub_031534fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor154[address(arg1)])
}

function sub_3c99a2bd(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_3c99a2bdAddress
}

function sub_3d4b8eba(?) {
    return sub_3d4b8eba[address(msg.sender)]
}

function sub_52f0c36d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_52f0c36dAddress
}

function paused() {
    return bool(paused)
}

function sub_5f009ce4(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor155[arg1[all]])
}

function owner() {
    return owner
}

function sub_947646e0(?) {
    return sub_947646e0
}

function sub_f8eb9c53(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3d4b8eba[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_99d1f337(?) {
    sub_3d4b8eba[address(msg.sender)] = 0
}

function sub_eb09d8ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_3d4b8eba[address(msg.sender)] = address(arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw() payable {
    call sub_3c99a2bdAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_c014930f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_947646e0 = arg1
}

function sub_ba8a60d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor154[address(arg1)] = 1
}

function setWithdrawer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3c99a2bdAddress = arg1
}

function removeFeeFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor154[address(arg1)] = 0
}

function sub_1c019c55(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_52f0c36dAddress = address(arg1)
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

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_99744d86(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize() {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    paused = 0
}

function returnTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_3c99a2bdAddress != msg.sender:
        revert with 0, 'Unauthorised'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_3c99a2bdAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ccce7685(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 > test266151307() or floor32(('cd', 132).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] == cd[164]
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    require cd[228] == uint16(cd[228])
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_3d4b8eba[address(cd[4])] != msg.sender:
        revert with 0, 'Unauthorised'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ('cd', 196).length + 99] = 155
    if stor155[call.data[cd[196] + 36 len ('cd', 196).length]]:
        revert with 0, 'Duplicate transaction'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _447 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 103] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 135] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 167] = cd[100]
    require ext_code.size(address(_447))
    call address(_447).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(cd[4]), address(this.address), cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    mem[0] = mem[140 len 20]
    mem[32] = 154
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if bool(stor154[mem[140 len 20]]) == 1:
        _460 = mem[160]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
        require ext_code.size(address(_460))
        staticcall address(_460).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while uint8(idx) < ('cd', 132).length:
            if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                revert with 'NH{q', 50
            _890 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
            _891 = mem[floor32(('cd', 36).length) + 97]
            if not mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 18
            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            _925 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 0 / mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 17
            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == sub_52f0c36dAddress:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _961 = mem[160]
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = address(_961)
                mem[mem[64] + 68] = _925 - (0 / _891)
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp + 120
                require ext_code.size(address(_890))
                call address(_890).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_961), _925 - (0 / _891), 0, address(this.address), block.timestamp + 120
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1081 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1081] == mem[_1081]
                require mem[_1081 + 32] == mem[_1081 + 32]
            else:
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                _967 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _925 - (0 / _891)
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _997 = mem[96]
                mem[mem[64] + 164] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 196
                while t < _997:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_967 + 100] = this.address
                mem[_967 + 132] = block.timestamp + 120
                require ext_code.size(address(_890))
                call address(_890).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _967 + (32 * _997) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1219 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1225 = mem[_1219]
                require mem[_1219] <= test266151307()
                require _1219 + mem[_1219] + 31 < _1219 + return_data.size
                _1231 = mem[_1219 + mem[_1219]]
                if mem[_1219 + mem[_1219]] > test266151307():
                    revert with 'NH{q', 65
                if _1219 + ceil32(return_data.size) + floor32(mem[_1219 + mem[_1219]]) + 1 > test266151307() or floor32(mem[_1219 + mem[_1219]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1219 + ceil32(return_data.size) + floor32(mem[_1219 + mem[_1219]]) + 1
                mem[_1219 + ceil32(return_data.size)] = _1231
                require _1225 + (32 * _1231) + 32 <= return_data.size
                t = 0
                u = _1219 + _1225 + 32
                v = _1219 + ceil32(return_data.size) + 32
                while t < _1231:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            if s > -mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] - 1:
                revert with 'NH{q', 17
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = s + mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
            continue 
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _889 = mem[160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_889))
        staticcall address(_889).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _931 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _937 = mem[_931]
        require mem[_931] == mem[_931]
        if mem[_931] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _985 = mem[160]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _937 - ext_call.return_data[0]
        require ext_code.size(address(_985))
        call address(_985).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), _937 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1009 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1009] == bool(mem[_1009])
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _1033 = mem[160]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _1045 = mem[128]
        mem[mem[64]] = s
        mem[mem[64] + 32] = _937 - ext_call.return_data[0]
        mem[mem[64] + 64] = 0
        emit 0x696fae9f: s, _937 - ext_call.return_data[0], 0, address(_1045), address(_1033)
        if _937 - ext_call.return_data[0] < cd[164]:
            revert with 0, 'Failed'
        _1119 = mem[64]
        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[mem[64] + ('cd', 196).length] = 155
        stor[sha3(mem[mem[64] len _1119 + ('cd', 196).length + -mem[64] + 32])] = 1
    else:
        mem[0] = mem[172 len 20]
        mem[32] = 154
        if bool(stor154[mem[172 len 20]]) == 1:
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _463 = mem[160]
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
            require ext_code.size(address(_463))
            staticcall address(_463).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while uint8(idx) < ('cd', 132).length:
                if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                _905 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                _906 = mem[floor32(('cd', 36).length) + 97]
                if not mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 18
                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                _930 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 0 / mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 17
                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == sub_52f0c36dAddress:
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _966 = mem[160]
                    if block.timestamp > -121:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_966)
                    mem[mem[64] + 68] = _930 - (0 / _906)
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp + 120
                    require ext_code.size(address(_905))
                    call address(_905).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_966), _930 - (0 / _906), 0, address(this.address), block.timestamp + 120
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1086 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1086] == mem[_1086]
                    require mem[_1086 + 32] == mem[_1086 + 32]
                else:
                    if block.timestamp > -121:
                        revert with 'NH{q', 17
                    _972 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _930 - (0 / _906)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1002 = mem[96]
                    mem[mem[64] + 164] = mem[96]
                    t = 0
                    u = 128
                    v = mem[64] + 196
                    while t < _1002:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_972 + 100] = this.address
                    mem[_972 + 132] = block.timestamp + 120
                    require ext_code.size(address(_905))
                    call address(_905).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _972 + (32 * _1002) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1224 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1230 = mem[_1224]
                    require mem[_1224] <= test266151307()
                    require _1224 + mem[_1224] + 31 < _1224 + return_data.size
                    _1236 = mem[_1224 + mem[_1224]]
                    if mem[_1224 + mem[_1224]] > test266151307():
                        revert with 'NH{q', 65
                    if _1224 + ceil32(return_data.size) + floor32(mem[_1224 + mem[_1224]]) + 1 > test266151307() or floor32(mem[_1224 + mem[_1224]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1224 + ceil32(return_data.size) + floor32(mem[_1224 + mem[_1224]]) + 1
                    mem[_1224 + ceil32(return_data.size)] = _1236
                    require _1230 + (32 * _1236) + 32 <= return_data.size
                    t = 0
                    u = _1224 + _1230 + 32
                    v = _1224 + ceil32(return_data.size) + 32
                    while t < _1236:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                if s > -mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] - 1:
                    revert with 'NH{q', 17
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = s + mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                continue 
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _904 = mem[160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_904))
            staticcall address(_904).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _942 = mem[_936]
            require mem[_936] == mem[_936]
            if mem[_936] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _990 = mem[160]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _942 - ext_call.return_data[0]
            require ext_code.size(address(_990))
            call address(_990).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), _942 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1014 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1014] == bool(mem[_1014])
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _1043 = mem[160]
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            _1060 = mem[128]
            mem[mem[64]] = s
            mem[mem[64] + 32] = _942 - ext_call.return_data[0]
            mem[mem[64] + 64] = 0
            emit 0x696fae9f: s, _942 - ext_call.return_data[0], 0, address(_1060), address(_1043)
            if _942 - ext_call.return_data[0] < cd[164]:
                revert with 0, 'Failed'
            _1139 = mem[64]
            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
            mem[mem[64] + ('cd', 196).length] = 155
            stor[sha3(mem[mem[64] len _1139 + ('cd', 196).length + -mem[64] + 32])] = 1
        else:
            if uint16(cd[228]) < 1:
                if cd[100] and sub_947646e0 > -1 / cd[100]:
                    revert with 'NH{q', 17
                if not cd[100] * sub_947646e0 / 10000:
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _479 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                    require ext_code.size(address(_479))
                    staticcall address(_479).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    s = 0
                    while uint8(idx) < ('cd', 132).length:
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                            revert with 'NH{q', 50
                        _893 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _894 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _926 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == sub_52f0c36dAddress:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _962 = mem[160]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[140 len 20]
                            mem[mem[64] + 36] = address(_962)
                            mem[mem[64] + 68] = _926 - (cd[100] * sub_947646e0 / 10000 / _894)
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 120
                            require ext_code.size(address(_893))
                            call address(_893).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_962), _926 - (cd[100] * sub_947646e0 / 10000 / _894), 0, address(this.address), block.timestamp + 120
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1082 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1082] == mem[_1082]
                            require mem[_1082 + 32] == mem[_1082 + 32]
                        else:
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _968 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _926 - (cd[100] * sub_947646e0 / 10000 / _894)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _998 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < _998:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_968 + 100] = this.address
                            mem[_968 + 132] = block.timestamp + 120
                            require ext_code.size(address(_893))
                            call address(_893).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _968 + (32 * _998) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1220 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1226 = mem[_1220]
                            require mem[_1220] <= test266151307()
                            require _1220 + mem[_1220] + 31 < _1220 + return_data.size
                            _1232 = mem[_1220 + mem[_1220]]
                            if mem[_1220 + mem[_1220]] > test266151307():
                                revert with 'NH{q', 65
                            if _1220 + ceil32(return_data.size) + floor32(mem[_1220 + mem[_1220]]) + 1 > test266151307() or floor32(mem[_1220 + mem[_1220]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1220 + ceil32(return_data.size) + floor32(mem[_1220 + mem[_1220]]) + 1
                            mem[_1220 + ceil32(return_data.size)] = _1232
                            require _1226 + (32 * _1232) + 32 <= return_data.size
                            t = 0
                            u = _1220 + _1226 + 32
                            v = _1220 + ceil32(return_data.size) + 32
                            while t < _1232:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        if s > -mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] - 1:
                            revert with 'NH{q', 17
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = s + mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _892 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_892))
                    staticcall address(_892).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _938 = mem[_932]
                    require mem[_932] == mem[_932]
                    if mem[_932] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _986 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _938 - ext_call.return_data[0]
                    require ext_code.size(address(_986))
                    call address(_986).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), _938 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1010 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1010] == bool(mem[_1010])
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1035 = mem[160]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _1048 = mem[128]
                    mem[mem[64]] = s
                    mem[mem[64] + 32] = _938 - ext_call.return_data[0]
                    mem[mem[64] + 64] = cd[100] * sub_947646e0 / 10000
                    emit 0x696fae9f: s, _938 - ext_call.return_data[0], cd[100] * sub_947646e0 / 10000, address(_1048), address(_1035)
                    if _938 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1123 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 155
                    stor[sha3(mem[mem[64] len _1123 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _473 = mem[128]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = sub_3c99a2bdAddress
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * sub_947646e0 / 10000
                    require ext_code.size(address(_473))
                    call address(_473).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_3c99a2bdAddress, cd[100] * sub_947646e0 / 10000
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _540 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                    require ext_code.size(address(_540))
                    staticcall address(_540).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 99
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    s = 0
                    while uint8(idx) < ('cd', 132).length:
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                            revert with 'NH{q', 50
                        _896 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _897 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _927 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * sub_947646e0 / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == sub_52f0c36dAddress:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _963 = mem[160]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[140 len 20]
                            mem[mem[64] + 36] = address(_963)
                            mem[mem[64] + 68] = _927 - (cd[100] * sub_947646e0 / 10000 / _897)
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 120
                            require ext_code.size(address(_896))
                            call address(_896).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_963), _927 - (cd[100] * sub_947646e0 / 10000 / _897), 0, address(this.address), block.timestamp + 120
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1083 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1083] == mem[_1083]
                            require mem[_1083 + 32] == mem[_1083 + 32]
                        else:
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _969 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _927 - (cd[100] * sub_947646e0 / 10000 / _897)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _999 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < _999:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_969 + 100] = this.address
                            mem[_969 + 132] = block.timestamp + 120
                            require ext_code.size(address(_896))
                            call address(_896).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _969 + (32 * _999) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1221 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1227 = mem[_1221]
                            require mem[_1221] <= test266151307()
                            require _1221 + mem[_1221] + 31 < _1221 + return_data.size
                            _1233 = mem[_1221 + mem[_1221]]
                            if mem[_1221 + mem[_1221]] > test266151307():
                                revert with 'NH{q', 65
                            if _1221 + ceil32(return_data.size) + floor32(mem[_1221 + mem[_1221]]) + 1 > test266151307() or floor32(mem[_1221 + mem[_1221]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1221 + ceil32(return_data.size) + floor32(mem[_1221 + mem[_1221]]) + 1
                            mem[_1221 + ceil32(return_data.size)] = _1233
                            require _1227 + (32 * _1233) + 32 <= return_data.size
                            t = 0
                            u = _1221 + _1227 + 32
                            v = _1221 + ceil32(return_data.size) + 32
                            while t < _1233:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        if s > -mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] - 1:
                            revert with 'NH{q', 17
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = s + mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _895 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_895))
                    staticcall address(_895).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _933 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _939 = mem[_933]
                    require mem[_933] == mem[_933]
                    if mem[_933] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _987 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _939 - ext_call.return_data[0]
                    require ext_code.size(address(_987))
                    call address(_987).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), _939 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1011 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1011] == bool(mem[_1011])
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1037 = mem[160]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _1051 = mem[128]
                    mem[mem[64]] = s
                    mem[mem[64] + 32] = _939 - ext_call.return_data[0]
                    mem[mem[64] + 64] = cd[100] * sub_947646e0 / 10000
                    emit 0x696fae9f: s, _939 - ext_call.return_data[0], cd[100] * sub_947646e0 / 10000, address(_1051), address(_1037)
                    if _939 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1127 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 155
                    stor[sha3(mem[mem[64] len _1127 + ('cd', 196).length + -mem[64] + 32])] = 1
            else:
                if cd[100] and uint16(cd[228]) > -1 / cd[100]:
                    revert with 'NH{q', 17
                if not cd[100] * uint16(cd[228]) / 10000:
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _480 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                    require ext_code.size(address(_480))
                    staticcall address(_480).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    s = 0
                    while uint8(idx) < ('cd', 132).length:
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                            revert with 'NH{q', 50
                        _899 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _900 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _928 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * uint16(cd[228]) / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == sub_52f0c36dAddress:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _964 = mem[160]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[140 len 20]
                            mem[mem[64] + 36] = address(_964)
                            mem[mem[64] + 68] = _928 - (cd[100] * uint16(cd[228]) / 10000 / _900)
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 120
                            require ext_code.size(address(_899))
                            call address(_899).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_964), _928 - (cd[100] * uint16(cd[228]) / 10000 / _900), 0, address(this.address), block.timestamp + 120
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1084 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1084] == mem[_1084]
                            require mem[_1084 + 32] == mem[_1084 + 32]
                        else:
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _970 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _928 - (cd[100] * uint16(cd[228]) / 10000 / _900)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1000 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < _1000:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_970 + 100] = this.address
                            mem[_970 + 132] = block.timestamp + 120
                            require ext_code.size(address(_899))
                            call address(_899).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _970 + (32 * _1000) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1222 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1228 = mem[_1222]
                            require mem[_1222] <= test266151307()
                            require _1222 + mem[_1222] + 31 < _1222 + return_data.size
                            _1234 = mem[_1222 + mem[_1222]]
                            if mem[_1222 + mem[_1222]] > test266151307():
                                revert with 'NH{q', 65
                            if _1222 + ceil32(return_data.size) + floor32(mem[_1222 + mem[_1222]]) + 1 > test266151307() or floor32(mem[_1222 + mem[_1222]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1222 + ceil32(return_data.size) + floor32(mem[_1222 + mem[_1222]]) + 1
                            mem[_1222 + ceil32(return_data.size)] = _1234
                            require _1228 + (32 * _1234) + 32 <= return_data.size
                            t = 0
                            u = _1222 + _1228 + 32
                            v = _1222 + ceil32(return_data.size) + 32
                            while t < _1234:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        if s > -mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] - 1:
                            revert with 'NH{q', 17
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = s + mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _898 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_898))
                    staticcall address(_898).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _940 = mem[_934]
                    require mem[_934] == mem[_934]
                    if mem[_934] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _988 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _940 - ext_call.return_data[0]
                    require ext_code.size(address(_988))
                    call address(_988).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), _940 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1012 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1012] == bool(mem[_1012])
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1039 = mem[160]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _1054 = mem[128]
                    mem[mem[64]] = s
                    mem[mem[64] + 32] = _940 - ext_call.return_data[0]
                    mem[mem[64] + 64] = cd[100] * uint16(cd[228]) / 10000
                    emit 0x696fae9f: s, _940 - ext_call.return_data[0], cd[100] * uint16(cd[228]) / 10000, address(_1054), address(_1039)
                    if _940 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1131 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 155
                    stor[sha3(mem[mem[64] len _1131 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _474 = mem[128]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = sub_3c99a2bdAddress
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * uint16(cd[228]) / 10000
                    require ext_code.size(address(_474))
                    call address(_474).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_3c99a2bdAddress, cd[100] * uint16(cd[228]) / 10000
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _541 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                    require ext_code.size(address(_541))
                    staticcall address(_541).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 99
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    s = 0
                    while uint8(idx) < ('cd', 132).length:
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                            revert with 'NH{q', 50
                        _902 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _903 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _929 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * uint16(cd[228]) / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == sub_52f0c36dAddress:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _965 = mem[160]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[140 len 20]
                            mem[mem[64] + 36] = address(_965)
                            mem[mem[64] + 68] = _929 - (cd[100] * uint16(cd[228]) / 10000 / _903)
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 120
                            require ext_code.size(address(_902))
                            call address(_902).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_965), _929 - (cd[100] * uint16(cd[228]) / 10000 / _903), 0, address(this.address), block.timestamp + 120
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1085 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1085] == mem[_1085]
                            require mem[_1085 + 32] == mem[_1085 + 32]
                        else:
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _971 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _929 - (cd[100] * uint16(cd[228]) / 10000 / _903)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _1001 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < _1001:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_971 + 100] = this.address
                            mem[_971 + 132] = block.timestamp + 120
                            require ext_code.size(address(_902))
                            call address(_902).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _971 + (32 * _1001) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1223 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1229 = mem[_1223]
                            require mem[_1223] <= test266151307()
                            require _1223 + mem[_1223] + 31 < _1223 + return_data.size
                            _1235 = mem[_1223 + mem[_1223]]
                            if mem[_1223 + mem[_1223]] > test266151307():
                                revert with 'NH{q', 65
                            if _1223 + ceil32(return_data.size) + floor32(mem[_1223 + mem[_1223]]) + 1 > test266151307() or floor32(mem[_1223 + mem[_1223]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1223 + ceil32(return_data.size) + floor32(mem[_1223 + mem[_1223]]) + 1
                            mem[_1223 + ceil32(return_data.size)] = _1235
                            require _1229 + (32 * _1235) + 32 <= return_data.size
                            t = 0
                            u = _1223 + _1229 + 32
                            v = _1223 + ceil32(return_data.size) + 32
                            while t < _1235:
                                require mem[u] == mem[u]
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        if s > -mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] - 1:
                            revert with 'NH{q', 17
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = s + mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _901 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_901))
                    staticcall address(_901).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _935 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _941 = mem[_935]
                    require mem[_935] == mem[_935]
                    if mem[_935] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _989 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _941 - ext_call.return_data[0]
                    require ext_code.size(address(_989))
                    call address(_989).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), _941 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1013 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1013] == bool(mem[_1013])
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1041 = mem[160]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _1057 = mem[128]
                    mem[mem[64]] = s
                    mem[mem[64] + 32] = _941 - ext_call.return_data[0]
                    mem[mem[64] + 64] = cd[100] * uint16(cd[228]) / 10000
                    emit 0x696fae9f: s, _941 - ext_call.return_data[0], cd[100] * uint16(cd[228]) / 10000, address(_1057), address(_1041)
                    if _941 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1135 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 155
                    stor[sha3(mem[mem[64] len _1135 + ('cd', 196).length + -mem[64] + 32])] = 1
}



}
