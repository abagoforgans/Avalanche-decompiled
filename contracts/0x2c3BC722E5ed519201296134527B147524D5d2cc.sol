contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ef929f92Address;
address treasuryAddress;
address landAddress;
address sub_0e78b86dAddress;
address sub_c69e4b6eAddress;
mapping of uint256 sub_33aeaf31;
uint256 salary;
uint256 sub_e595d6aa;
uint256 sub_50ded36f;
uint256 sub_59147001;
uint256 sub_bc77ac0d;

function salary() payable {
    return salary
}

function sub_0e78b86d(?) payable {
    return sub_0e78b86dAddress
}

function sub_2d49c359(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_33aeaf31[arg1][arg2]
}

function sub_33aeaf31(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_33aeaf31[arg1][arg2]
}

function sub_50ded36f(?) payable {
    return sub_50ded36f
}

function sub_59147001(?) payable {
    return sub_59147001
}

function treasury() payable {
    return treasuryAddress
}

function land() payable {
    return landAddress
}

function owner() payable {
    return owner
}

function sub_bc77ac0d(?) payable {
    return sub_bc77ac0d
}

function sub_c69e4b6e(?) payable {
    return sub_c69e4b6eAddress
}

function sub_e595d6aa(?) payable {
    return sub_e595d6aa
}

function sub_ef929f92(?) payable {
    return sub_ef929f92Address
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

function sub_72ef9b68(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    salary = arg1
    sub_e595d6aa = arg2
    sub_50ded36f = arg3
}

function sub_545c6783(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sub_33aeaf31[arg1][arg2]:
        return 0
    if block.timestamp < sub_33aeaf31[arg1][arg2]:
        revert with 'NH{q', 17
    return block.timestamp - sub_33aeaf31[arg1][arg2] >= sub_bc77ac0d
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

function sub_6322b513(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
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
    sub_59147001 = 3
    sub_0e78b86dAddress = address(arg4)
    sub_c69e4b6eAddress = address(arg5)
    landAddress = address(arg2)
    treasuryAddress = address(arg3)
    sub_ef929f92Address = address(arg1)
    sub_bc77ac0d = arg6
    salary = arg7
    sub_e595d6aa = arg8
    sub_50ded36f = arg9
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
        revert with 0, 'There is no building.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != sub_59147001:
        revert with 0, 'Not same building.'
    if not sub_33aeaf31[arg1][arg2]:
        revert with 0, 'Can not harvest.'
    if block.timestamp < sub_33aeaf31[arg1][arg2]:
        revert with 'NH{q', 17
    if block.timestamp - sub_33aeaf31[arg1][arg2] < sub_bc77ac0d:
        revert with 0, 'Can not harvest.'
    sub_33aeaf31[arg1][arg2] = 0
    require ext_code.size(sub_c69e4b6eAddress)
    call sub_c69e4b6eAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_50ded36f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Harvest(sub_50ded36f, msg.sender, arg1, arg2);
}

function sub_95dc130e(?) payable {
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
        revert with 0, 'There is no building.'
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xb6ba4663 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != sub_59147001:
        revert with 0, 'Not same building.'
    if sub_33aeaf31[arg1][arg2]:
        revert with 0, 'This mine is working.'
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0x6e6bbb39 with:
         gas gas_remaining wei
        args msg.sender, salary
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_0e78b86dAddress)
    call sub_0e78b86dAddress.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_e595d6aa
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_33aeaf31[arg1][arg2] = block.timestamp
    emit 0x41024bd1: msg.sender, arg1, arg2
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
        _83 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _83
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0xb6ba4663 with:
                gas gas_remaining wei
               args cd[4], _83
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_94] == mem[_94]
        if not mem[_94]:
            revert with 0, 'There is no building.'
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _83
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0xb6ba4663 with:
                gas gas_remaining wei
               args cd[4], _83
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _101 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_101] == mem[_101]
        if mem[_101] != sub_59147001:
            revert with 0, 'Not same building.'
        if not sub_33aeaf31[cd[4]][_83]:
            revert with 0, 'Can not harvest.'
        mem[0] = _83
        mem[32] = sha3(cd[4], 106)
        if block.timestamp < sub_33aeaf31[cd[4]][_83]:
            revert with 'NH{q', 17
        if block.timestamp - sub_33aeaf31[cd[4]][_83] < sub_bc77ac0d:
            revert with 0, 'Can not harvest.'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _113 = mem[96]
    idx = 0
    while idx < _113:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _115 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(cd[4], 106)
        sub_33aeaf31[cd[4]][mem[(32 * idx) + 128]] = 0
        mem[mem[64]] = sub_50ded36f
        emit Harvest(sub_50ded36f, msg.sender, cd[4], _115);
        if idx == -1:
            revert with 'NH{q', 17
        _113 = mem[96]
        idx = idx + 1
        continue 
    if sub_50ded36f and mem[96] > -1 / sub_50ded36f:
        revert with 'NH{q', 17
    require ext_code.size(sub_c69e4b6eAddress)
    call sub_c69e4b6eAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_50ded36f * mem[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_435de141(?) payable {
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
        _80 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _80
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0xb6ba4663 with:
                gas gas_remaining wei
               args cd[4], _80
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_85] == mem[_85]
        if not mem[_85]:
            revert with 0, 'There is no building.'
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _80
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0xb6ba4663 with:
                gas gas_remaining wei
               args cd[4], _80
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_94] == mem[_94]
        if mem[_94] != sub_59147001:
            revert with 0, 'Not same building.'
        mem[0] = _80
        mem[32] = sha3(cd[4], 106)
        if sub_33aeaf31[cd[4]][_80]:
            revert with 0, 'This mine is working.'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _82 = mem[96]
    if salary and mem[96] > -1 / salary:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x6e6bbb3900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0x6e6bbb39 with:
         gas gas_remaining wei
        args msg.sender, salary * _82
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[96]
    if sub_e595d6aa and mem[96] > -1 / sub_e595d6aa:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x79cc679000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = sub_e595d6aa * _90
    require ext_code.size(sub_0e78b86dAddress)
    call sub_0e78b86dAddress.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_e595d6aa * _90
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(cd[4], 106)
        sub_33aeaf31[cd[4]][mem[(32 * idx) + 128]] = block.timestamp
        emit 0x41024bd1: msg.sender, cd[4], mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
