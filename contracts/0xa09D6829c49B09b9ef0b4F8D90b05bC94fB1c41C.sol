contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 stor1;
address owner;
address sub_ef929f92Address;
address landAddress;
address sub_dc7d961eAddress;
address sub_e152bb8fAddress;
mapping of struct sub_f58a5a5a;
uint256 sub_9273adb5;
uint256 sub_9735b1c2;
uint256 sub_d914c78f;

function sub_2d49c359(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_f58a5a5a[arg1][arg2].field_0, sub_f58a5a5a[arg1][arg2].field_256
}

function land() payable {
    return landAddress
}

function owner() payable {
    return owner
}

function sub_9273adb5(?) payable {
    return sub_9273adb5
}

function sub_9735b1c2(?) payable {
    return sub_9735b1c2
}

function sub_ce7bb414(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_f58a5a5a[arg1][arg2].field_256
}

function sub_d914c78f(?) payable {
    return sub_d914c78f
}

function sub_dc7d961e(?) payable {
    return sub_dc7d961eAddress
}

function sub_e152bb8f(?) payable {
    return sub_e152bb8fAddress
}

function sub_ef929f92(?) payable {
    return sub_ef929f92Address
}

function sub_f58a5a5a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_f58a5a5a[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_545c6783(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sub_f58a5a5a[arg1][arg2].field_256:
        return 0
    if block.timestamp < sub_f58a5a5a[arg1][arg2].field_0:
        revert with 'NH{q', 17
    return block.timestamp - sub_f58a5a5a[arg1][arg2].field_0 >= sub_9735b1c2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
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
    sub_d914c78f = 100
    sub_e152bb8fAddress = arg3
    landAddress = arg2
    sub_ef929f92Address = arg1
    sub_dc7d961eAddress = arg4
    sub_9273adb5 = arg5
    sub_9735b1c2 = arg6
}

function sub_fef7a578(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'There is no camp.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 5:
        revert with 0, 'Not camp.'
    if arg3 <= 0:
        revert with 0, 'Amount can not be zero.'
    if sub_f58a5a5a[arg1][arg2].field_256:
        revert with 0, 'This camp is working.'
    if arg3 > sub_d914c78f:
        revert with 0, 'Train too many per time.'
    if arg3 and sub_9273adb5 > -1 / arg3:
        revert with 'NH{q', 17
    require ext_code.size(sub_e152bb8fAddress)
    call sub_e152bb8fAddress.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 * sub_9273adb5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_f58a5a5a[arg1][arg2].field_0 = block.timestamp
    sub_f58a5a5a[arg1][arg2].field_256 = arg3
    emit 0x2dc679f6: arg3, block.timestamp, msg.sender, arg1, arg2
}

function harvest(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'There is no camp.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 5:
        revert with 0, 'Not camp.'
    if not sub_f58a5a5a[arg1][arg2].field_256:
        revert with 0, 'Can not harvest.'
    if block.timestamp < sub_f58a5a5a[arg1][arg2].field_0:
        revert with 'NH{q', 17
    if block.timestamp - sub_f58a5a5a[arg1][arg2].field_0 < sub_9735b1c2:
        revert with 0, 'Can not harvest.'
    if block.timestamp < sub_f58a5a5a[arg1][arg2].field_0:
        revert with 'NH{q', 17
    if not sub_9735b1c2:
        revert with 'NH{q', 18
    if block.timestamp - sub_f58a5a5a[arg1][arg2].field_0 / sub_9735b1c2 >= sub_f58a5a5a[arg1][arg2].field_256:
        sub_f58a5a5a[arg1][arg2].field_0 = 0
        sub_f58a5a5a[arg1][arg2].field_256 = 0
        require ext_code.size(sub_dc7d961eAddress)
        call sub_dc7d961eAddress.0x156e29f6 with:
             gas gas_remaining wei
            args msg.sender, 1, sub_f58a5a5a[arg1][arg2].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Harvest(sub_f58a5a5a[arg1][arg2].field_256, 0, msg.sender, arg1, arg2);
    else:
        sub_f58a5a5a[arg1][arg2].field_0 = block.timestamp
        if sub_f58a5a5a[arg1][arg2].field_256 < block.timestamp - sub_f58a5a5a[arg1][arg2].field_0 / sub_9735b1c2:
            revert with 'NH{q', 17
        sub_f58a5a5a[arg1][arg2].field_256 -= block.timestamp - sub_f58a5a5a[arg1][arg2].field_0 / sub_9735b1c2
        require ext_code.size(sub_dc7d961eAddress)
        call sub_dc7d961eAddress.0x156e29f6 with:
             gas gas_remaining wei
            args msg.sender, 1, block.timestamp - sub_f58a5a5a[arg1][arg2].field_0 / sub_9735b1c2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Harvest(block.timestamp - sub_f58a5a5a[arg1][arg2].field_0 / sub_9735b1c2, sub_f58a5a5a[arg1][arg2].field_256, msg.sender, arg1, arg2);
}

function sub_4e6cf220(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + 101] = cd[4]
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args cd[4]
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner of land.'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _105 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _105
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0xb6ba4663 with:
                gas gas_remaining wei
               args cd[4], _105
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_114] == mem[_114]
        if not mem[_114]:
            revert with 0, 'There is no camp.'
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _105
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0xb6ba4663 with:
                gas gas_remaining wei
               args cd[4], _105
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_132] == mem[_132]
        if mem[_132] != 5:
            revert with 0, 'Not camp.'
        if not sub_f58a5a5a[cd[4]][_105].field_256:
            revert with 0, 'Can not harvest.'
        mem[0] = _105
        mem[32] = sha3(cd[4], 105)
        if block.timestamp < sub_f58a5a5a[cd[4]][_105].field_0:
            revert with 'NH{q', 17
        if block.timestamp - sub_f58a5a5a[cd[4]][_105].field_0 < sub_9735b1c2:
            revert with 0, 'Can not harvest.'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _146 = mem[96]
    idx = 0
    s = 0
    while idx < _146:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _148 = mem[(32 * idx) + 128]
        _150 = sha3(mem[(32 * idx) + 128], sha3(cd[4], 105))
        _152 = sha3(mem[(32 * idx) + 128], sha3(cd[4], 105))
        if block.timestamp < sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_0:
            revert with 'NH{q', 17
        if not sub_9735b1c2:
            revert with 'NH{q', 18
        if block.timestamp - sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_0 / sub_9735b1c2 >= sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_256:
            sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_0 = 0
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(cd[4], 105)
            sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_256 = 0
            if s > -sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_256 - 1:
                revert with 'NH{q', 17
            mem[mem[64]] = sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_256
            mem[mem[64] + 32] = 0
            emit Harvest(mem[mem[64]], 0, msg.sender, cd[4], _148);
            if idx == -1:
                revert with 'NH{q', 17
            _146 = mem[96]
            idx = idx + 1
            s = s + stor1[_150]
            continue 
        sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_0 = block.timestamp
        if sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_256 < block.timestamp - sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_0 / sub_9735b1c2:
            revert with 'NH{q', 17
        sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_256 -= block.timestamp - sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_0 / sub_9735b1c2
        if s > -(block.timestamp - sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_0 / sub_9735b1c2) - 1:
            revert with 'NH{q', 17
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(cd[4], 105)
        _165 = sha3(mem[(32 * idx) + 128], sha3(cd[4], 105))
        mem[mem[64]] = block.timestamp - sub_f58a5a5a[cd[4]][mem[(32 * idx) + 128]].field_0 / sub_9735b1c2
        mem[mem[64] + 32] = stor1[_165]
        emit Harvest(mem[mem[64]], stor1[_165], msg.sender, cd[4], _148);
        if idx == -1:
            revert with 'NH{q', 17
        _146 = mem[96]
        idx = idx + 1
        s = s + (block.timestamp - stor[_152] / sub_9735b1c2)
        continue 
    if s > 0:
        require ext_code.size(sub_dc7d961eAddress)
        call sub_dc7d961eAddress.0x156e29f6 with:
             gas gas_remaining wei
            args msg.sender, 1, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
