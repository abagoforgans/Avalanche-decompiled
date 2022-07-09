contract main {




// =====================  Runtime code  =====================


#
#  - revokeRole(bytes32 arg1, address arg2)
#
const sub_2fe94def(?) = 0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59

const decimals = 18

const sub_866006a6(?) = 10^9

const sub_f34b3079(?) = 0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723

const FREEZER_ROLE = 0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363

const BURNER_ROLE = 0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848

const FROZEN_USER = 0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
uint8 paused;
mapping of struct roleAdmin;
array of struct roleMember;
uint256 sub_24e0d460;
address sub_54ef2fadAddress;

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_24e0d460(?) payable {
    return sub_24e0d460
}

function sub_54ef2fad(?) payable {
    return sub_54ef2fadAddress
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_27df8f2a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return sha3(arg1[all])
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(msg.sender)].field_0:
        revert with 0, 'Sender is currently frozen.'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][0].field_0:
        revert with 0, 'Recipient is currently frozen.'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function pause() payable {
    if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(msg.sender)].field_0:
        revert with 0, 'Sender is currently frozen.'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0:
        revert with 0, 'Recipient is currently frozen.'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function unpause() payable {
    if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg2:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg2
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0:
        revert with 0, 'Sender is currently frozen.'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][0].field_0:
        revert with 0, 'Recipient is currently frozen.'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0:
        revert with 0, 'Sender is currently frozen.'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg2)].field_0:
        revert with 0, 'Recipient is currently frozen.'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == 0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5:
        if not roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][address(msg.sender)].field_0:
            revert with 0, 'Only role admin can revoke.'
    if not arg1:
        if roleMember[arg1].field_0 <= 1:
            revert with 0, 'Contract requires one admin'
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 'NH{q', 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function setFeeCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59][address(msg.sender)].field_0:
        sub_54ef2fadAddress = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_bd254d4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59][address(msg.sender)].field_0:
        if arg1 >= 100 * 10^6:
            revert with 0, 'New Rate Too Large'
        if arg1 <= 3 * 10^6:
            revert with 0, 'New Rate Too Small'
        sub_24e0d460 = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_082a9790(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0:
        revert with 0, 'Sender is currently frozen.'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][0].field_0:
        revert with 0, 'Recipient is currently frozen.'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, address(arg1), 0);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_75c8fb71(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if arg2 / 10^9 and sub_24e0d460 > -1 / arg2 / 10^9:
        revert with 'NH{q', 17
    if not sub_54ef2fadAddress:
        revert with 0, 'ERC20: mint to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][0].field_0:
        revert with 0, 'Sender is currently frozen.'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][stor352].field_0:
        revert with 0, 'Recipient is currently frozen.'
    if totalSupply > (-1 * arg2 / 10^9 * sub_24e0d460) - 1:
        revert with 'NH{q', 17
    totalSupply += arg2 / 10^9 * sub_24e0d460
    if balanceOf[stor352] > (-1 * arg2 / 10^9 * sub_24e0d460) - 1:
        revert with 'NH{q', 17
    balanceOf[stor352] += arg2 / 10^9 * sub_24e0d460
    emit Transfer((arg2 / 10^9 * sub_24e0d460), 0, sub_54ef2fadAddress);
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0:
        revert with 0, 'Sender is currently frozen.'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][0].field_0:
        revert with 0, 'Recipient is currently frozen.'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, address(arg1), 0);
}

