contract main {




// =====================  Runtime code  =====================


const sub_204d7923(?) = 0x288a15c4a15d470e4cd9cad2f113b91206b520c26dbd3dd74627f0c057baa19c

const sub_c16590f1(?) = 0x5632000000000000000000000000000000000000000000000000000000000000

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
address owner;
uint256 stor3;
address valueTokenAddress;
uint256 sub_8eb0b6c9;
mapping of struct stor6;
uint256 sub_8ebd23a5;
mapping of address sub_481f2f4b;
mapping of uint256 sub_d8d6ee54;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_481f2f4b(?) payable {
    return sub_481f2f4b[0]
}

function depositToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_481f2f4b[arg1]
}

function owner() payable {
    return owner
}

function sub_8eb0b6c9(?) payable {
    return sub_8eb0b6c9
}

function sub_8ebd23a5(?) payable {
    return sub_8ebd23a5
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_d8d6ee54(?) payable {
    require calldata.size - 4 >= 32
    return sub_d8d6ee54[arg1]
}

function valueToken() payable {
    return valueTokenAddress
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

function sub_79e40cba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_8ebd23a5 == -1:
        revert with 0, 17
    sub_8ebd23a5++
    sub_481f2f4b[stor7] = address(arg1)
}

function sub_6a4d6c63(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ManagementFund: depositValueRatio is strictly positive'
    sub_8eb0b6c9 = arg1
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function collect() payable {
    mem[64] = 96
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_8ebd23a5:
        mem[0] = idx
        mem[32] = 9
        if sub_d8d6ee54[idx]:
            sub_d8d6ee54[idx] = 0
            mem[0] = idx
            mem[32] = 8
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_d8d6ee54[idx]
            call sub_481f2f4b[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_d8d6ee54[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_17] == bool(mem[_17])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor3 = 1
}

function sub_92bc3b9b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= sub_8ebd23a5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ManagementFund: index is smaller than depositTokenLength'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementFund: amount is strictly positive'
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementFund: counterpart is strictly positive'
    if stor6[address(arg1)].field_0 > !arg4:
        revert with 0, 17
    stor6[address(arg1)].field_0 += arg4
    if stor6[address(arg1)][1][arg2].field_0 > !arg3:
        revert with 0, 17
    stor6[address(arg1)][1][arg2].field_0 += arg3
    stor6[address(arg1)][1][arg2].field_256 = sub_481f2f4b[arg2]
    call sub_481f2f4b[arg2].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if not roleAdmin[0x288a15c4a15d470e4cd9cad2f113b91206b520c26dbd3dd74627f0c057baa19c][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementFund: must have customer role to deposit'
    if 0 >= sub_8ebd23a5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ManagementFund: index is smaller than depositTokenLength'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementFund: amount is strictly positive'
    if arg1 and sub_8eb0b6c9 > -1 / arg1:
        revert with 0, 17
    call sub_481f2f4b[0].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(valueTokenAddress)
    call valueTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1 * sub_8eb0b6c9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_d8d6ee54[0] > !arg1:
        revert with 0, 17
    sub_d8d6ee54[0] += arg1
    stor3 = 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function emergencyExit() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_8ebd23a5:
        mem[0] = idx
        mem[32] = 8
        mem[mem[64] + 4] = this.address
        staticcall sub_481f2f4b[idx].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_27]
        if mem[_27]:
            mem[0] = idx
            mem[32] = 8
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _29
            call sub_481f2f4b[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _29
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_37] == bool(mem[_37])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    staticcall valueTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _24 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _28 = mem[_24]
    if mem[_24]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _28
        call valueTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _28
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_32] == bool(mem[_32])
}

function sub_851485fc(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if not roleAdmin[0x288a15c4a15d470e4cd9cad2f113b91206b520c26dbd3dd74627f0c057baa19c][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ManagementFund: must have customer role to withdrawn'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementFund: counterpart is strictly positive'
    mem[0] = msg.sender
    mem[32] = 6
    if not stor6[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementFund: no required counterpart'
    if arg1 < stor6[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementFund: counterpart is missing'
    idx = 0
    while idx < sub_8ebd23a5:
        mem[0] = idx
        mem[32] = sha3(msg.sender, 6) + 1
        if stor6[msg.sender][1][idx].field_0:
            stor6[msg.sender][1][idx].field_0 = 0
            mem[0] = idx
            mem[32] = 8
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor6[msg.sender][1][idx].field_0
            call sub_481f2f4b[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor6[msg.sender][1][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_28] == bool(mem[_28])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor6[msg.sender].field_0:
        require ext_code.size(valueTokenAddress)
        call valueTokenAddress.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, stor6[msg.sender].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor6[msg.sender].field_0 = 0
    stor3 = 1
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_ebf4a773(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 6
    if sub_8ebd23a5 > test266151307():
        revert with 0, 65
    mem[96] = sub_8ebd23a5
    mem[64] = (32 * sub_8ebd23a5) + 128
    if not sub_8ebd23a5:
        idx = 0
        while idx < sub_8ebd23a5:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 6) + 1
            _24 = mem[64]
            mem[64] = mem[64] + 64
            mem[_24] = stor6[address(arg1)][1][idx].field_0
            mem[_24 + 32] = stor6[address(arg1)][1][idx].field_256
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _24
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _26 = mem[64]
        mem[mem[64]] = stor6[address(arg1)].field_0
        mem[mem[64] + 32] = 64
        _27 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = mem[64] + 96
        t = 128
        while idx < _27:
            _41 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_41 + 44 len 20]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _26 + (64 * _27) + -mem[64] + 96
    mem[64] = (32 * sub_8ebd23a5) + 192
    mem[(32 * sub_8ebd23a5) + 128] = 0
    mem[(32 * sub_8ebd23a5) + 160] = 0
    mem[128] = (32 * sub_8ebd23a5) + 128
    s = 128
    idx = sub_8ebd23a5
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_8ebd23a5) + 128] = 0
        mem[(32 * sub_8ebd23a5) + 160] = 0
        mem[s + 32] = (32 * sub_8ebd23a5) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_8ebd23a5:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6) + 1
        _45 = mem[64]
        mem[64] = mem[64] + 64
        mem[_45] = stor6[address(arg1)][1][idx].field_0
        mem[_45 + 32] = stor6[address(arg1)][1][idx].field_256
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _45
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _48 = mem[64]
    mem[mem[64]] = stor6[address(arg1)].field_0
    mem[mem[64] + 32] = 64
    _49 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = mem[64] + 96
    t = 128
    while idx < _49:
        _54 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_54 + 44 len 20]
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _48 + (64 * _49) + -mem[64] + 96
}



}