function sub_9df7fcdc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        if not roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][address(arg1)].field_0:
            revert with 0, 'Recipient must be whitelisted.'
        emit 0xe84dd075: Array(len=arg3.length, data=arg3[all]), address(arg1), arg2, sha3(arg3[all])
        if not address(arg1):
            revert with 0, 'ERC20: mint to the zero address'
        if paused:
            revert with 0, 'Pausable: paused'
        if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][0].field_0:
            revert with 0, 'Sender is currently frozen.'
        if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0:
            revert with 0, 'Recipient is currently frozen.'
        if totalSupply > -arg2 - 1:
            revert with 'NH{q', 17
        totalSupply += arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, address(arg1));
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 11
        stor54.length.field_8 = 'USD Receipt' / 256
        idx = 0
        while stor54.length.field_1 + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 11
        stor54.length.field_8 = 'USD Receipt' / 256
        idx = 0
        while stor54.length.field_1 + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 4
        stor55.length.field_8 = 'USDR' / 256
        idx = 0
        while stor55.length.field_1 + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 4
        stor55.length.field_8 = 'USDR' / 256
        idx = 0
        while stor55.length.field_1 + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    paused = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleMember[0][1][address(msg.sender)].field_0:
        roleMember[0].field_0++
        roleMember[0][roleMember[0].field_0].field_0 = msg.sender
        roleMember[0][roleMember[0].field_0].field_160 = 0
        roleMember[0][1][address(msg.sender)].field_0 = roleMember[0].field_0
    roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_256 = 0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363
    emit RoleAdminChanged(0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5, roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_256, 0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363);
    sub_24e0d460 = 15 * 10^6
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0][address(arg1)].field_0:
                roleAdmin[0][address(arg1)].field_0 = 1
                emit RoleGranted(0, arg1, msg.sender);
            if not roleMember[0][1][address(arg1)].field_0:
                roleMember[0].field_0++
                roleMember[0][roleMember[0].field_0].field_0 = arg1
                roleMember[0][roleMember[0].field_0].field_160 = 0
                roleMember[0][1][address(arg1)].field_0 = roleMember[0].field_0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor54.length):
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
        if ceil32(stor54.length.field_1) > stor54.length.field_1:
            mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor55.length):
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
        if ceil32(stor55.length.field_1) > stor55.length.field_1:
            mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function sub_8458bca5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        mem[352] = 'AccessControl: account '
        mem[375 len 64] = 0, mem[129 len 63]
        mem[417] = ' is missing role '
        mem[434 len 96] = 0, mem[225 len 95]
        mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[504] = 32
        mem[536] = mem[320]
        mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
        if ceil32(mem[320]) > mem[320]:
            mem[mem[320] + 568] = 0
        revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
    if not roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][address(arg1)].field_0:
        revert with 0, 'Recipient must be whitelisted.'
    if arg2 / 10^9 and sub_24e0d460 > -1 / arg2 / 10^9:
        revert with 'NH{q', 17
    if arg2 < arg2 / 10^9 * sub_24e0d460:
        revert with 'NH{q', 17
    emit 0xe84dd075: Array(len=arg3.length, data=arg3[all]), address(arg1), arg2 - (arg2 / 10^9 * sub_24e0d460), sha3(arg3[all])
    emit MintFee(sub_54ef2fadAddress, arg2 / 10^9 * sub_24e0d460);
    if not sub_54ef2fadAddress:
        revert with 0, 'ERC20: mint to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][0].field_0:
        revert with 0, 'Sender is currently frozen.'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][stor352].field_0:
        revert with 0, 'Recipient is currently frozen.'
    if totalSupply > (-1 * arg2 / 10^9 * sub_24e0d460) - 1:
        revert with 'NH{q', 17
    totalSupply += arg2 / 10^9 * sub_24e0d460
    if balanceOf[stor352] > (-1 * arg2 / 10^9 * sub_24e0d460) - 1:
        revert with 'NH{q', 17
    balanceOf[stor352] += arg2 / 10^9 * sub_24e0d460
    emit Transfer((arg2 / 10^9 * sub_24e0d460), 0, sub_54ef2fadAddress);
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][0].field_0:
        revert with 0, 'Sender is currently frozen.'
    if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0:
        revert with 0, 'Recipient is currently frozen.'
    if totalSupply > -arg2 + (arg2 / 10^9 * sub_24e0d460) - 1:
        revert with 'NH{q', 17
    totalSupply = totalSupply + arg2 - (arg2 / 10^9 * sub_24e0d460)
    if balanceOf[address(arg1)] > -arg2 + (arg2 / 10^9 * sub_24e0d460) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10^9 * sub_24e0d460)
    emit Transfer((arg2 - (arg2 / 10^9 * sub_24e0d460)), 0, address(arg1));
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleMember[0].field_0 <= 1:
            revert with 0, 'Contract requires one admin'
        if roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
            if roleAdmin[0][address(arg1)].field_0:
                roleAdmin[0][address(arg1)].field_0 = 0
                emit RoleRevoked(0, arg1, msg.sender);
            if roleMember[0][1][address(arg1)].field_0:
                if roleMember[0][1][address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0].field_0 - 1 != roleMember[0][1][address(arg1)].field_0 - 1:
                    if roleMember[0].field_0 - 1 >= roleMember[0].field_0:
                        revert with 'NH{q', 50
                    if roleMember[0][1][address(arg1)].field_0 - 1 >= roleMember[0].field_0:
                        revert with 'NH{q', 50
                    roleMember[0][roleMember[0][1][address(arg1)].field_0].field_0 = roleMember[0][roleMember[0].field_0].field_0
                    roleMember[0][1][roleMember[0][roleMember[0].field_0].field_0].field_0 = roleMember[0][1][address(arg1)].field_0
                if not roleMember[0].field_0:
                    revert with 'NH{q', 49
                roleMember[0][roleMember[0].field_0].field_0 = 0
                roleMember[0].field_0--
                roleMember[0][1][address(arg1)].field_0 = 0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(arg1)].field_0:
                roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(arg1)].field_0 = 1
                emit RoleGranted(0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a, arg1, msg.sender);
            if not roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(arg1)].field_0:
                roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0++
                roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0].field_0 = arg1
                roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0].field_160 = 0
                roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(arg1)].field_0 = roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(arg1)].field_0:
                roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(arg1)].field_0 = 1
                emit RoleGranted(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, arg1, msg.sender);
            if not roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0:
                roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0++
                roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0 = arg1
                roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_160 = 0
                roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0 = roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function addBurner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][address(arg1)].field_0:
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][address(arg1)].field_0 = 1
                emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, arg1, msg.sender);
            if not roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
                roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0++
                roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = arg1
                roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_160 = 0
                roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function addFreezer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][address(arg1)].field_0:
                roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][address(arg1)].field_0 = 1
                emit RoleGranted(0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363, arg1, msg.sender);
            if not roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][address(arg1)].field_0:
                roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0++
                roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0].field_0 = arg1
                roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0].field_160 = 0
                roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][address(arg1)].field_0 = roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][address(arg1)].field_0:
                roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][address(arg1)].field_0 = 1
                emit RoleGranted(0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723, arg1, msg.sender);
            if not roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][address(arg1)].field_0:
                roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0++
                roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0].field_0 = arg1
                roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0].field_160 = 0
                roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][address(arg1)].field_0 = roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59][address(arg1)].field_0:
                roleAdmin[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59][address(arg1)].field_0 = 1
                emit RoleGranted(0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59, arg1, msg.sender);
            if not roleMember[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59][1][address(arg1)].field_0:
                roleMember[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59].field_0++
                roleMember[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59][roleMember[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59].field_0].field_0 = arg1
                roleMember[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59][roleMember[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59].field_0].field_160 = 0
                roleMember[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59][1][address(arg1)].field_0 = roleMember[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59].field_0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x8a639721758084b2ff869ed05cee658aab46e6bdc69bca1b006bae9f55613c59].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function freezeUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = 0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    else:
        if roleAdmin[roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0:
                roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0 = 1
                emit RoleGranted(0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5, arg1, msg.sender);
            if not roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][address(arg1)].field_0:
                roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0++
                roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0].field_0 = arg1
                roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0].field_160 = 0
                roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][address(arg1)].field_0 = roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function removeBurner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_256][address(msg.sender)].field_0:
            if roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][address(arg1)].field_0:
                roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][address(arg1)].field_0 = 0
                emit RoleRevoked(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, arg1, msg.sender);
            if roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
                if roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0 - 1 != roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 - 1:
                    if roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0 - 1 >= roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0:
                        revert with 'NH{q', 50
                    if roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 - 1 >= roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0:
                        revert with 'NH{q', 50
                    roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0].field_0 = roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0
                    roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0].field_0 = roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0
                if not roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0:
                    revert with 'NH{q', 49
                roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = 0
                roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0--
                roleMember[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = 0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_256][address(msg.sender)].field_0:
            if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(arg1)].field_0:
                roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(arg1)].field_0 = 0
                emit RoleRevoked(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, arg1, msg.sender);
            if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0:
                if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0 - 1 != roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0 - 1:
                    if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0 - 1 >= roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0:
                        revert with 'NH{q', 50
                    if roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0 - 1 >= roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0:
                        revert with 'NH{q', 50
                    roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0].field_0 = roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0
                    roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0].field_0 = roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0
                if not roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0:
                    revert with 'NH{q', 49
                roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0 = 0
                roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0--
                roleMember[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0 = 0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function removePauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_256][address(msg.sender)].field_0:
            if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(arg1)].field_0:
                roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(arg1)].field_0 = 0
                emit RoleRevoked(0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a, arg1, msg.sender);
            if roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(arg1)].field_0:
                if roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0 - 1 != roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(arg1)].field_0 - 1:
                    if roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0 - 1 >= roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0:
                        revert with 'NH{q', 50
                    if roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(arg1)].field_0 - 1 >= roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0:
                        revert with 'NH{q', 50
                    roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(arg1)].field_0].field_0 = roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0].field_0
                    roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0].field_0].field_0 = roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(arg1)].field_0
                if not roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0:
                    revert with 'NH{q', 49
                roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0].field_0 = 0
                roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0--
                roleMember[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(arg1)].field_0 = 0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function removeFreezer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_256][address(msg.sender)].field_0:
            if roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][address(arg1)].field_0:
                roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][address(arg1)].field_0 = 0
                emit RoleRevoked(0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363, arg1, msg.sender);
            if roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][address(arg1)].field_0:
                if roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0 - 1 != roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][address(arg1)].field_0 - 1:
                    if roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0 - 1 >= roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0:
                        revert with 'NH{q', 50
                    if roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][address(arg1)].field_0 - 1 >= roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0:
                        revert with 'NH{q', 50
                    roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][address(arg1)].field_0].field_0 = roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0].field_0
                    roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0].field_0].field_0 = roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][address(arg1)].field_0
                if not roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0:
                    revert with 'NH{q', 49
                roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0].field_0 = 0
                roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_0--
                roleMember[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][1][address(arg1)].field_0 = 0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function revokeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
    else:
        if roleAdmin[roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_256][address(msg.sender)].field_0:
            if roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][address(arg1)].field_0:
                roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][address(arg1)].field_0 = 0
                emit RoleRevoked(0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723, arg1, msg.sender);
            if roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][address(arg1)].field_0:
                if roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0 - 1 != roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][address(arg1)].field_0 - 1:
                    if roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0 - 1 >= roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0:
                        revert with 'NH{q', 50
                    if roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][address(arg1)].field_0 - 1 >= roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0:
                        revert with 'NH{q', 50
                    roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][address(arg1)].field_0].field_0 = roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0].field_0
                    roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0].field_0].field_0 = roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][address(arg1)].field_0
                if not roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0:
                    revert with 'NH{q', 49
                roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0].field_0 = 0
                roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_0--
                roleMember[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723][1][address(arg1)].field_0 = 0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0xaee674c6ada01c6d4ee4067d160ffdacc9cc9aba7ca34516f8c9ff75fdc8d723].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function unfreezeUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = 0x92de27771f92d6942691d73358b3a4673e4880de8356f8f2cf452be87e02d363
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    else:
        if roleAdmin[roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_256][address(msg.sender)].field_0:
            if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0:
                roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][address(arg1)].field_0 = 0
                emit RoleRevoked(0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5, arg1, msg.sender);
            if roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][address(arg1)].field_0:
                if roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0 - 1 != roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][address(arg1)].field_0 - 1:
                    if roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0 - 1 >= roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0:
                        revert with 'NH{q', 50
                    if roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][address(arg1)].field_0 - 1 >= roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0:
                        revert with 'NH{q', 50
                    roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][address(arg1)].field_0].field_0 = roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0].field_0
                    roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0].field_0].field_0 = roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][address(arg1)].field_0
                if not roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0:
                    revert with 'NH{q', 49
                roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0].field_0 = 0
                roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_0--
                roleMember[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5][1][address(arg1)].field_0 = 0
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[0x5edc4fd0544f0b4b53f14f295fb04bbd6fdbc1bea1fd8edf5851b385aee145d5].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}



}
