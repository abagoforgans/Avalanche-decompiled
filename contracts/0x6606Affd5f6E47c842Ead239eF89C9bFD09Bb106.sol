contract main {




// =====================  Runtime code  =====================


#
#  - sub_35bc07c2(?)
#  - sub_a578fe62(?)
#
address owner;
uint256 stor1;
uint8 stor2;
address randomizerAddress; offset 8
address sub_93066351Address;
address sub_f3211b5eAddress;
address sub_809deb63Address;
address sub_f43bc155Address;
address sub_c0c675edAddress;
uint8 stor8; offset 160
uint8 stor8; offset 184
uint16 sub_9dd85f17; offset 168
uint16 sub_508881c1; offset 192
uint128 stor8; offset 184
uint128 stor8; offset 160
address sub_722180c0Address;
uint256 sub_eef28eaf;
uint256 sub_ad789acb;
uint256 sub_bab2f3cf;
uint8 sub_dc1ce9ac;
uint256 sub_01f47d88;
uint8 sub_7f75077a;
uint8 sub_ce9efb02; offset 8
uint256 sub_d01a49cf;
uint256 sub_244d907e;
uint256 sub_e625866a;
uint256 sub_d23270a3;
uint256 sub_b175c7c7;
uint256 sub_c0d8478d;
uint256 sub_1eca8abe;
uint256 sub_221947ca;
uint256 sub_21af9534;
uint256 sub_b85fd1c0;
uint256 sub_fc7c54de;
uint256 sub_3b13ec6b;
uint256 sub_4b33b36e;
uint256 sub_de7b4551;
uint256 sub_bc3cef25;
uint256 sub_7f409a2b;
address WITHDRAW_ADDRESS;
mapping of uint8 stor32;
mapping of uint8 stor33;
mapping of uint8 stor34;
mapping of uint8 stor35;

function sub_01f47d88(?) {
    return sub_01f47d88
}

function WITHDRAW_ADDRESS() {
    return WITHDRAW_ADDRESS
}

function sub_1eca8abe(?) {
    return sub_1eca8abe
}

function sub_21af9534(?) {
    return sub_21af9534
}

function sub_221947ca(?) {
    return sub_221947ca
}

function sub_244d907e(?) {
    return sub_244d907e
}

function sub_28cfce81(?) {
    return bool(uint8(stor8.field_184))
}

function sub_3b13ec6b(?) {
    return sub_3b13ec6b
}

function sub_4b33b36e(?) {
    return sub_4b33b36e
}

function sub_508881c1(?) {
    return sub_508881c1
}

function paused() {
    return bool(stor2)
}

function sub_722180c0(?) {
    return sub_722180c0Address
}

function sub_7f409a2b(?) {
    return sub_7f409a2b
}

function sub_7f75077a(?) {
    return sub_7f75077a
}

function sub_809deb63(?) {
    return sub_809deb63Address
}

function owner() {
    return owner
}

function sub_93066351(?) {
    return sub_93066351Address
}

function sub_9dd85f17(?) {
    return sub_9dd85f17
}

function sub_ad789acb(?) {
    return sub_ad789acb
}

function sub_ae5aebba(?) {
    return bool(uint8(stor8.field_160))
}

function sub_b175c7c7(?) {
    return sub_b175c7c7
}

function sub_b85fd1c0(?) {
    return sub_b85fd1c0
}

function sub_bab2f3cf(?) {
    return sub_bab2f3cf
}

function sub_bc3cef25(?) {
    return sub_bc3cef25
}

function sub_c0c675ed(?) {
    return sub_c0c675edAddress
}

function sub_c0d8478d(?) {
    return sub_c0d8478d
}

function sub_ce9efb02(?) {
    return sub_ce9efb02
}

function sub_d01a49cf(?) {
    return sub_d01a49cf
}

function sub_d23270a3(?) {
    return sub_d23270a3
}

function sub_dc1ce9ac(?) {
    return bool(sub_dc1ce9ac)
}

function sub_de7b4551(?) {
    return sub_de7b4551
}

function sub_e625866a(?) {
    return sub_e625866a
}

function sub_eef28eaf(?) {
    return sub_eef28eaf
}

function randomizer() {
    return randomizerAddress
}

function sub_f3211b5e(?) {
    return sub_f3211b5eAddress
}

function sub_f43bc155(?) {
    return sub_f43bc155Address
}

function sub_fc7c54de(?) {
    return sub_fc7c54de
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_077e4c61(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eef28eaf = arg1
}

function sub_0a786bb7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1eca8abe = arg1
}

function sub_10a93abf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_221947ca = arg1
}

function sub_16642ca0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d01a49cf = arg1
}

function sub_1b984138(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4b33b36e = arg1
}

function sub_47d15a60(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c0d8478d = arg1
}

function sub_549c8ea4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fc7c54de = arg1
}

function sub_59ae41c8(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3b13ec6b = arg1
}

function sub_64dc161e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_de7b4551 = arg1
}

function sub_776746c0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bab2f3cf = arg1
}

function sub_93c2c383(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_01f47d88 = arg1
}

function sub_9c831dbf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_21af9534 = arg1
}

function sub_ae17f5bd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d23270a3 = arg1
}

function sub_c26b6a57(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7f409a2b = arg1
}

function sub_c4af33f4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ad789acb = arg1
}

function sub_eabf530c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_244d907e = arg1
}

function sub_f4dd72bb(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b175c7c7 = arg1
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32[address(arg1)] = 1
}

function sub_5d7da486(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7f75077a = uint8(arg1)
}

function sub_f2787f86(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ce9efb02 = uint8(arg1)
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32[address(arg1)] = 0
}

function sub_68726125(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9dd85f17 = uint16(arg1)
}

function sub_ebfab59c(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_508881c1 = uint16(arg1)
}

function sub_6d3a7cba(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dc1ce9ac = uint8(bool(arg1))
}

function setPreSaleStarted(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function setPublicSaleStarted(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor8.field_184) = Mask(72, 0, arg1)
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call WITHDRAW_ADDRESS with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Game: Failed to send funds'
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

function setWithdrawAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if WITHDRAW_ADDRESS:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Game: You cannot change the withdraw address anymore'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: Cannot be set to the zero address'
    WITHDRAW_ADDRESS = arg1
}

function setContracts(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    randomizerAddress = arg1
    sub_f3211b5eAddress = arg2
    sub_809deb63Address = arg3
    sub_93066351Address = arg4
    sub_f43bc155Address = arg5
    sub_c0c675edAddress = arg6
    sub_722180c0Address = arg7
}

function mintGold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'Game: Only EOA'
    if arg1 and sub_7f409a2b > -1 / arg1:
        revert with 0, 17
    require ext_code.size(sub_f3211b5eAddress)
    call sub_f3211b5eAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1 * sub_7f409a2b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_722180c0Address)
    call sub_722180c0Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9448a16a: msg.sender, arg1
    stor1 = 1
}

function sub_4bbc0659(?) {
    if not sub_dc1ce9ac:
        return sub_d01a49cf
    if block.timestamp < sub_e625866a:
        revert with 0, 17
    if not sub_01f47d88:
        revert with 0, 18
    if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
        revert with 0, 17
    if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
        revert with 0, 17
    if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
        if 0 >= sub_244d907e:
            return 0
    else:
        if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
            revert with 0, 17
        if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
            return (sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88))
    return sub_244d907e
}

function sub_4c758105(?) {
    if not sub_dc1ce9ac:
        return sub_3b13ec6b
    if block.timestamp < sub_bc3cef25:
        revert with 0, 17
    if not sub_01f47d88:
        revert with 0, 18
    if sub_3b13ec6b and sub_7f75077a > -1 / sub_3b13ec6b:
        revert with 0, 17
    if sub_3b13ec6b * sub_7f75077a / 100 and block.timestamp - sub_bc3cef25 / sub_01f47d88 > -1 / sub_3b13ec6b * sub_7f75077a / 100:
        revert with 0, 17
    if sub_3b13ec6b <= sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88:
        if 0 >= sub_de7b4551:
            return 0
    else:
        if sub_3b13ec6b < sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88:
            revert with 0, 17
        if sub_3b13ec6b - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88) >= sub_de7b4551:
            return (sub_3b13ec6b - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88))
    return sub_de7b4551
}

function sub_b3512eb2(?) {
    if not sub_dc1ce9ac:
        return sub_221947ca
    if block.timestamp < sub_b85fd1c0:
        revert with 0, 17
    if not sub_01f47d88:
        revert with 0, 18
    if sub_221947ca and sub_7f75077a > -1 / sub_221947ca:
        revert with 0, 17
    if sub_221947ca * sub_7f75077a / 100 and block.timestamp - sub_b85fd1c0 / sub_01f47d88 > -1 / sub_221947ca * sub_7f75077a / 100:
        revert with 0, 17
    if sub_221947ca <= sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88:
        if 0 >= sub_21af9534:
            return 0
    else:
        if sub_221947ca < sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88:
            revert with 0, 17
        if sub_221947ca - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88) >= sub_21af9534:
            return (sub_221947ca - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88))
    return sub_21af9534
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not randomizerAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: Randomizer contract not set'
    if not sub_f3211b5eAddress:
        revert with 0, 'Game: Blood contract not set'
    if not sub_809deb63Address:
        revert with 0, 'Game: NFT contract not set'
    if not sub_93066351Address:
        revert with 0, 'Game: Arena contract not set'
    if not sub_f43bc155Address:
        revert with 0, 'Game: Ring contract not set'
    if not sub_c0c675edAddress:
        revert with 0, 'Game: Amulet contract not set'
    if not sub_722180c0Address:
        revert with 0, 'Game: Gold contract not set'
    if not WITHDRAW_ADDRESS:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: Withdrawal address must be set'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor2:
            revert with 0, 'Pausable: not paused'
        stor2 = 0
        emit Unpaused(msg.sender);
    else:
        if stor2:
            revert with 0, 'Pausable: paused'
        stor2 = 1
        emit Paused(msg.sender);
}

function sub_a26f75e1(?) {
    require calldata.size - 4 >= 32
    staticcall sub_93066351Address.isStaked(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        staticcall sub_809deb63Address.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        return ext_call.return_data[12 len 20]
    staticcall sub_93066351Address.getStake(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    if not ext_call.return_data[108 len 20]:
        revert with 0, 'Game: The owner cannot be address(0)'
    return ext_call.return_data[108 len 20]
}

function sub_fc837cd0(?) {
    require calldata.size - 4 >= 32
    staticcall sub_93066351Address.isStaked(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        staticcall sub_809deb63Address.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        return ext_call.return_data[12 len 20]
    staticcall sub_93066351Address.getStake(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    if not ext_call.return_data[108 len 20]:
        revert with 0, 'Game: The owner cannot be address(0)'
    return ext_call.return_data[108 len 20]
}

function sub_54f727bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    staticcall sub_c0c675edAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        staticcall sub_c0c675edAddress.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[_23]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _28 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_28] = mem[_27]
        mem[_28 + 32] = mem[_27 + 32]
        mem[_28 + 64] = mem[_27 + 64]
        if 24 * 3600 > !mem[_28 + 64]:
            revert with 0, 17
        if block.timestamp < mem[_28 + 64] + (24 * 3600):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_8d468279(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    staticcall sub_f43bc155Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        staticcall sub_f43bc155Address.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[_23]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _28 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_28] = mem[_27]
        mem[_28 + 32] = mem[_27 + 32]
        mem[_28 + 64] = mem[_27 + 64]
        if 24 * 3600 > !mem[_28 + 64]:
            revert with 0, 17
        if block.timestamp < mem[_28 + 64] + (24 * 3600):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_364bd6ea(?) {
    require calldata.size - 4 >= 32
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'Game: Only EOA'
    if not sub_dc1ce9ac:
        if arg1 and sub_221947ca > -1 / arg1:
            revert with 0, 17
        require ext_code.size(sub_f3211b5eAddress)
        call sub_f3211b5eAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg1 * sub_221947ca
    else:
        if block.timestamp < sub_b85fd1c0:
            revert with 0, 17
        if not sub_01f47d88:
            revert with 0, 18
        if sub_221947ca and sub_7f75077a > -1 / sub_221947ca:
            revert with 0, 17
        if sub_221947ca * sub_7f75077a / 100 and block.timestamp - sub_b85fd1c0 / sub_01f47d88 > -1 / sub_221947ca * sub_7f75077a / 100:
            revert with 0, 17
        if sub_221947ca <= sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88:
            if 0 >= sub_21af9534:
                if arg1 and 0 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if arg1 and sub_21af9534 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_21af9534
        else:
            if sub_221947ca < sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88:
                revert with 0, 17
            if sub_221947ca - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88) >= sub_21af9534:
                if arg1 and sub_221947ca - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88) > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, (sub_221947ca * arg1) - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88 * arg1)
            else:
                if arg1 and sub_21af9534 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_21af9534
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f43bc155Address)
    call sub_f43bc155Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_dc1ce9ac:
        if sub_221947ca and sub_ce9efb02 > -1 / sub_221947ca:
            revert with 0, 17
        if not sub_dc1ce9ac:
            if sub_221947ca > !(sub_221947ca * sub_ce9efb02 / 100):
                revert with 0, 17
            sub_221947ca += sub_221947ca * sub_ce9efb02 / 100
        else:
            if block.timestamp < sub_b85fd1c0:
                revert with 0, 17
            if not sub_01f47d88:
                revert with 0, 18
            if sub_221947ca and sub_7f75077a > -1 / sub_221947ca:
                revert with 0, 17
            if sub_221947ca * sub_7f75077a / 100 and block.timestamp - sub_b85fd1c0 / sub_01f47d88 > -1 / sub_221947ca * sub_7f75077a / 100:
                revert with 0, 17
            if sub_221947ca <= sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88:
                if 0 >= sub_21af9534:
                    if 0 > !(sub_221947ca * sub_ce9efb02 / 100):
                        revert with 0, 17
                    sub_221947ca = sub_221947ca * sub_ce9efb02 / 100
                else:
                    if sub_21af9534 > !(sub_221947ca * sub_ce9efb02 / 100):
                        revert with 0, 17
                    sub_221947ca = sub_21af9534 + (sub_221947ca * sub_ce9efb02 / 100)
            else:
                if sub_221947ca < sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88:
                    revert with 0, 17
                if sub_221947ca - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88) >= sub_21af9534:
                    if sub_221947ca - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88) > !(sub_221947ca * sub_ce9efb02 / 100):
                        revert with 0, 17
                    sub_221947ca = sub_221947ca - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88) + (sub_221947ca * sub_ce9efb02 / 100)
                else:
                    if sub_21af9534 > !(sub_221947ca * sub_ce9efb02 / 100):
                        revert with 0, 17
                    sub_221947ca = sub_21af9534 + (sub_221947ca * sub_ce9efb02 / 100)
    sub_b85fd1c0 = block.timestamp
    emit 0xa134ec5f: msg.sender, arg1
    stor1 = 1
}

function sub_c4bd6114(?) {
    require calldata.size - 4 >= 32
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'Game: Only EOA'
    if not sub_dc1ce9ac:
        if arg1 and sub_3b13ec6b > -1 / arg1:
            revert with 0, 17
        require ext_code.size(sub_f3211b5eAddress)
        call sub_f3211b5eAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg1 * sub_3b13ec6b
    else:
        if block.timestamp < sub_bc3cef25:
            revert with 0, 17
        if not sub_01f47d88:
            revert with 0, 18
        if sub_3b13ec6b and sub_7f75077a > -1 / sub_3b13ec6b:
            revert with 0, 17
        if sub_3b13ec6b * sub_7f75077a / 100 and block.timestamp - sub_bc3cef25 / sub_01f47d88 > -1 / sub_3b13ec6b * sub_7f75077a / 100:
            revert with 0, 17
        if sub_3b13ec6b <= sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88:
            if 0 >= sub_de7b4551:
                if arg1 and 0 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if arg1 and sub_de7b4551 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_de7b4551
        else:
            if sub_3b13ec6b < sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88:
                revert with 0, 17
            if sub_3b13ec6b - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88) >= sub_de7b4551:
                if arg1 and sub_3b13ec6b - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88) > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, (sub_3b13ec6b * arg1) - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88 * arg1)
            else:
                if arg1 and sub_de7b4551 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_de7b4551
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_c0c675edAddress)
    call sub_c0c675edAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_dc1ce9ac:
        if sub_3b13ec6b and sub_ce9efb02 > -1 / sub_3b13ec6b:
            revert with 0, 17
        if not sub_dc1ce9ac:
            if sub_3b13ec6b > !(sub_3b13ec6b * sub_ce9efb02 / 100):
                revert with 0, 17
            sub_3b13ec6b += sub_3b13ec6b * sub_ce9efb02 / 100
        else:
            if block.timestamp < sub_bc3cef25:
                revert with 0, 17
            if not sub_01f47d88:
                revert with 0, 18
            if sub_3b13ec6b and sub_7f75077a > -1 / sub_3b13ec6b:
                revert with 0, 17
            if sub_3b13ec6b * sub_7f75077a / 100 and block.timestamp - sub_bc3cef25 / sub_01f47d88 > -1 / sub_3b13ec6b * sub_7f75077a / 100:
                revert with 0, 17
            if sub_3b13ec6b <= sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88:
                if 0 >= sub_de7b4551:
                    if 0 > !(sub_3b13ec6b * sub_ce9efb02 / 100):
                        revert with 0, 17
                    sub_3b13ec6b = sub_3b13ec6b * sub_ce9efb02 / 100
                else:
                    if sub_de7b4551 > !(sub_3b13ec6b * sub_ce9efb02 / 100):
                        revert with 0, 17
                    sub_3b13ec6b = sub_de7b4551 + (sub_3b13ec6b * sub_ce9efb02 / 100)
            else:
                if sub_3b13ec6b < sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88:
                    revert with 0, 17
                if sub_3b13ec6b - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88) >= sub_de7b4551:
                    if sub_3b13ec6b - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88) > !(sub_3b13ec6b * sub_ce9efb02 / 100):
                        revert with 0, 17
                    sub_3b13ec6b = sub_3b13ec6b - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88) + (sub_3b13ec6b * sub_ce9efb02 / 100)
                else:
                    if sub_de7b4551 > !(sub_3b13ec6b * sub_ce9efb02 / 100):
                        revert with 0, 17
                    sub_3b13ec6b = sub_de7b4551 + (sub_3b13ec6b * sub_ce9efb02 / 100)
    sub_bc3cef25 = block.timestamp
    emit 0x6606f109: msg.sender, arg1
    stor1 = 1
}

function sub_32bef484(?) payable {
    require calldata.size - 4 >= 32
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'Game: Only EOA'
    if uint8(stor8.field_160):
        if not stor33[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You are not on the whitelist'
        if stor34[msg.sender] > !arg1:
            revert with 0, 17
        if stor34[msg.sender] + arg1 > sub_9dd85f17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You cannot mint more GEN0 during pre-sale'
    else:
        if not uint8(stor8.field_184):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: GEN0 sale has not started yet'
        if not uint8(stor8.field_160):
            if stor35[msg.sender] > !arg1:
                revert with 0, 17
            if stor35[msg.sender] + arg1 > sub_508881c1:
                revert with 0, 'Game: You cannot mint more GEN0'
        else:
            if not stor33[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You are not on the whitelist'
            if stor34[msg.sender] > !arg1:
                revert with 0, 17
            if stor34[msg.sender] + arg1 > sub_9dd85f17:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You cannot mint more GEN0 during pre-sale'
    call sub_809deb63Address.tokensMinted() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    call sub_809deb63Address.MAX_TOKENS() with:
         gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(ext_call.return_data[0]) > !arg1:
        revert with 0, 17
    if uint16(ext_call.return_data[0]) + arg1 > ext_call.return_data[0]:
        revert with 0, 'Game: All tokens minted'
    if uint16(ext_call.return_data[0]) > !arg1:
        revert with 0, 17
    if uint16(ext_call.return_data[0]) + arg1 > sub_ad789acb:
        revert with 0, 'Game: All GEN0 tokens minted'
    if arg1 and sub_eef28eaf > -1 / arg1:
        revert with 0, 17
    if msg.value < arg1 * sub_eef28eaf:
        revert with 0, 'Game: Invalid payment amount'
    if arg1 > test266151307():
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 96] = arg1
    mem[64] = (2 * ceil32(return_data.size)) + (32 * arg1) + 128
    if arg1:
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    idx = 0
    s = ext_call.return_data[0]
    while idx < arg1:
        mem[0] = msg.sender
        if not uint8(stor8.field_160):
            mem[32] = 35
            if stor35[msg.sender] == 255:
                revert with 0, 17
            stor35[msg.sender] = uint8(stor35[msg.sender] + 1)
        else:
            mem[32] = 34
            if stor34[msg.sender] == 255:
                revert with 0, 17
            stor34[msg.sender] = uint8(stor34[msg.sender] + 1)
        if uint16(s) == 65535:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + (32 * arg1) + 128] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + (32 * arg1) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + (32 * arg1) + 164] = 1
        require ext_code.size(sub_809deb63Address)
        call sub_809deb63Address.mint(address arg1, bool arg2) with:
             gas gas_remaining wei
            args msg.sender, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= arg1:
            revert with 0, 50
        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = uint16(s) + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + (32 * arg1) + 128] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + (32 * arg1) + 132] = 32
    mem[(2 * ceil32(return_data.size)) + (32 * arg1) + 164] = arg1
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + (32 * arg1) + 196
    while idx < arg1:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_809deb63Address)
    call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + (32 * arg1) + 132 len (96 * arg1) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + (32 * arg1) + 128] = 32
    mem[(2 * ceil32(return_data.size)) + (32 * arg1) + 160] = arg1
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 64
    while idx < arg1:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x9dcf1c02: mem[mem[64] len (2 * ceil32(return_data.size)) + (64 * arg1) + -mem[64] + 192], msg.sender
    stor1 = 1
}

function sub_bb22fd44(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[800 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    if not bool(ceil32(return_data.size) + 1152 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 800] = ext_call.return_data[0]
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    mem[ceil32(return_data.size) + 832] = ext_call.return_data[32]
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    mem[ceil32(return_data.size) + 864] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[126 len 2]
    mem[ceil32(return_data.size) + 896] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 928] = ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    mem[ceil32(return_data.size) + 960] = ext_call.return_data[160]
    mem[ceil32(return_data.size) + 992] = ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    mem[ceil32(return_data.size) + 1024] = ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    mem[ceil32(return_data.size) + 1056] = ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    mem[ceil32(return_data.size) + 1088] = ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[344 len 8]
    mem[ceil32(return_data.size) + 1120] = ext_call.return_data[320]
    mem[ceil32(return_data.size) + 1156] = arg1
    staticcall sub_93066351Address.isStaked(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 1152] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 1156] = arg1
        staticcall sub_809deb63Address.0x6352211e with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if 0 == ext_call.return_data[126 len 2]:
            mem[(4 * ceil32(return_data.size)) + 1376] = ext_call.return_data[255 len 1]
            mem[(4 * ceil32(return_data.size)) + 1408] = ext_call.return_data[287 len 1]
            mem[(4 * ceil32(return_data.size)) + 1440] = ext_call.return_data[319 len 1]
            mem[(4 * ceil32(return_data.size)) + 1472] = ext_call.return_data[344 len 8]
            return bool(ext_call.return_data[0]), 
                   bool(ext_call.return_data[32]),
                   bool(ext_call.return_data[64]),
                   ext_call.return_data[126 len 2],
                   ext_call.return_data[128],
                   ext_call.return_data[191 len 1],
                   ext_call.return_data[192],
                   mem[(4 * ceil32(return_data.size)) + 1376 len 128]
        mem[(4 * ceil32(return_data.size)) + 1156] = address(ext_call.return_data[0])
        staticcall sub_c0c675edAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 1152
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = idx
            staticcall sub_c0c675edAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_161]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _173 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_173] = mem[_170]
            mem[_173 + 32] = mem[_170 + 32]
            mem[_173 + 64] = mem[_170 + 64]
            if 24 * 3600 > !mem[_173 + 64]:
                revert with 0, 17
            if block.timestamp < mem[_173 + 64] + (24 * 3600):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
    else:
        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 1152 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((4 * ceil32(return_data.size)) + 1280 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
        mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 1184] = ext_call.return_data[32]
        mem[(4 * ceil32(return_data.size)) + 1216] = ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[108 len 20]
        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[96]
        if not ext_call.return_data[108 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if 0 == ext_call.return_data[126 len 2]:
            mem[(4 * ceil32(return_data.size)) + 1504] = ext_call.return_data[255 len 1]
            mem[(4 * ceil32(return_data.size)) + 1536] = ext_call.return_data[287 len 1]
            mem[(4 * ceil32(return_data.size)) + 1568] = ext_call.return_data[319 len 1]
            mem[(4 * ceil32(return_data.size)) + 1600] = ext_call.return_data[344 len 8]
            return bool(ext_call.return_data[0]), 
                   bool(ext_call.return_data[32]),
                   bool(ext_call.return_data[64]),
                   ext_call.return_data[126 len 2],
                   ext_call.return_data[128],
                   ext_call.return_data[191 len 1],
                   ext_call.return_data[192],
                   mem[(4 * ceil32(return_data.size)) + 1504 len 128]
        mem[(4 * ceil32(return_data.size)) + 1284] = ext_call.return_data[108 len 20]
        staticcall sub_c0c675edAddress.0x70a08231 with:
                gas gas_remaining wei
               args ext_call.return_data[108 len 20]
        mem[(4 * ceil32(return_data.size)) + 1280] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 1280
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(ext_call.return_data[96])
            mem[mem[64] + 36] = idx
            staticcall sub_c0c675edAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[96]), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_162]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _172 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _174 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_174] = mem[_172]
            mem[_174 + 32] = mem[_172 + 32]
            mem[_174 + 64] = mem[_172 + 64]
            if 24 * 3600 > !mem[_174 + 64]:
                revert with 0, 17
            if block.timestamp < mem[_174 + 64] + (24 * 3600):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
    if s and sub_4b33b36e > -1 / s:
        revert with 0, 17
    if s * sub_4b33b36e > !sub_fc7c54de:
        revert with 0, 17
    if block.timestamp < mem[ceil32(return_data.size) + 928]:
        revert with 0, 17
    if not (s * sub_4b33b36e) + sub_fc7c54de:
        revert with 0, 18
    if uint16(block.timestamp - mem[ceil32(return_data.size) + 928] / (s * sub_4b33b36e) + sub_fc7c54de) > mem[ceil32(return_data.size) + 926 len 2]:
        mem[ceil32(return_data.size) + 896] = 0
        mem[mem[64]] = bool(mem[ceil32(return_data.size) + 800])
        mem[mem[64] + 32] = bool(mem[ceil32(return_data.size) + 832])
        mem[mem[64] + 64] = bool(mem[ceil32(return_data.size) + 864])
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 928]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 991 len 1]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 992]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 1055 len 1]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 1087 len 1]
        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 1119 len 1]
        mem[mem[64] + 320] = mem[ceil32(return_data.size) + 1144 len 8]
        return mem[mem[64] len 96], 0, mem[mem[64] + 128 len 224]
    if mem[ceil32(return_data.size) + 926 len 2] < uint16(block.timestamp - mem[ceil32(return_data.size) + 928] / (s * sub_4b33b36e) + sub_fc7c54de):
        revert with 0, 17
    mem[ceil32(return_data.size) + 896] = uint16(mem[ceil32(return_data.size) + 926 len 2] - uint16(block.timestamp - mem[ceil32(return_data.size) + 928] / (s * sub_4b33b36e) + sub_fc7c54de))
    mem[mem[64]] = bool(mem[ceil32(return_data.size) + 800])
    mem[mem[64] + 32] = bool(mem[ceil32(return_data.size) + 832])
    mem[mem[64] + 64] = bool(mem[ceil32(return_data.size) + 864])
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 926 len 2]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 928]
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 991 len 1]
    mem[mem[64] + 192] = mem[ceil32(return_data.size) + 992]
    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 1055 len 1]
    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 1087 len 1]
    mem[mem[64] + 288] = mem[ceil32(return_data.size) + 1119 len 1]
    mem[mem[64] + 320] = mem[ceil32(return_data.size) + 1144 len 8]
    return memory
      from mem[64]
       len 352
}

function sub_47fd5bf7(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    if tx.origin != msg.sender:
        revert with 0, 'Game: Only EOA'
    if uint16(arg2) < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: Invalid levelsToUpgrade provided.'
    idx = 1
    while uint16(idx) <= uint16(arg2):
        if uint16(arg1) > -uint16(idx) + 65535:
            revert with 0, 17
        if uint16(uint16(idx) + uint16(arg1)):
            if uint16(uint16(idx) + uint16(arg1)) != 1:
                if uint16(uint16(idx) + uint16(arg1)) != 2:
                    if uint16(uint16(idx) + uint16(arg1)) != 3:
                        if uint16(uint16(idx) + uint16(arg1)) != 4:
                            if uint16(uint16(idx) + uint16(arg1)) != 5:
                                if uint16(uint16(idx) + uint16(arg1)) != 6:
                                    if uint16(uint16(idx) + uint16(arg1)) != 7:
                                        if uint16(uint16(idx) + uint16(arg1)) != 8:
                                            if uint16(uint16(idx) + uint16(arg1)) != 9:
                                                if uint16(uint16(idx) + uint16(arg1)) != 10:
                                                    if uint16(uint16(idx) + uint16(arg1)) != 11:
                                                        if uint16(uint16(idx) + uint16(arg1)) != 12:
                                                            if uint16(uint16(idx) + uint16(arg1)) != 13:
                                                                if uint16(uint16(idx) + uint16(arg1)) != 14:
                                                                    if uint16(uint16(idx) + uint16(arg1)) != 15:
                                                                        if uint16(uint16(idx) + uint16(arg1)) != 16:
                                                                            if uint16(uint16(idx) + uint16(arg1)) != 17:
                                                                                if uint16(uint16(idx) + uint16(arg1)) != 18:
                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 19:
                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 20:
                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 21:
                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 22:
                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 23:
                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 24:
                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 25:
                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 26:
                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 27:
                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 28:
                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 29:
                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 30:
                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 31:
                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 32:
                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 33:
                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 34:
                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 35:
                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 36:
                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 37:
                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 38:
                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 39:
                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 40:
                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 41:
                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 42:
                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 43:
                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 44:
                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 45:
                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 46:
                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 47:
                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 48:
                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 49:
                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 50:
                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 51:
                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 52:
                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 53:
                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 54:
                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 55:
                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 56:
                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 57:
                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 58:
                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 59:
                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 60:
                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 61:
                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 62:
                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 63:
                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 64:
                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 65:
                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 66:
                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 67:
                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 68:
                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 69:
                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 70:
                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 71:
                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 72:
                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 73:
                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 74:
                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 75:
                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 76:
                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 77:
                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 78:
                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 79:
                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 80:
                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 81:
                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 82:
                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 83:
                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 84:
                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 85:
                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 86:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 87:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 88:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 89:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 90:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 91:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 92:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + uint16(arg1)) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + uint16(arg1)) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + uint16(arg1)) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + uint16(arg1)) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: This level is not supported yet'
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        continue 
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: Error calculating level up $BLOOD cost.'
}

function sub_23c67f42(?) {
    require calldata.size - 4 >= 32
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'Game: Only EOA'
    if not uint8(stor8.field_184):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: GEN1 sale has not started yet'
    call sub_809deb63Address.tokensMinted() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    call sub_809deb63Address.MAX_TOKENS() with:
         gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(ext_call.return_data[0]) > !arg1:
        revert with 0, 17
    if uint16(ext_call.return_data[0]) + arg1 > ext_call.return_data[0]:
        revert with 0, 'Game: All tokens minted'
    if arg1 <= 0:
        revert with 0, 'Game: Invalid mint amount (max 10)'
    if arg1 > 10:
        revert with 0, 'Game: Invalid mint amount (max 10)'
    if not sub_dc1ce9ac:
        if sub_d01a49cf and arg1 > -1 / sub_d01a49cf:
            revert with 0, 17
        if sub_d01a49cf * arg1 <= 0:
            revert with 0, 'Game: GEN1 mint cost cannot be 0'
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 132] = sub_d01a49cf * arg1
        require ext_code.size(sub_f3211b5eAddress)
        call sub_f3211b5eAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, sub_d01a49cf * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f3211b5eAddress)
        call sub_f3211b5eAddress.updateOriginAccess() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 > test266151307():
            revert with 0, 65
        mem[(2 * ceil32(return_data.size)) + 96] = arg1
        mem[64] = (2 * ceil32(return_data.size)) + (32 * arg1) + 128
        if not arg1:
            idx = 0
            s = 0
            s = 0
            s = ext_call.return_data[0]
            while idx < arg1:
                if uint16(s) == 65535:
                    revert with 0, 17
                mem[mem[64] + 4] = uint16(uint16(s) + 1)
                staticcall randomizerAddress.randomSeed(uint256 arg1) with:
                        gas gas_remaining wei
                       args (uint16(s) + 1 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _394 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _410 = mem[_394]
                if not mem[_394] % 2048 >> 245 % 10:
                    mem[mem[64] + 4] = Mask(112, 0, mem[_394]) >> 144
                    staticcall sub_93066351Address.0x394ffebd with:
                            gas gas_remaining wei
                           args (Mask(256, -144, _410) << 144)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _458 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _482 = mem[_458]
                    require mem[_458] == mem[_458 + 12 len 20]
                    if mem[_458 + 12 len 20]:
                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                        mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_482)
                        mem[mem[64] + 36] = 0
                        require ext_code.size(sub_809deb63Address)
                        call sub_809deb63Address.mint(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args address(_482), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.sender == address(_482):
                        else:
                            emit 0xfcd9ef97: msg.sender, address(_482), uint16(uint16(s) + 1)
                        if sub_dc1ce9ac:
                            if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                revert with 0, 17
                            if not sub_dc1ce9ac:
                                if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                            else:
                                if block.timestamp < sub_e625866a:
                                    revert with 0, 17
                                if not sub_01f47d88:
                                    revert with 0, 18
                                if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                    revert with 0, 17
                                if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                    revert with 0, 17
                                if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                    if 0 >= sub_244d907e:
                                        if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                else:
                                    if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                        revert with 0, 17
                                    if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                        if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _410
                        s = _482
                        s = uint16(s) + 1
                        continue 
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.mint(address arg1, bool arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.sender == msg.sender:
                else:
                    emit 0xfcd9ef97: msg.sender, msg.sender, uint16(uint16(s) + 1)
                if sub_dc1ce9ac:
                    if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                        revert with 0, 17
                    if not sub_dc1ce9ac:
                        if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                            revert with 0, 17
                        sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                    else:
                        if block.timestamp < sub_e625866a:
                            revert with 0, 17
                        if not sub_01f47d88:
                            revert with 0, 18
                        if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                            revert with 0, 17
                        if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                            revert with 0, 17
                        if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                            if 0 >= sub_244d907e:
                                if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                            else:
                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                        else:
                            if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                revert with 0, 17
                            if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                            else:
                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _410
                s = msg.sender
                s = uint16(s) + 1
                continue 
            sub_e625866a = block.timestamp
            mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _363 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 68
            while idx < _363:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_809deb63Address)
            call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len (32 * _363) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _667 = mem[64]
            mem[mem[64]] = 32
            _675 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 64
            while idx < _675:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit 0x9dcf1c02: mem[mem[64] len _667 + (32 * _675) + -mem[64] + 64], msg.sender
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
            idx = 0
            s = 0
            s = 0
            s = ext_call.return_data[0]
            while idx < arg1:
                if uint16(s) == 65535:
                    revert with 0, 17
                mem[mem[64] + 4] = uint16(uint16(s) + 1)
                staticcall randomizerAddress.randomSeed(uint256 arg1) with:
                        gas gas_remaining wei
                       args (uint16(s) + 1 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _412 = mem[_396]
                if not mem[_396] % 2048 >> 245 % 10:
                    mem[mem[64] + 4] = Mask(112, 0, mem[_396]) >> 144
                    staticcall sub_93066351Address.0x394ffebd with:
                            gas gas_remaining wei
                           args (Mask(256, -144, _412) << 144)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _460 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _484 = mem[_460]
                    require mem[_460] == mem[_460 + 12 len 20]
                    if mem[_460 + 12 len 20]:
                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                        mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_484)
                        mem[mem[64] + 36] = 0
                        require ext_code.size(sub_809deb63Address)
                        call sub_809deb63Address.mint(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args address(_484), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.sender == address(_484):
                        else:
                            emit 0xfcd9ef97: msg.sender, address(_484), uint16(uint16(s) + 1)
                        if sub_dc1ce9ac:
                            if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                revert with 0, 17
                            if not sub_dc1ce9ac:
                                if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                            else:
                                if block.timestamp < sub_e625866a:
                                    revert with 0, 17
                                if not sub_01f47d88:
                                    revert with 0, 18
                                if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                    revert with 0, 17
                                if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                    revert with 0, 17
                                if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                    if 0 >= sub_244d907e:
                                        if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                else:
                                    if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                        revert with 0, 17
                                    if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                        if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _412
                        s = _484
                        s = uint16(s) + 1
                        continue 
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.mint(address arg1, bool arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.sender == msg.sender:
                else:
                    emit 0xfcd9ef97: msg.sender, msg.sender, uint16(uint16(s) + 1)
                if sub_dc1ce9ac:
                    if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                        revert with 0, 17
                    if not sub_dc1ce9ac:
                        if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                            revert with 0, 17
                        sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                    else:
                        if block.timestamp < sub_e625866a:
                            revert with 0, 17
                        if not sub_01f47d88:
                            revert with 0, 18
                        if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                            revert with 0, 17
                        if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                            revert with 0, 17
                        if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                            if 0 >= sub_244d907e:
                                if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                            else:
                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                        else:
                            if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                revert with 0, 17
                            if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                            else:
                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _412
                s = msg.sender
                s = uint16(s) + 1
                continue 
            sub_e625866a = block.timestamp
            mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _364 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 68
            while idx < _364:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_809deb63Address)
            call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len (32 * _364) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _668 = mem[64]
            mem[mem[64]] = 32
            _676 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 64
            while idx < _676:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit 0x9dcf1c02: mem[mem[64] len _668 + (32 * _676) + -mem[64] + 64], msg.sender
    else:
        if block.timestamp < sub_e625866a:
            revert with 0, 17
        if not sub_01f47d88:
            revert with 0, 18
        if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
            revert with 0, 17
        if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
            revert with 0, 17
        if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
            if 0 >= sub_244d907e:
                if False and arg1 > 0:
                    revert with 0, 17
                revert with 0, 'Game: GEN1 mint cost cannot be 0'
            if sub_244d907e and arg1 > -1 / sub_244d907e:
                revert with 0, 17
            if sub_244d907e * arg1 <= 0:
                revert with 0, 'Game: GEN1 mint cost cannot be 0'
            mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 132] = sub_244d907e * arg1
            require ext_code.size(sub_f3211b5eAddress)
            call sub_f3211b5eAddress.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, sub_244d907e * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f3211b5eAddress)
            call sub_f3211b5eAddress.updateOriginAccess() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = arg1
            mem[64] = (2 * ceil32(return_data.size)) + (32 * arg1) + 128
            if not arg1:
                idx = 0
                s = 0
                s = 0
                s = ext_call.return_data[0]
                while idx < arg1:
                    if uint16(s) == 65535:
                        revert with 0, 17
                    mem[mem[64] + 4] = uint16(uint16(s) + 1)
                    staticcall randomizerAddress.randomSeed(uint256 arg1) with:
                            gas gas_remaining wei
                           args (uint16(s) + 1 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _398 = mem[_382]
                    if not mem[_382] % 2048 >> 245 % 10:
                        mem[mem[64] + 4] = Mask(112, 0, mem[_382]) >> 144
                        staticcall sub_93066351Address.0x394ffebd with:
                                gas gas_remaining wei
                               args (Mask(256, -144, _398) << 144)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _446 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _470 = mem[_446]
                        require mem[_446] == mem[_446 + 12 len 20]
                        if mem[_446 + 12 len 20]:
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                            mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_470)
                            mem[mem[64] + 36] = 0
                            require ext_code.size(sub_809deb63Address)
                            call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args address(_470), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.sender == address(_470):
                            else:
                                emit 0xfcd9ef97: msg.sender, address(_470), uint16(uint16(s) + 1)
                            if sub_dc1ce9ac:
                                if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                    revert with 0, 17
                                if not sub_dc1ce9ac:
                                    if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                                else:
                                    if block.timestamp < sub_e625866a:
                                        revert with 0, 17
                                    if not sub_01f47d88:
                                        revert with 0, 18
                                    if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                        revert with 0, 17
                                    if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                        revert with 0, 17
                                    if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                        if 0 >= sub_244d907e:
                                            if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                revert with 0, 17
                                            sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                        else:
                                            if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                revert with 0, 17
                                            sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                    else:
                                        if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                            revert with 0, 17
                                        if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                            if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                revert with 0, 17
                                            sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                        else:
                                            if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                revert with 0, 17
                                            sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _398
                            s = _470
                            s = uint16(s) + 1
                            continue 
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                    mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    require ext_code.size(sub_809deb63Address)
                    call sub_809deb63Address.mint(address arg1, bool arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if msg.sender == msg.sender:
                    else:
                        emit 0xfcd9ef97: msg.sender, msg.sender, uint16(uint16(s) + 1)
                    if sub_dc1ce9ac:
                        if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                            revert with 0, 17
                        if not sub_dc1ce9ac:
                            if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                revert with 0, 17
                            sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                        else:
                            if block.timestamp < sub_e625866a:
                                revert with 0, 17
                            if not sub_01f47d88:
                                revert with 0, 18
                            if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                revert with 0, 17
                            if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                revert with 0, 17
                            if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                if 0 >= sub_244d907e:
                                    if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                else:
                                    if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                            else:
                                if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                    revert with 0, 17
                                if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                    if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                else:
                                    if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _398
                    s = msg.sender
                    s = uint16(s) + 1
                    continue 
                sub_e625866a = block.timestamp
                mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _357 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 68
                while idx < _357:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len (32 * _357) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _661 = mem[64]
                mem[mem[64]] = 32
                _669 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 64
                while idx < _669:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0x9dcf1c02: mem[mem[64] len _661 + (32 * _669) + -mem[64] + 64], msg.sender
            else:
                mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                idx = 0
                s = 0
                s = 0
                s = ext_call.return_data[0]
                while idx < arg1:
                    if uint16(s) == 65535:
                        revert with 0, 17
                    mem[mem[64] + 4] = uint16(uint16(s) + 1)
                    staticcall randomizerAddress.randomSeed(uint256 arg1) with:
                            gas gas_remaining wei
                           args (uint16(s) + 1 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _384 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _400 = mem[_384]
                    if not mem[_384] % 2048 >> 245 % 10:
                        mem[mem[64] + 4] = Mask(112, 0, mem[_384]) >> 144
                        staticcall sub_93066351Address.0x394ffebd with:
                                gas gas_remaining wei
                               args (Mask(256, -144, _400) << 144)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _472 = mem[_448]
                        require mem[_448] == mem[_448 + 12 len 20]
                        if mem[_448 + 12 len 20]:
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                            mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_472)
                            mem[mem[64] + 36] = 0
                            require ext_code.size(sub_809deb63Address)
                            call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args address(_472), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.sender == address(_472):
                            else:
                                emit 0xfcd9ef97: msg.sender, address(_472), uint16(uint16(s) + 1)
                            if sub_dc1ce9ac:
                                if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                    revert with 0, 17
                                if not sub_dc1ce9ac:
                                    if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                                else:
                                    if block.timestamp < sub_e625866a:
                                        revert with 0, 17
                                    if not sub_01f47d88:
                                        revert with 0, 18
                                    if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                        revert with 0, 17
                                    if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                        revert with 0, 17
                                    if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                        if 0 >= sub_244d907e:
                                            if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                revert with 0, 17
                                            sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                        else:
                                            if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                revert with 0, 17
                                            sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                    else:
                                        if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                            revert with 0, 17
                                        if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                            if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                revert with 0, 17
                                            sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                        else:
                                            if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                revert with 0, 17
                                            sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _400
                            s = _472
                            s = uint16(s) + 1
                            continue 
                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                    mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    require ext_code.size(sub_809deb63Address)
                    call sub_809deb63Address.mint(address arg1, bool arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if msg.sender == msg.sender:
                    else:
                        emit 0xfcd9ef97: msg.sender, msg.sender, uint16(uint16(s) + 1)
                    if sub_dc1ce9ac:
                        if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                            revert with 0, 17
                        if not sub_dc1ce9ac:
                            if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                revert with 0, 17
                            sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                        else:
                            if block.timestamp < sub_e625866a:
                                revert with 0, 17
                            if not sub_01f47d88:
                                revert with 0, 18
                            if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                revert with 0, 17
                            if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                revert with 0, 17
                            if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                if 0 >= sub_244d907e:
                                    if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                else:
                                    if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                            else:
                                if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                    revert with 0, 17
                                if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                    if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                else:
                                    if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                        revert with 0, 17
                                    sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _400
                    s = msg.sender
                    s = uint16(s) + 1
                    continue 
                sub_e625866a = block.timestamp
                mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _358 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 68
                while idx < _358:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len (32 * _358) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _662 = mem[64]
                mem[mem[64]] = 32
                _670 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 64
                while idx < _670:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0x9dcf1c02: mem[mem[64] len _662 + (32 * _670) + -mem[64] + 64], msg.sender
        else:
            if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                revert with 0, 17
            if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) and arg1 > -1 / sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88):
                    revert with 0, 17
                if (sub_d01a49cf * arg1) - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88 * arg1) <= 0:
                    revert with 0, 'Game: GEN1 mint cost cannot be 0'
                mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 132] = (sub_d01a49cf * arg1) - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88 * arg1)
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, (sub_d01a49cf * arg1) - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88 * arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.updateOriginAccess() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 > test266151307():
                    revert with 0, 65
                mem[(2 * ceil32(return_data.size)) + 96] = arg1
                mem[64] = (2 * ceil32(return_data.size)) + (32 * arg1) + 128
                if not arg1:
                    idx = 0
                    s = 0
                    s = 0
                    s = ext_call.return_data[0]
                    while idx < arg1:
                        if uint16(s) == 65535:
                            revert with 0, 17
                        mem[mem[64] + 4] = uint16(uint16(s) + 1)
                        staticcall randomizerAddress.randomSeed(uint256 arg1) with:
                                gas gas_remaining wei
                               args (uint16(s) + 1 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _386 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _402 = mem[_386]
                        if not mem[_386] % 2048 >> 245 % 10:
                            mem[mem[64] + 4] = Mask(112, 0, mem[_386]) >> 144
                            staticcall sub_93066351Address.0x394ffebd with:
                                    gas gas_remaining wei
                                   args (Mask(256, -144, _402) << 144)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _450 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _474 = mem[_450]
                            require mem[_450] == mem[_450 + 12 len 20]
                            if mem[_450 + 12 len 20]:
                                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                                mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_474)
                                mem[mem[64] + 36] = 0
                                require ext_code.size(sub_809deb63Address)
                                call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args address(_474), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if msg.sender == address(_474):
                                else:
                                    emit 0xfcd9ef97: msg.sender, address(_474), uint16(uint16(s) + 1)
                                if sub_dc1ce9ac:
                                    if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                        revert with 0, 17
                                    if not sub_dc1ce9ac:
                                        if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if block.timestamp < sub_e625866a:
                                            revert with 0, 17
                                        if not sub_01f47d88:
                                            revert with 0, 18
                                        if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                            revert with 0, 17
                                        if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                            revert with 0, 17
                                        if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                            if 0 >= sub_244d907e:
                                                if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                            else:
                                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                        else:
                                            if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                                revert with 0, 17
                                            if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                                if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                            else:
                                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _402
                                s = _474
                                s = uint16(s) + 1
                                continue 
                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                        mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        require ext_code.size(sub_809deb63Address)
                        call sub_809deb63Address.mint(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.sender == msg.sender:
                        else:
                            emit 0xfcd9ef97: msg.sender, msg.sender, uint16(uint16(s) + 1)
                        if sub_dc1ce9ac:
                            if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                revert with 0, 17
                            if not sub_dc1ce9ac:
                                if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                            else:
                                if block.timestamp < sub_e625866a:
                                    revert with 0, 17
                                if not sub_01f47d88:
                                    revert with 0, 18
                                if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                    revert with 0, 17
                                if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                    revert with 0, 17
                                if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                    if 0 >= sub_244d907e:
                                        if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                else:
                                    if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                        revert with 0, 17
                                    if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                        if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _402
                        s = msg.sender
                        s = uint16(s) + 1
                        continue 
                    sub_e625866a = block.timestamp
                    mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _359 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 68
                    while idx < _359:
                        mem[t] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_809deb63Address)
                    call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len (32 * _359) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _663 = mem[64]
                    mem[mem[64]] = 32
                    _671 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 64
                    while idx < _671:
                        mem[t] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x9dcf1c02: mem[mem[64] len _663 + (32 * _671) + -mem[64] + 64], msg.sender
                else:
                    mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                    idx = 0
                    s = 0
                    s = 0
                    s = ext_call.return_data[0]
                    while idx < arg1:
                        if uint16(s) == 65535:
                            revert with 0, 17
                        mem[mem[64] + 4] = uint16(uint16(s) + 1)
                        staticcall randomizerAddress.randomSeed(uint256 arg1) with:
                                gas gas_remaining wei
                               args (uint16(s) + 1 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _388 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _404 = mem[_388]
                        if not mem[_388] % 2048 >> 245 % 10:
                            mem[mem[64] + 4] = Mask(112, 0, mem[_388]) >> 144
                            staticcall sub_93066351Address.0x394ffebd with:
                                    gas gas_remaining wei
                                   args (Mask(256, -144, _404) << 144)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _476 = mem[_452]
                            require mem[_452] == mem[_452 + 12 len 20]
                            if mem[_452 + 12 len 20]:
                                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                                mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_476)
                                mem[mem[64] + 36] = 0
                                require ext_code.size(sub_809deb63Address)
                                call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args address(_476), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if msg.sender == address(_476):
                                else:
                                    emit 0xfcd9ef97: msg.sender, address(_476), uint16(uint16(s) + 1)
                                if sub_dc1ce9ac:
                                    if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                        revert with 0, 17
                                    if not sub_dc1ce9ac:
                                        if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if block.timestamp < sub_e625866a:
                                            revert with 0, 17
                                        if not sub_01f47d88:
                                            revert with 0, 18
                                        if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                            revert with 0, 17
                                        if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                            revert with 0, 17
                                        if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                            if 0 >= sub_244d907e:
                                                if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                            else:
                                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                        else:
                                            if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                                revert with 0, 17
                                            if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                                if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                            else:
                                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _404
                                s = _476
                                s = uint16(s) + 1
                                continue 
                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                        mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        require ext_code.size(sub_809deb63Address)
                        call sub_809deb63Address.mint(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.sender == msg.sender:
                        else:
                            emit 0xfcd9ef97: msg.sender, msg.sender, uint16(uint16(s) + 1)
                        if sub_dc1ce9ac:
                            if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                revert with 0, 17
                            if not sub_dc1ce9ac:
                                if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                            else:
                                if block.timestamp < sub_e625866a:
                                    revert with 0, 17
                                if not sub_01f47d88:
                                    revert with 0, 18
                                if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                    revert with 0, 17
                                if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                    revert with 0, 17
                                if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                    if 0 >= sub_244d907e:
                                        if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                else:
                                    if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                        revert with 0, 17
                                    if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                        if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _404
                        s = msg.sender
                        s = uint16(s) + 1
                        continue 
                    sub_e625866a = block.timestamp
                    mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _360 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 68
                    while idx < _360:
                        mem[t] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_809deb63Address)
                    call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len (32 * _360) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _664 = mem[64]
                    mem[mem[64]] = 32
                    _672 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 64
                    while idx < _672:
                        mem[t] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x9dcf1c02: mem[mem[64] len _664 + (32 * _672) + -mem[64] + 64], msg.sender
            else:
                if sub_244d907e and arg1 > -1 / sub_244d907e:
                    revert with 0, 17
                if sub_244d907e * arg1 <= 0:
                    revert with 0, 'Game: GEN1 mint cost cannot be 0'
                mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 132] = sub_244d907e * arg1
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, sub_244d907e * arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f3211b5eAddress)
                call sub_f3211b5eAddress.updateOriginAccess() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 > test266151307():
                    revert with 0, 65
                mem[(2 * ceil32(return_data.size)) + 96] = arg1
                mem[64] = (2 * ceil32(return_data.size)) + (32 * arg1) + 128
                if not arg1:
                    idx = 0
                    s = 0
                    s = 0
                    s = ext_call.return_data[0]
                    while idx < arg1:
                        if uint16(s) == 65535:
                            revert with 0, 17
                        mem[mem[64] + 4] = uint16(uint16(s) + 1)
                        staticcall randomizerAddress.randomSeed(uint256 arg1) with:
                                gas gas_remaining wei
                               args (uint16(s) + 1 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _390 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _406 = mem[_390]
                        if not mem[_390] % 2048 >> 245 % 10:
                            mem[mem[64] + 4] = Mask(112, 0, mem[_390]) >> 144
                            staticcall sub_93066351Address.0x394ffebd with:
                                    gas gas_remaining wei
                                   args (Mask(256, -144, _406) << 144)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _454 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _478 = mem[_454]
                            require mem[_454] == mem[_454 + 12 len 20]
                            if mem[_454 + 12 len 20]:
                                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                                mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_478)
                                mem[mem[64] + 36] = 0
                                require ext_code.size(sub_809deb63Address)
                                call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args address(_478), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if msg.sender == address(_478):
                                else:
                                    emit 0xfcd9ef97: msg.sender, address(_478), uint16(uint16(s) + 1)
                                if sub_dc1ce9ac:
                                    if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                        revert with 0, 17
                                    if not sub_dc1ce9ac:
                                        if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if block.timestamp < sub_e625866a:
                                            revert with 0, 17
                                        if not sub_01f47d88:
                                            revert with 0, 18
                                        if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                            revert with 0, 17
                                        if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                            revert with 0, 17
                                        if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                            if 0 >= sub_244d907e:
                                                if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                            else:
                                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                        else:
                                            if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                                revert with 0, 17
                                            if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                                if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                            else:
                                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _406
                                s = _478
                                s = uint16(s) + 1
                                continue 
                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                        mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        require ext_code.size(sub_809deb63Address)
                        call sub_809deb63Address.mint(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.sender == msg.sender:
                        else:
                            emit 0xfcd9ef97: msg.sender, msg.sender, uint16(uint16(s) + 1)
                        if sub_dc1ce9ac:
                            if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                revert with 0, 17
                            if not sub_dc1ce9ac:
                                if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                            else:
                                if block.timestamp < sub_e625866a:
                                    revert with 0, 17
                                if not sub_01f47d88:
                                    revert with 0, 18
                                if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                    revert with 0, 17
                                if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                    revert with 0, 17
                                if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                    if 0 >= sub_244d907e:
                                        if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                else:
                                    if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                        revert with 0, 17
                                    if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                        if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _406
                        s = msg.sender
                        s = uint16(s) + 1
                        continue 
                    sub_e625866a = block.timestamp
                    mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _361 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 68
                    while idx < _361:
                        mem[t] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_809deb63Address)
                    call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len (32 * _361) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _665 = mem[64]
                    mem[mem[64]] = 32
                    _673 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 64
                    while idx < _673:
                        mem[t] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x9dcf1c02: mem[mem[64] len _665 + (32 * _673) + -mem[64] + 64], msg.sender
                else:
                    mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                    idx = 0
                    s = 0
                    s = 0
                    s = ext_call.return_data[0]
                    while idx < arg1:
                        if uint16(s) == 65535:
                            revert with 0, 17
                        mem[mem[64] + 4] = uint16(uint16(s) + 1)
                        staticcall randomizerAddress.randomSeed(uint256 arg1) with:
                                gas gas_remaining wei
                               args (uint16(s) + 1 << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _392 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _408 = mem[_392]
                        if not mem[_392] % 2048 >> 245 % 10:
                            mem[mem[64] + 4] = Mask(112, 0, mem[_392]) >> 144
                            staticcall sub_93066351Address.0x394ffebd with:
                                    gas gas_remaining wei
                                   args (Mask(256, -144, _408) << 144)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _456 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _480 = mem[_456]
                            require mem[_456] == mem[_456 + 12 len 20]
                            if mem[_456 + 12 len 20]:
                                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                                mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_480)
                                mem[mem[64] + 36] = 0
                                require ext_code.size(sub_809deb63Address)
                                call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args address(_480), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if msg.sender == address(_480):
                                else:
                                    emit 0xfcd9ef97: msg.sender, address(_480), uint16(uint16(s) + 1)
                                if sub_dc1ce9ac:
                                    if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                        revert with 0, 17
                                    if not sub_dc1ce9ac:
                                        if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if block.timestamp < sub_e625866a:
                                            revert with 0, 17
                                        if not sub_01f47d88:
                                            revert with 0, 18
                                        if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                            revert with 0, 17
                                        if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                            revert with 0, 17
                                        if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                            if 0 >= sub_244d907e:
                                                if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                            else:
                                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                        else:
                                            if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                                revert with 0, 17
                                            if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                                if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                            else:
                                                if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                                    revert with 0, 17
                                                sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _408
                                s = _480
                                s = uint16(s) + 1
                                continue 
                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                        mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        require ext_code.size(sub_809deb63Address)
                        call sub_809deb63Address.mint(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.sender == msg.sender:
                        else:
                            emit 0xfcd9ef97: msg.sender, msg.sender, uint16(uint16(s) + 1)
                        if sub_dc1ce9ac:
                            if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                revert with 0, 17
                            if not sub_dc1ce9ac:
                                if sub_d01a49cf > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                    revert with 0, 17
                                sub_d01a49cf += sub_d01a49cf * sub_ce9efb02 / 100
                            else:
                                if block.timestamp < sub_e625866a:
                                    revert with 0, 17
                                if not sub_01f47d88:
                                    revert with 0, 18
                                if sub_d01a49cf and sub_7f75077a > -1 / sub_d01a49cf:
                                    revert with 0, 17
                                if sub_d01a49cf * sub_7f75077a / 100 and block.timestamp - sub_e625866a / sub_01f47d88 > -1 / sub_d01a49cf * sub_7f75077a / 100:
                                    revert with 0, 17
                                if sub_d01a49cf <= sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                    if 0 >= sub_244d907e:
                                        if 0 > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf * sub_ce9efb02 / 100
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                                else:
                                    if sub_d01a49cf < sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88:
                                        revert with 0, 17
                                    if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) >= sub_244d907e:
                                        if sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_d01a49cf - (sub_d01a49cf * sub_7f75077a / 100 * block.timestamp - sub_e625866a / sub_01f47d88) + (sub_d01a49cf * sub_ce9efb02 / 100)
                                    else:
                                        if sub_244d907e > !(sub_d01a49cf * sub_ce9efb02 / 100):
                                            revert with 0, 17
                                        sub_d01a49cf = sub_244d907e + (sub_d01a49cf * sub_ce9efb02 / 100)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _408
                        s = msg.sender
                        s = uint16(s) + 1
                        continue 
                    sub_e625866a = block.timestamp
                    mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _362 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 68
                    while idx < _362:
                        mem[t] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_809deb63Address)
                    call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len (32 * _362) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _666 = mem[64]
                    mem[mem[64]] = 32
                    _674 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 64
                    while idx < _674:
                        mem[t] = mem[s + 30 len 2]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x9dcf1c02: mem[mem[64] len _666 + (32 * _674) + -mem[64] + 64], msg.sender
    stor1 = 1
}

function sub_0ee2bb31(?) {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    staticcall sub_809deb63Address.getTokenWriteBlock(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] >= block.number:
        revert with 0, 'Game: Nope!'
    mem[ceil32(return_data.size) + 100] = arg1
    staticcall sub_809deb63Address.0x32385e25 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] >= block.number:
        revert with 0, 'Game: Nope!'
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    staticcall sub_93066351Address.isStaked(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Game: Token is not staked'
    mem[(4 * ceil32(return_data.size)) + 96] = 0
    mem[(4 * ceil32(return_data.size)) + 128] = 0
    mem[(4 * ceil32(return_data.size)) + 160] = 0
    mem[(4 * ceil32(return_data.size)) + 192] = 0
    mem[(4 * ceil32(return_data.size)) + 224] = 0
    mem[(4 * ceil32(return_data.size)) + 256] = 0
    mem[(4 * ceil32(return_data.size)) + 288] = 0
    mem[(4 * ceil32(return_data.size)) + 320] = 0
    mem[(4 * ceil32(return_data.size)) + 352] = 0
    mem[(4 * ceil32(return_data.size)) + 384] = 0
    mem[(4 * ceil32(return_data.size)) + 416] = 0
    mem[(4 * ceil32(return_data.size)) + 448] = 0
    mem[(4 * ceil32(return_data.size)) + 480] = 0
    mem[(4 * ceil32(return_data.size)) + 512] = 0
    mem[(4 * ceil32(return_data.size)) + 544] = 0
    staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + 576 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    if not bool((6 * ceil32(return_data.size)) + 928 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[32]
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[126 len 2]
    mem[(6 * ceil32(return_data.size)) + 672] = ext_call.return_data[96]
    mem[(6 * ceil32(return_data.size)) + 704] = ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    mem[(6 * ceil32(return_data.size)) + 736] = ext_call.return_data[160]
    mem[(6 * ceil32(return_data.size)) + 768] = ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    mem[(6 * ceil32(return_data.size)) + 800] = ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    mem[(6 * ceil32(return_data.size)) + 832] = ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    mem[(6 * ceil32(return_data.size)) + 864] = ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[344 len 8]
    mem[(6 * ceil32(return_data.size)) + 896] = ext_call.return_data[320]
    mem[(6 * ceil32(return_data.size)) + 932] = arg1
    staticcall sub_93066351Address.isStaked(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(6 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(7 * ceil32(return_data.size)) + 932] = arg1
        staticcall sub_809deb63Address.0x6352211e with:
                gas gas_remaining wei
               args arg1
        mem[(7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if 0 == ext_call.return_data[126 len 2]:
            mem[(8 * ceil32(return_data.size)) + 932] = arg1
            staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                mem[(10 * ceil32(return_data.size)) + 932] = arg1
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                mem[(10 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not ext_call.return_data[32]:
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    if not bool((13 * ceil32(return_data.size)) + 1056 <= test266151307()):
                        revert with 0, 65
                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                    if ext_call.return_data[0] < ext_call.return_data[32]:
                        revert with 0, 17
                    if uint8(ext_call.return_data[160]) and ext_call.return_data[0] - ext_call.return_data[32] > -1 / uint8(ext_call.return_data[160]):
                        revert with 0, 17
                    return ((ext_call.return_data[0] * uint8(ext_call.return_data[160])) - (ext_call.return_data[32] * uint8(ext_call.return_data[160])))
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(11 * ceil32(return_data.size)) + 928 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if not bool((12 * ceil32(return_data.size)) + 1056 <= test266151307()):
                    revert with 0, 65
                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                mem[(12 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                mem[(12 * ceil32(return_data.size)) + 960] = ext_call.return_data[32]
                mem[(12 * ceil32(return_data.size)) + 992] = ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                mem[(12 * ceil32(return_data.size)) + 1024] = ext_call.return_data[96]
                if block.timestamp < ext_call.return_data[64]:
                    revert with 0, 17
                if block.timestamp - ext_call.return_data[64] and sub_d23270a3 > -1 / block.timestamp - ext_call.return_data[64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                if ext_call.return_data[126 len 2] and sub_b175c7c7 > -1 / ext_call.return_data[126 len 2]:
                    revert with 0, 17
                mem[(12 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 1056
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = idx
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _779 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_779]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _808 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _815 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_815] = mem[_808]
                    mem[_815 + 32] = mem[_808 + 32]
                    mem[_815 + 64] = mem[_808 + 64]
                    if 24 * 3600 > !mem[_815 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_815 + 64] + (24 * 3600):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s < sub_c0d8478d:
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                        revert with 0, 17
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 992]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 992] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 992]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 992]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 992]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600)
                else:
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                        revert with 0, 17
                    if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                        revert with 0, 17
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if s < sub_c0d8478d - 1:
                        revert with 0, 17
                    t = 1
                    u = sub_1eca8abe
                    v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                    while t <= s + -sub_c0d8478d + 1:
                        if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = 95 * u / 100
                        v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                        continue 
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 992]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 992] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + v > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 992]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 992]) - (v * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 992]) - (v * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600)
            else:
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(10 * ceil32(return_data.size)) + 928 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if not bool((11 * ceil32(return_data.size)) + 1056 <= test266151307()):
                    revert with 0, 65
                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                mem[(11 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                mem[(11 * ceil32(return_data.size)) + 960] = ext_call.return_data[32]
                mem[(11 * ceil32(return_data.size)) + 992] = ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                mem[(11 * ceil32(return_data.size)) + 1024] = ext_call.return_data[96]
                if not ext_call.return_data[108 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not ext_call.return_data[32]:
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    if not bool((13 * ceil32(return_data.size)) + 1184 <= test266151307()):
                        revert with 0, 65
                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                    if ext_call.return_data[0] < ext_call.return_data[32]:
                        revert with 0, 17
                    if uint8(ext_call.return_data[160]) and ext_call.return_data[0] - ext_call.return_data[32] > -1 / uint8(ext_call.return_data[160]):
                        revert with 0, 17
                    return ((ext_call.return_data[0] * uint8(ext_call.return_data[160])) - (ext_call.return_data[32] * uint8(ext_call.return_data[160])))
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(11 * ceil32(return_data.size)) + 1056 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if not bool((12 * ceil32(return_data.size)) + 1184 <= test266151307()):
                    revert with 0, 65
                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                mem[(12 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                mem[(12 * ceil32(return_data.size)) + 1088] = ext_call.return_data[32]
                mem[(12 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                mem[(12 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                if block.timestamp < ext_call.return_data[64]:
                    revert with 0, 17
                if block.timestamp - ext_call.return_data[64] and sub_d23270a3 > -1 / block.timestamp - ext_call.return_data[64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                if ext_call.return_data[126 len 2] and sub_b175c7c7 > -1 / ext_call.return_data[126 len 2]:
                    revert with 0, 17
                mem[(12 * ceil32(return_data.size)) + 1188] = address(ext_call.return_data[96])
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[96])
                mem[(12 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 1184
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(ext_call.return_data[96])
                    mem[mem[64] + 36] = idx
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[96]), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _780 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_780]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _816 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_816] = mem[_809]
                    mem[_816 + 32] = mem[_809 + 32]
                    mem[_816 + 64] = mem[_809 + 64]
                    if 24 * 3600 > !mem[_816 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_816 + 64] + (24 * 3600):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s < sub_c0d8478d:
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                        revert with 0, 17
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
                else:
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                        revert with 0, 17
                    if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                        revert with 0, 17
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if s < sub_c0d8478d - 1:
                        revert with 0, 17
                    t = 1
                    u = sub_1eca8abe
                    v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                    while t <= s + -sub_c0d8478d + 1:
                        if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = 95 * u / 100
                        v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                        continue 
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + v > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (v * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (v * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
        else:
            mem[(8 * ceil32(return_data.size)) + 932] = address(ext_call.return_data[0])
            staticcall sub_c0c675edAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 928
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = idx
                staticcall sub_c0c675edAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _778 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_778]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _807 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _814 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_814] = mem[_807]
                mem[_814 + 32] = mem[_807 + 32]
                mem[_814 + 64] = mem[_807 + 64]
                if 24 * 3600 > !mem[_814 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_814 + 64] + (24 * 3600):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if s and sub_4b33b36e > -1 / s:
                revert with 0, 17
            if s * sub_4b33b36e > !sub_fc7c54de:
                revert with 0, 17
            if block.timestamp < mem[(6 * ceil32(return_data.size)) + 704]:
                revert with 0, 17
            if not (s * sub_4b33b36e) + sub_fc7c54de:
                revert with 0, 18
            if uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de) > mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                mem[(6 * ceil32(return_data.size)) + 672] = 0
                mem[mem[64] + 4] = arg1
                staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _856 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_856] == bool(mem[_856])
                if not mem[_856]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _896 = mem[_880]
                    require mem[_880] == mem[_880 + 12 len 20]
                    if not mem[_880 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _938 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _951 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _968 = mem[_951]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1011 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1034 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1011] == mem[_1011 + 30 len 2]
                        mem[_1034] = mem[_1011]
                        mem[_1034 + 32] = mem[_1011 + 32]
                        mem[_1034 + 64] = mem[_1011 + 64]
                        require mem[_1011 + 96] == mem[_1011 + 108 len 20]
                        mem[_1034 + 96] = mem[_1011 + 96]
                        if _968 < mem[_1034 + 32]:
                            revert with 0, 17
                        if uint8(_938) and _968 - mem[_1034 + 32] > -1 / uint8(_938):
                            revert with 0, 17
                        mem[mem[64]] = (_968 * uint8(_938)) - (mem[_1034 + 32] * uint8(_938))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _952 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _969 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_952] == mem[_952 + 30 len 2]
                        mem[_969] = mem[_952]
                        mem[_969 + 32] = mem[_952 + 32]
                        mem[_969 + 64] = mem[_952 + 64]
                        require mem[_952 + 96] == mem[_952 + 108 len 20]
                        mem[_969 + 96] = mem[_952 + 96]
                        _1089 = mem[_969 + 64]
                        if block.timestamp < mem[_969 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_969 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_969 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_969 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        if 0 and sub_b175c7c7 > -1 / 0:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_896)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_896)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1176 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1186 = mem[_1176]
                        idx = 0
                        s = 0
                        while idx < _1186:
                            mem[mem[64] + 4] = address(_896)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_896), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1402 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1402]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1450 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1458 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1458] = mem[_1450]
                            mem[_1458 + 32] = mem[_1450 + 32]
                            mem[_1458 + 64] = mem[_1450 + 64]
                            if 24 * 3600 > !mem[_1458 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1458 + 64] + (24 * 3600):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s < sub_c0d8478d:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                                revert with 0, 17
                            if 0 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_969 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_969 + 64] and mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe > -1 / block.timestamp - mem[_969 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1089 * sub_d23270a3) / 24 * 3600 > !((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_969 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1089 * sub_d23270a3) / 24 * 3600) + ((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_969 + 64]) / 24 * 3600)
                        else:
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                                revert with 0, 17
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if s < sub_c0d8478d - 1:
                                revert with 0, 17
                            t = 1
                            u = sub_1eca8abe
                            v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                    revert with 0, 17
                                if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                u = 95 * u / 100
                                v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                                continue 
                            if 0 > !v:
                                revert with 0, 17
                            if block.timestamp < mem[_969 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_969 + 64] and v > -1 / block.timestamp - mem[_969 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1089 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_969 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1089 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_969 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _881 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _897 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_881] == mem[_881 + 30 len 2]
                    mem[_897] = mem[_881]
                    mem[_897 + 32] = mem[_881 + 32]
                    mem[_897 + 64] = mem[_881 + 64]
                    require mem[_881 + 96] == mem[_881 + 108 len 20]
                    mem[_897 + 96] = mem[_881 + 96]
                    _943 = mem[_897 + 96]
                    if not mem[_897 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _991 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1012 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1038 = mem[_1012]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1068 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1090 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1068] == mem[_1068 + 30 len 2]
                        mem[_1090] = mem[_1068]
                        mem[_1090 + 32] = mem[_1068 + 32]
                        mem[_1090 + 64] = mem[_1068 + 64]
                        require mem[_1068 + 96] == mem[_1068 + 108 len 20]
                        mem[_1090 + 96] = mem[_1068 + 96]
                        if _1038 < mem[_1090 + 32]:
                            revert with 0, 17
                        if uint8(_991) and _1038 - mem[_1090 + 32] > -1 / uint8(_991):
                            revert with 0, 17
                        mem[mem[64]] = (_1038 * uint8(_991)) - (mem[_1090 + 32] * uint8(_991))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1013 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1039 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1013] == mem[_1013 + 30 len 2]
                        mem[_1039] = mem[_1013]
                        mem[_1039 + 32] = mem[_1013 + 32]
                        mem[_1039 + 64] = mem[_1013 + 64]
                        require mem[_1013 + 96] == mem[_1013 + 108 len 20]
                        mem[_1039 + 96] = mem[_1013 + 96]
                        _1131 = mem[_1039 + 64]
                        if block.timestamp < mem[_1039 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1039 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1039 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1039 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        if 0 and sub_b175c7c7 > -1 / 0:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_943)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_943)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1195 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1203 = mem[_1195]
                        idx = 0
                        s = 0
                        while idx < _1203:
                            mem[mem[64] + 4] = address(_943)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_943), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1403 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1403]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1451 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1459 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1459] = mem[_1451]
                            mem[_1459 + 32] = mem[_1451 + 32]
                            mem[_1459 + 64] = mem[_1451 + 64]
                            if 24 * 3600 > !mem[_1459 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1459 + 64] + (24 * 3600):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s < sub_c0d8478d:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                                revert with 0, 17
                            if 0 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1039 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1039 + 64] and mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe > -1 / block.timestamp - mem[_1039 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1131 * sub_d23270a3) / 24 * 3600 > !((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1039 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1131 * sub_d23270a3) / 24 * 3600) + ((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1039 + 64]) / 24 * 3600)
                        else:
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                                revert with 0, 17
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if s < sub_c0d8478d - 1:
                                revert with 0, 17
                            t = 1
                            u = sub_1eca8abe
                            v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                    revert with 0, 17
                                if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                u = 95 * u / 100
                                v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                                continue 
                            if 0 > !v:
                                revert with 0, 17
                            if block.timestamp < mem[_1039 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1039 + 64] and v > -1 / block.timestamp - mem[_1039 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1131 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_1039 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1131 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_1039 + 64]) / 24 * 3600)
            else:
                if mem[(6 * ceil32(return_data.size)) + 702 len 2] < uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de):
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + 672] = uint16(mem[(6 * ceil32(return_data.size)) + 702 len 2] - uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de))
                mem[mem[64] + 4] = arg1
                staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _864 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_864] == bool(mem[_864])
                if not mem[_864]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _908 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _914 = mem[_908]
                    require mem[_908] == mem[_908 + 12 len 20]
                    if not mem[_908 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _962 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _986 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1018 = mem[_986]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1054 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1070 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1054] == mem[_1054 + 30 len 2]
                        mem[_1070] = mem[_1054]
                        mem[_1070 + 32] = mem[_1054 + 32]
                        mem[_1070 + 64] = mem[_1054 + 64]
                        require mem[_1054 + 96] == mem[_1054 + 108 len 20]
                        mem[_1070 + 96] = mem[_1054 + 96]
                        if _1018 < mem[_1070 + 32]:
                            revert with 0, 17
                        if uint8(_962) and _1018 - mem[_1070 + 32] > -1 / uint8(_962):
                            revert with 0, 17
                        mem[mem[64]] = (_1018 * uint8(_962)) - (mem[_1070 + 32] * uint8(_962))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1019 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_987] == mem[_987 + 30 len 2]
                        mem[_1019] = mem[_987]
                        mem[_1019 + 32] = mem[_987 + 32]
                        mem[_1019 + 64] = mem[_987 + 64]
                        require mem[_987 + 96] == mem[_987 + 108 len 20]
                        mem[_1019 + 96] = mem[_987 + 96]
                        _1113 = mem[_1019 + 64]
                        if block.timestamp < mem[_1019 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1019 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1019 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1019 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        _1158 = mem[(6 * ceil32(return_data.size)) + 672]
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_914)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_914)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1198 = mem[_1190]
                        idx = 0
                        s = 0
                        while idx < _1198:
                            mem[mem[64] + 4] = address(_914)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_914), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1400 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1400]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1448 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1456 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1456] = mem[_1448]
                            mem[_1456 + 32] = mem[_1448 + 32]
                            mem[_1456 + 64] = mem[_1448 + 64]
                            if 24 * 3600 > !mem[_1456 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1456 + 64] + (24 * 3600):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s < sub_c0d8478d:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                                revert with 0, 17
                            if uint16(_1158) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1019 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1019 + 64] and (uint16(_1158) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[_1019 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1113 * sub_d23270a3) / 24 * 3600 > !((uint16(_1158) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1158) * sub_b175c7c7 * mem[_1019 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1019 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1113 * sub_d23270a3) / 24 * 3600) + ((uint16(_1158) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1158) * sub_b175c7c7 * mem[_1019 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1019 + 64]) / 24 * 3600)
                        else:
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                                revert with 0, 17
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if s < sub_c0d8478d - 1:
                                revert with 0, 17
                            t = 1
                            u = sub_1eca8abe
                            v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                    revert with 0, 17
                                if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                u = 95 * u / 100
                                v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                                continue 
                            if uint16(_1158) * sub_b175c7c7 > !v:
                                revert with 0, 17
                            if block.timestamp < mem[_1019 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1019 + 64] and (uint16(_1158) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1019 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1113 * sub_d23270a3) / 24 * 3600 > !((uint16(_1158) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1158) * sub_b175c7c7 * mem[_1019 + 64]) - (v * mem[_1019 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1113 * sub_d23270a3) / 24 * 3600) + ((uint16(_1158) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1158) * sub_b175c7c7 * mem[_1019 + 64]) - (v * mem[_1019 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _909 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _915 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_909] == mem[_909 + 30 len 2]
                    mem[_915] = mem[_909]
                    mem[_915 + 32] = mem[_909 + 32]
                    mem[_915 + 64] = mem[_909 + 64]
                    require mem[_909 + 96] == mem[_909 + 108 len 20]
                    mem[_915 + 96] = mem[_909 + 96]
                    _967 = mem[_915 + 96]
                    if not mem[_915 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _1029 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1055 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1074 = mem[_1055]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1106 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1114 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1106] == mem[_1106 + 30 len 2]
                        mem[_1114] = mem[_1106]
                        mem[_1114 + 32] = mem[_1106 + 32]
                        mem[_1114 + 64] = mem[_1106 + 64]
                        require mem[_1106 + 96] == mem[_1106 + 108 len 20]
                        mem[_1114 + 96] = mem[_1106 + 96]
                        if _1074 < mem[_1114 + 32]:
                            revert with 0, 17
                        if uint8(_1029) and _1074 - mem[_1114 + 32] > -1 / uint8(_1029):
                            revert with 0, 17
                        mem[mem[64]] = (_1074 * uint8(_1029)) - (mem[_1114 + 32] * uint8(_1029))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1056 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1075 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1056] == mem[_1056 + 30 len 2]
                        mem[_1075] = mem[_1056]
                        mem[_1075 + 32] = mem[_1056 + 32]
                        mem[_1075 + 64] = mem[_1056 + 64]
                        require mem[_1056 + 96] == mem[_1056 + 108 len 20]
                        mem[_1075 + 96] = mem[_1056 + 96]
                        _1142 = mem[_1075 + 64]
                        if block.timestamp < mem[_1075 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1075 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1075 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1075 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        _1175 = mem[(6 * ceil32(return_data.size)) + 672]
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_967)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_967)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1206 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1216 = mem[_1206]
                        idx = 0
                        s = 0
                        while idx < _1216:
                            mem[mem[64] + 4] = address(_967)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_967), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1401 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1401]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1457 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1457] = mem[_1449]
                            mem[_1457 + 32] = mem[_1449 + 32]
                            mem[_1457 + 64] = mem[_1449 + 64]
                            if 24 * 3600 > !mem[_1457 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1457 + 64] + (24 * 3600):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s < sub_c0d8478d:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                                revert with 0, 17
                            if uint16(_1175) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1075 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1075 + 64] and (uint16(_1175) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[_1075 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1142 * sub_d23270a3) / 24 * 3600 > !((uint16(_1175) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1175) * sub_b175c7c7 * mem[_1075 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1075 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1142 * sub_d23270a3) / 24 * 3600) + ((uint16(_1175) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1175) * sub_b175c7c7 * mem[_1075 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1075 + 64]) / 24 * 3600)
                        else:
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                                revert with 0, 17
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if s < sub_c0d8478d - 1:
                                revert with 0, 17
                            t = 1
                            u = sub_1eca8abe
                            v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                    revert with 0, 17
                                if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                u = 95 * u / 100
                                v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                                continue 
                            if uint16(_1175) * sub_b175c7c7 > !v:
                                revert with 0, 17
                            if block.timestamp < mem[_1075 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1075 + 64] and (uint16(_1175) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1075 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1142 * sub_d23270a3) / 24 * 3600 > !((uint16(_1175) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1175) * sub_b175c7c7 * mem[_1075 + 64]) - (v * mem[_1075 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1142 * sub_d23270a3) / 24 * 3600) + ((uint16(_1175) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1175) * sub_b175c7c7 * mem[_1075 + 64]) - (v * mem[_1075 + 64]) / 24 * 3600)
    else:
        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(7 * ceil32(return_data.size)) + 928 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((8 * ceil32(return_data.size)) + 1056 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
        mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 960] = ext_call.return_data[32]
        mem[(8 * ceil32(return_data.size)) + 992] = ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[108 len 20]
        mem[(8 * ceil32(return_data.size)) + 1024] = ext_call.return_data[96]
        if not ext_call.return_data[108 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if 0 == ext_call.return_data[126 len 2]:
            mem[(8 * ceil32(return_data.size)) + 1060] = arg1
            staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                mem[(10 * ceil32(return_data.size)) + 1060] = arg1
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                mem[(10 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not ext_call.return_data[32]:
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    if not bool((13 * ceil32(return_data.size)) + 1184 <= test266151307()):
                        revert with 0, 65
                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                    if ext_call.return_data[0] < ext_call.return_data[32]:
                        revert with 0, 17
                    if uint8(ext_call.return_data[160]) and ext_call.return_data[0] - ext_call.return_data[32] > -1 / uint8(ext_call.return_data[160]):
                        revert with 0, 17
                    return ((ext_call.return_data[0] * uint8(ext_call.return_data[160])) - (ext_call.return_data[32] * uint8(ext_call.return_data[160])))
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(11 * ceil32(return_data.size)) + 1056 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if not bool((12 * ceil32(return_data.size)) + 1184 <= test266151307()):
                    revert with 0, 65
                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                mem[(12 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                mem[(12 * ceil32(return_data.size)) + 1088] = ext_call.return_data[32]
                mem[(12 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                mem[(12 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                if block.timestamp < ext_call.return_data[64]:
                    revert with 0, 17
                if block.timestamp - ext_call.return_data[64] and sub_d23270a3 > -1 / block.timestamp - ext_call.return_data[64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                if ext_call.return_data[126 len 2] and sub_b175c7c7 > -1 / ext_call.return_data[126 len 2]:
                    revert with 0, 17
                mem[(12 * ceil32(return_data.size)) + 1188] = address(ext_call.return_data[0])
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 1184
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = idx
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _782 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_782]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _812 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _818 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_818] = mem[_812]
                    mem[_818 + 32] = mem[_812 + 32]
                    mem[_818 + 64] = mem[_812 + 64]
                    if 24 * 3600 > !mem[_818 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_818 + 64] + (24 * 3600):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s < sub_c0d8478d:
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                        revert with 0, 17
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
                else:
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                        revert with 0, 17
                    if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                        revert with 0, 17
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if s < sub_c0d8478d - 1:
                        revert with 0, 17
                    t = 1
                    u = sub_1eca8abe
                    v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                    while t <= s + -sub_c0d8478d + 1:
                        if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = 95 * u / 100
                        v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                        continue 
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + v > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (v * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (v * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
            else:
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(10 * ceil32(return_data.size)) + 1056 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if not bool((11 * ceil32(return_data.size)) + 1184 <= test266151307()):
                    revert with 0, 65
                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                mem[(11 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                mem[(11 * ceil32(return_data.size)) + 1088] = ext_call.return_data[32]
                mem[(11 * ceil32(return_data.size)) + 1120] = ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                mem[(11 * ceil32(return_data.size)) + 1152] = ext_call.return_data[96]
                if not ext_call.return_data[108 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not ext_call.return_data[32]:
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    if not bool((13 * ceil32(return_data.size)) + 1312 <= test266151307()):
                        revert with 0, 65
                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                    if ext_call.return_data[0] < ext_call.return_data[32]:
                        revert with 0, 17
                    if uint8(ext_call.return_data[160]) and ext_call.return_data[0] - ext_call.return_data[32] > -1 / uint8(ext_call.return_data[160]):
                        revert with 0, 17
                    return ((ext_call.return_data[0] * uint8(ext_call.return_data[160])) - (ext_call.return_data[32] * uint8(ext_call.return_data[160])))
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(11 * ceil32(return_data.size)) + 1184 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if not bool((12 * ceil32(return_data.size)) + 1312 <= test266151307()):
                    revert with 0, 65
                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                mem[(12 * ceil32(return_data.size)) + 1184] = ext_call.return_data[0]
                mem[(12 * ceil32(return_data.size)) + 1216] = ext_call.return_data[32]
                mem[(12 * ceil32(return_data.size)) + 1248] = ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[108 len 20]
                mem[(12 * ceil32(return_data.size)) + 1280] = ext_call.return_data[96]
                if block.timestamp < ext_call.return_data[64]:
                    revert with 0, 17
                if block.timestamp - ext_call.return_data[64] and sub_d23270a3 > -1 / block.timestamp - ext_call.return_data[64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                if ext_call.return_data[126 len 2] and sub_b175c7c7 > -1 / ext_call.return_data[126 len 2]:
                    revert with 0, 17
                mem[(12 * ceil32(return_data.size)) + 1316] = address(ext_call.return_data[96])
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[96])
                mem[(12 * ceil32(return_data.size)) + 1312] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 1312
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(ext_call.return_data[96])
                    mem[mem[64] + 36] = idx
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[96]), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _783 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_783]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _813 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _819 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_819] = mem[_813]
                    mem[_819 + 32] = mem[_813 + 32]
                    mem[_819 + 64] = mem[_813 + 64]
                    if 24 * 3600 > !mem[_819 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_819 + 64] + (24 * 3600):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s < sub_c0d8478d:
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                        revert with 0, 17
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1248]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1248]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1248]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600)
                else:
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                        revert with 0, 17
                    if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                        revert with 0, 17
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if s < sub_c0d8478d - 1:
                        revert with 0, 17
                    t = 1
                    u = sub_1eca8abe
                    v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                    while t <= s + -sub_c0d8478d + 1:
                        if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = 95 * u / 100
                        v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                        continue 
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1248]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + v > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1248]) - (v * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1248]) - (v * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600)
        else:
            mem[(8 * ceil32(return_data.size)) + 1060] = ext_call.return_data[108 len 20]
            staticcall sub_c0c675edAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args ext_call.return_data[108 len 20]
            mem[(8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 1056
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = address(ext_call.return_data[96])
                mem[mem[64] + 36] = idx
                staticcall sub_c0c675edAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[96]), idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _781 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_781]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _811 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _817 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_817] = mem[_811]
                mem[_817 + 32] = mem[_811 + 32]
                mem[_817 + 64] = mem[_811 + 64]
                if 24 * 3600 > !mem[_817 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_817 + 64] + (24 * 3600):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if s and sub_4b33b36e > -1 / s:
                revert with 0, 17
            if s * sub_4b33b36e > !sub_fc7c54de:
                revert with 0, 17
            if block.timestamp < mem[(6 * ceil32(return_data.size)) + 704]:
                revert with 0, 17
            if not (s * sub_4b33b36e) + sub_fc7c54de:
                revert with 0, 18
            if uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de) > mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                mem[(6 * ceil32(return_data.size)) + 672] = 0
                mem[mem[64] + 4] = arg1
                staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _857 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_857] == bool(mem[_857])
                if not mem[_857]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _884 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _904 = mem[_884]
                    require mem[_884] == mem[_884 + 12 len 20]
                    if not mem[_884 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _944 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _954 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _980 = mem[_954]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1015 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1048 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1015] == mem[_1015 + 30 len 2]
                        mem[_1048] = mem[_1015]
                        mem[_1048 + 32] = mem[_1015 + 32]
                        mem[_1048 + 64] = mem[_1015 + 64]
                        require mem[_1015 + 96] == mem[_1015 + 108 len 20]
                        mem[_1048 + 96] = mem[_1015 + 96]
                        if _980 < mem[_1048 + 32]:
                            revert with 0, 17
                        if uint8(_944) and _980 - mem[_1048 + 32] > -1 / uint8(_944):
                            revert with 0, 17
                        mem[mem[64]] = (_980 * uint8(_944)) - (mem[_1048 + 32] * uint8(_944))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _955 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _981 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_955] == mem[_955 + 30 len 2]
                        mem[_981] = mem[_955]
                        mem[_981 + 32] = mem[_955 + 32]
                        mem[_981 + 64] = mem[_955 + 64]
                        require mem[_955 + 96] == mem[_955 + 108 len 20]
                        mem[_981 + 96] = mem[_955 + 96]
                        _1101 = mem[_981 + 64]
                        if block.timestamp < mem[_981 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_981 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_981 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_981 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        if 0 and sub_b175c7c7 > -1 / 0:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_904)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_904)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1189 = mem[_1179]
                        idx = 0
                        s = 0
                        while idx < _1189:
                            mem[mem[64] + 4] = address(_904)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_904), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1406]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1454 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1462 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1462] = mem[_1454]
                            mem[_1462 + 32] = mem[_1454 + 32]
                            mem[_1462 + 64] = mem[_1454 + 64]
                            if 24 * 3600 > !mem[_1462 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1462 + 64] + (24 * 3600):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s < sub_c0d8478d:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                                revert with 0, 17
                            if 0 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_981 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_981 + 64] and mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe > -1 / block.timestamp - mem[_981 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1101 * sub_d23270a3) / 24 * 3600 > !((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_981 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1101 * sub_d23270a3) / 24 * 3600) + ((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_981 + 64]) / 24 * 3600)
                        else:
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                                revert with 0, 17
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if s < sub_c0d8478d - 1:
                                revert with 0, 17
                            t = 1
                            u = sub_1eca8abe
                            v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                    revert with 0, 17
                                if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                u = 95 * u / 100
                                v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                                continue 
                            if 0 > !v:
                                revert with 0, 17
                            if block.timestamp < mem[_981 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_981 + 64] and v > -1 / block.timestamp - mem[_981 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1101 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_981 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1101 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_981 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _885 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _905 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_885] == mem[_885 + 30 len 2]
                    mem[_905] = mem[_885]
                    mem[_905 + 32] = mem[_885 + 32]
                    mem[_905 + 64] = mem[_885 + 64]
                    require mem[_885 + 96] == mem[_885 + 108 len 20]
                    mem[_905 + 96] = mem[_885 + 96]
                    _949 = mem[_905 + 96]
                    if not mem[_905 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _1003 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1016 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1052 = mem[_1016]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1069 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1102 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1069] == mem[_1069 + 30 len 2]
                        mem[_1102] = mem[_1069]
                        mem[_1102 + 32] = mem[_1069 + 32]
                        mem[_1102 + 64] = mem[_1069 + 64]
                        require mem[_1069 + 96] == mem[_1069 + 108 len 20]
                        mem[_1102 + 96] = mem[_1069 + 96]
                        if _1052 < mem[_1102 + 32]:
                            revert with 0, 17
                        if uint8(_1003) and _1052 - mem[_1102 + 32] > -1 / uint8(_1003):
                            revert with 0, 17
                        mem[mem[64]] = (_1052 * uint8(_1003)) - (mem[_1102 + 32] * uint8(_1003))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1017 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1053 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1017] == mem[_1017 + 30 len 2]
                        mem[_1053] = mem[_1017]
                        mem[_1053 + 32] = mem[_1017 + 32]
                        mem[_1053 + 64] = mem[_1017 + 64]
                        require mem[_1017 + 96] == mem[_1017 + 108 len 20]
                        mem[_1053 + 96] = mem[_1017 + 96]
                        _1137 = mem[_1053 + 64]
                        if block.timestamp < mem[_1053 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1053 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1053 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1053 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        if 0 and sub_b175c7c7 > -1 / 0:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_949)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_949)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1197 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1205 = mem[_1197]
                        idx = 0
                        s = 0
                        while idx < _1205:
                            mem[mem[64] + 4] = address(_949)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_949), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1407]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1463 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1463] = mem[_1455]
                            mem[_1463 + 32] = mem[_1455 + 32]
                            mem[_1463 + 64] = mem[_1455 + 64]
                            if 24 * 3600 > !mem[_1463 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1463 + 64] + (24 * 3600):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s < sub_c0d8478d:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                                revert with 0, 17
                            if 0 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1053 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1053 + 64] and mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe > -1 / block.timestamp - mem[_1053 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1137 * sub_d23270a3) / 24 * 3600 > !((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1053 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1137 * sub_d23270a3) / 24 * 3600) + ((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1053 + 64]) / 24 * 3600)
                        else:
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                                revert with 0, 17
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if s < sub_c0d8478d - 1:
                                revert with 0, 17
                            t = 1
                            u = sub_1eca8abe
                            v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                    revert with 0, 17
                                if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                u = 95 * u / 100
                                v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                                continue 
                            if 0 > !v:
                                revert with 0, 17
                            if block.timestamp < mem[_1053 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1053 + 64] and v > -1 / block.timestamp - mem[_1053 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1137 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_1053 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1137 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_1053 + 64]) / 24 * 3600)
            else:
                if mem[(6 * ceil32(return_data.size)) + 702 len 2] < uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de):
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + 672] = uint16(mem[(6 * ceil32(return_data.size)) + 702 len 2] - uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de))
                mem[mem[64] + 4] = arg1
                staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _865 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_865] == bool(mem[_865])
                if not mem[_865]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _911 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _916 = mem[_911]
                    require mem[_911] == mem[_911 + 12 len 20]
                    if not mem[_911 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _974 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _998 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1022 = mem[_998]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1061 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1076 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1061] == mem[_1061 + 30 len 2]
                        mem[_1076] = mem[_1061]
                        mem[_1076 + 32] = mem[_1061 + 32]
                        mem[_1076 + 64] = mem[_1061 + 64]
                        require mem[_1061 + 96] == mem[_1061 + 108 len 20]
                        mem[_1076 + 96] = mem[_1061 + 96]
                        if _1022 < mem[_1076 + 32]:
                            revert with 0, 17
                        if uint8(_974) and _1022 - mem[_1076 + 32] > -1 / uint8(_974):
                            revert with 0, 17
                        mem[mem[64]] = (_1022 * uint8(_974)) - (mem[_1076 + 32] * uint8(_974))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1023 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_999] == mem[_999 + 30 len 2]
                        mem[_1023] = mem[_999]
                        mem[_1023 + 32] = mem[_999 + 32]
                        mem[_1023 + 64] = mem[_999 + 64]
                        require mem[_999 + 96] == mem[_999 + 108 len 20]
                        mem[_1023 + 96] = mem[_999 + 96]
                        _1121 = mem[_1023 + 64]
                        if block.timestamp < mem[_1023 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1023 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1023 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1023 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        _1159 = mem[(6 * ceil32(return_data.size)) + 672]
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_916)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1192 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1200 = mem[_1192]
                        idx = 0
                        s = 0
                        while idx < _1200:
                            mem[mem[64] + 4] = address(_916)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_916), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1404 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1404]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1460 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1460] = mem[_1452]
                            mem[_1460 + 32] = mem[_1452 + 32]
                            mem[_1460 + 64] = mem[_1452 + 64]
                            if 24 * 3600 > !mem[_1460 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1460 + 64] + (24 * 3600):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s < sub_c0d8478d:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                                revert with 0, 17
                            if uint16(_1159) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1023 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1023 + 64] and (uint16(_1159) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[_1023 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1121 * sub_d23270a3) / 24 * 3600 > !((uint16(_1159) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1159) * sub_b175c7c7 * mem[_1023 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1023 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1121 * sub_d23270a3) / 24 * 3600) + ((uint16(_1159) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1159) * sub_b175c7c7 * mem[_1023 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1023 + 64]) / 24 * 3600)
                        else:
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                                revert with 0, 17
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if s < sub_c0d8478d - 1:
                                revert with 0, 17
                            t = 1
                            u = sub_1eca8abe
                            v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                    revert with 0, 17
                                if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                u = 95 * u / 100
                                v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                                continue 
                            if uint16(_1159) * sub_b175c7c7 > !v:
                                revert with 0, 17
                            if block.timestamp < mem[_1023 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1023 + 64] and (uint16(_1159) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1023 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1121 * sub_d23270a3) / 24 * 3600 > !((uint16(_1159) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1159) * sub_b175c7c7 * mem[_1023 + 64]) - (v * mem[_1023 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1121 * sub_d23270a3) / 24 * 3600) + ((uint16(_1159) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1159) * sub_b175c7c7 * mem[_1023 + 64]) - (v * mem[_1023 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _912 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _917 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_912] == mem[_912 + 30 len 2]
                    mem[_917] = mem[_912]
                    mem[_917 + 32] = mem[_912 + 32]
                    mem[_917 + 64] = mem[_912 + 64]
                    require mem[_912 + 96] == mem[_912 + 108 len 20]
                    mem[_917 + 96] = mem[_912 + 96]
                    _979 = mem[_917 + 96]
                    if not mem[_917 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _1043 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1062 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1080 = mem[_1062]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1108 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1122 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1108] == mem[_1108 + 30 len 2]
                        mem[_1122] = mem[_1108]
                        mem[_1122 + 32] = mem[_1108 + 32]
                        mem[_1122 + 64] = mem[_1108 + 64]
                        require mem[_1108 + 96] == mem[_1108 + 108 len 20]
                        mem[_1122 + 96] = mem[_1108 + 96]
                        if _1080 < mem[_1122 + 32]:
                            revert with 0, 17
                        if uint8(_1043) and _1080 - mem[_1122 + 32] > -1 / uint8(_1043):
                            revert with 0, 17
                        mem[mem[64]] = (_1080 * uint8(_1043)) - (mem[_1122 + 32] * uint8(_1043))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1063 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1081 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1063] == mem[_1063 + 30 len 2]
                        mem[_1081] = mem[_1063]
                        mem[_1081 + 32] = mem[_1063 + 32]
                        mem[_1081 + 64] = mem[_1063 + 64]
                        require mem[_1063 + 96] == mem[_1063 + 108 len 20]
                        mem[_1081 + 96] = mem[_1063 + 96]
                        _1147 = mem[_1081 + 64]
                        if block.timestamp < mem[_1081 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1081 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1081 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1081 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        _1178 = mem[(6 * ceil32(return_data.size)) + 672]
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_979)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_979)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1209 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1218 = mem[_1209]
                        idx = 0
                        s = 0
                        while idx < _1218:
                            mem[mem[64] + 4] = address(_979)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_979), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1405]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1461 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1461] = mem[_1453]
                            mem[_1461 + 32] = mem[_1453 + 32]
                            mem[_1461 + 64] = mem[_1453 + 64]
                            if 24 * 3600 > !mem[_1461 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1461 + 64] + (24 * 3600):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                continue 
                            if s == -1:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            continue 
                        if s < sub_c0d8478d:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and s > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] * s and sub_1eca8abe > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2] * s:
                                revert with 0, 17
                            if uint16(_1178) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1081 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1081 + 64] and (uint16(_1178) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[_1081 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1147 * sub_d23270a3) / 24 * 3600 > !((uint16(_1178) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1178) * sub_b175c7c7 * mem[_1081 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1081 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1147 * sub_d23270a3) / 24 * 3600) + ((uint16(_1178) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1178) * sub_b175c7c7 * mem[_1081 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1081 + 64]) / 24 * 3600)
                        else:
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_c0d8478d - 1 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]) and sub_1eca8abe > -1 / -mem[(6 * ceil32(return_data.size)) + 702 len 2] + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                                revert with 0, 17
                            if sub_c0d8478d < 1:
                                revert with 0, 17
                            if s < sub_c0d8478d - 1:
                                revert with 0, 17
                            t = 1
                            u = sub_1eca8abe
                            v = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if u > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
                                    revert with 0, 17
                                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and 95 * u / 100 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                    revert with 0, 17
                                if v > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100):
                                    revert with 0, 17
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                u = 95 * u / 100
                                v = v + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * 95 * u / 100)
                                continue 
                            if uint16(_1178) * sub_b175c7c7 > !v:
                                revert with 0, 17
                            if block.timestamp < mem[_1081 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1081 + 64] and (uint16(_1178) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1081 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1147 * sub_d23270a3) / 24 * 3600 > !((uint16(_1178) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1178) * sub_b175c7c7 * mem[_1081 + 64]) - (v * mem[_1081 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1147 * sub_d23270a3) / 24 * 3600) + ((uint16(_1178) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1178) * sub_b175c7c7 * mem[_1081 + 64]) - (v * mem[_1081 + 64]) / 24 * 3600)
    return memory
      from mem[64]
       len 32
}

function sub_cac404a4(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint16(arg2)
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'Game: Only EOA'
    mem[100] = arg1
    staticcall sub_809deb63Address.0x49492fa1 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Game: Only fighters can be leveled up'
    mem[ceil32(return_data.size) + 100] = arg1
    staticcall sub_93066351Address.isStaked(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 100] = arg1
        staticcall sub_809deb63Address.0x6352211e with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Game: You don't own this token'
        mem[(4 * ceil32(return_data.size)) + 96] = 0
        mem[(4 * ceil32(return_data.size)) + 128] = 0
        mem[(4 * ceil32(return_data.size)) + 160] = 0
        mem[(4 * ceil32(return_data.size)) + 192] = 0
        mem[(4 * ceil32(return_data.size)) + 224] = 0
        mem[(4 * ceil32(return_data.size)) + 256] = 0
        mem[(4 * ceil32(return_data.size)) + 288] = 0
        mem[(4 * ceil32(return_data.size)) + 320] = 0
        mem[(4 * ceil32(return_data.size)) + 352] = 0
        mem[(4 * ceil32(return_data.size)) + 384] = 0
        mem[(4 * ceil32(return_data.size)) + 416] = 0
        staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(4 * ceil32(return_data.size)) + 448 len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 352
        if not bool((6 * ceil32(return_data.size)) + 800 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
        require ext_call.return_data[32] == bool(ext_call.return_data[32])
        mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[32]
        require ext_call.return_data[64] == bool(ext_call.return_data[64])
        mem[(6 * ceil32(return_data.size)) + 512] = ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[126 len 2]
        mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[96]
        mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[128]
        require ext_call.return_data[160] == ext_call.return_data[191 len 1]
        mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[160]
        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[192]
        require ext_call.return_data[224] == ext_call.return_data[255 len 1]
        mem[(6 * ceil32(return_data.size)) + 672] = ext_call.return_data[224]
        require ext_call.return_data[256] == ext_call.return_data[287 len 1]
        mem[(6 * ceil32(return_data.size)) + 704] = ext_call.return_data[256]
        require ext_call.return_data[288] == ext_call.return_data[319 len 1]
        mem[(6 * ceil32(return_data.size)) + 736] = ext_call.return_data[288]
        require ext_call.return_data[320] == ext_call.return_data[344 len 8]
        mem[(6 * ceil32(return_data.size)) + 768] = ext_call.return_data[320]
        mem[(6 * ceil32(return_data.size)) + 804] = arg1
        staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(6 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[(7 * ceil32(return_data.size)) + 804] = arg1
            staticcall sub_809deb63Address.0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            mem[(7 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if 0 == ext_call.return_data[126 len 2]:
                if tx.origin != msg.sender:
                    revert with 0, 'Game: Only EOA'
                if uint16(arg2) < 1:
                    revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                idx = 1
                while uint16(idx) <= uint16(arg2):
                    if ext_call.return_data[126 len 2] > -uint16(idx) + 65535:
                        revert with 0, 17
                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]):
                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 1:
                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 2:
                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 3:
                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 4:
                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 5:
                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 6:
                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 7:
                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 8:
                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 9:
                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 10:
                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 11:
                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 12:
                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 13:
                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 14:
                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 15:
                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 16:
                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 17:
                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 18:
                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 19:
                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 20:
                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 21:
                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 22:
                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 23:
                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 24:
                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 25:
                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 26:
                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 27:
                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 28:
                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 29:
                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 30:
                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 31:
                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 32:
                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 33:
                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 34:
                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 35:
                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 36:
                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 37:
                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 38:
                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 39:
                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 40:
                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 41:
                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 42:
                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 43:
                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 44:
                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 45:
                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 46:
                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 47:
                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 48:
                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 49:
                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 50:
                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 51:
                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 52:
                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 53:
                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 54:
                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 55:
                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 56:
                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 57:
                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 58:
                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 59:
                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 60:
                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 61:
                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 62:
                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 63:
                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 64:
                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 65:
                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 66:
                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 67:
                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 68:
                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 69:
                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 70:
                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 71:
                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 72:
                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 73:
                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 74:
                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 75:
                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 76:
                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 77:
                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 78:
                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 79:
                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 80:
                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 81:
                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 82:
                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 83:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 84:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 85:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 86:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 87:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 88:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 89:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                        revert with 0, 'Game: This level is not supported yet'
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    continue 
            else:
                mem[(8 * ceil32(return_data.size)) + 804] = address(ext_call.return_data[0])
                staticcall sub_c0c675edAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 800
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = idx
                    staticcall sub_c0c675edAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_292]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _309 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _316 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_316] = mem[_309]
                    mem[_316 + 32] = mem[_309 + 32]
                    mem[_316 + 64] = mem[_309 + 64]
                    if 24 * 3600 > !mem[_316 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_316 + 64] + (24 * 3600):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s and sub_4b33b36e > -1 / s:
                    revert with 0, 17
                if s * sub_4b33b36e > !sub_fc7c54de:
                    revert with 0, 17
                if block.timestamp < mem[(6 * ceil32(return_data.size)) + 576]:
                    revert with 0, 17
                if not (s * sub_4b33b36e) + sub_fc7c54de:
                    revert with 0, 18
                if uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 576] / (s * sub_4b33b36e) + sub_fc7c54de) > mem[(6 * ceil32(return_data.size)) + 574 len 2]:
                    if tx.origin != msg.sender:
                        revert with 0, 'Game: Only EOA'
                    if uint16(arg2) < 1:
                        revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                    idx = 1
                    while uint16(idx) <= uint16(arg2):
                        if 0 > -uint16(idx) + 65535:
                            revert with 0, 17
                        if uint16(idx):
                            if uint16(idx) != 1:
                                if uint16(idx) != 2:
                                    if uint16(idx) != 3:
                                        if uint16(idx) != 4:
                                            if uint16(idx) != 5:
                                                if uint16(idx) != 6:
                                                    if uint16(idx) != 7:
                                                        if uint16(idx) != 8:
                                                            if uint16(idx) != 9:
                                                                if uint16(idx) != 10:
                                                                    if uint16(idx) != 11:
                                                                        if uint16(idx) != 12:
                                                                            if uint16(idx) != 13:
                                                                                if uint16(idx) != 14:
                                                                                    if uint16(idx) != 15:
                                                                                        if uint16(idx) != 16:
                                                                                            if uint16(idx) != 17:
                                                                                                if uint16(idx) != 18:
                                                                                                    if uint16(idx) != 19:
                                                                                                        if uint16(idx) != 20:
                                                                                                            if uint16(idx) != 21:
                                                                                                                if uint16(idx) != 22:
                                                                                                                    if uint16(idx) != 23:
                                                                                                                        if uint16(idx) != 24:
                                                                                                                            if uint16(idx) != 25:
                                                                                                                                if uint16(idx) != 26:
                                                                                                                                    if uint16(idx) != 27:
                                                                                                                                        if uint16(idx) != 28:
                                                                                                                                            if uint16(idx) != 29:
                                                                                                                                                if uint16(idx) != 30:
                                                                                                                                                    if uint16(idx) != 31:
                                                                                                                                                        if uint16(idx) != 32:
                                                                                                                                                            if uint16(idx) != 33:
                                                                                                                                                                if uint16(idx) != 34:
                                                                                                                                                                    if uint16(idx) != 35:
                                                                                                                                                                        if uint16(idx) != 36:
                                                                                                                                                                            if uint16(idx) != 37:
                                                                                                                                                                                if uint16(idx) != 38:
                                                                                                                                                                                    if uint16(idx) != 39:
                                                                                                                                                                                        if uint16(idx) != 40:
                                                                                                                                                                                            if uint16(idx) != 41:
                                                                                                                                                                                                if uint16(idx) != 42:
                                                                                                                                                                                                    if uint16(idx) != 43:
                                                                                                                                                                                                        if uint16(idx) != 44:
                                                                                                                                                                                                            if uint16(idx) != 45:
                                                                                                                                                                                                                if uint16(idx) != 46:
                                                                                                                                                                                                                    if uint16(idx) != 47:
                                                                                                                                                                                                                        if uint16(idx) != 48:
                                                                                                                                                                                                                            if uint16(idx) != 49:
                                                                                                                                                                                                                                if uint16(idx) != 50:
                                                                                                                                                                                                                                    if uint16(idx) != 51:
                                                                                                                                                                                                                                        if uint16(idx) != 52:
                                                                                                                                                                                                                                            if uint16(idx) != 53:
                                                                                                                                                                                                                                                if uint16(idx) != 54:
                                                                                                                                                                                                                                                    if uint16(idx) != 55:
                                                                                                                                                                                                                                                        if uint16(idx) != 56:
                                                                                                                                                                                                                                                            if uint16(idx) != 57:
                                                                                                                                                                                                                                                                if uint16(idx) != 58:
                                                                                                                                                                                                                                                                    if uint16(idx) != 59:
                                                                                                                                                                                                                                                                        if uint16(idx) != 60:
                                                                                                                                                                                                                                                                            if uint16(idx) != 61:
                                                                                                                                                                                                                                                                                if uint16(idx) != 62:
                                                                                                                                                                                                                                                                                    if uint16(idx) != 63:
                                                                                                                                                                                                                                                                                        if uint16(idx) != 64:
                                                                                                                                                                                                                                                                                            if uint16(idx) != 65:
                                                                                                                                                                                                                                                                                                if uint16(idx) != 66:
                                                                                                                                                                                                                                                                                                    if uint16(idx) != 67:
                                                                                                                                                                                                                                                                                                        if uint16(idx) != 68:
                                                                                                                                                                                                                                                                                                            if uint16(idx) != 69:
                                                                                                                                                                                                                                                                                                                if uint16(idx) != 70:
                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 71:
                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 72:
                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 73:
                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 74:
                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 75:
                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 76:
                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 77:
                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 78:
                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 79:
                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 80:
                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 81:
                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 82:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 83:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 84:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 85:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 86:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 87:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 88:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 89:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                            revert with 0, 'Game: This level is not supported yet'
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        continue 
                else:
                    if mem[(6 * ceil32(return_data.size)) + 574 len 2] < uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 576] / (s * sub_4b33b36e) + sub_fc7c54de):
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 544] = uint16(mem[(6 * ceil32(return_data.size)) + 574 len 2] - uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 576] / (s * sub_4b33b36e) + sub_fc7c54de))
                    if tx.origin != msg.sender:
                        revert with 0, 'Game: Only EOA'
                    if uint16(arg2) < 1:
                        revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                    idx = 1
                    while uint16(idx) <= uint16(arg2):
                        if mem[(6 * ceil32(return_data.size)) + 574 len 2] > -uint16(idx) + 65535:
                            revert with 0, 17
                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]):
                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 1:
                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 2:
                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 3:
                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 4:
                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 5:
                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 6:
                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 7:
                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 8:
                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 9:
                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 10:
                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 11:
                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 12:
                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 13:
                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 14:
                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 15:
                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 16:
                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 17:
                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 18:
                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 19:
                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 20:
                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 21:
                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 22:
                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 23:
                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 24:
                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 25:
                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 26:
                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 27:
                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 28:
                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 29:
                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 30:
                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 31:
                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 32:
                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 33:
                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 34:
                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 35:
                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 36:
                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 37:
                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 38:
                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 39:
                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 40:
                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 41:
                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 42:
                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 43:
                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 44:
                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 45:
                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 46:
                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 47:
                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 48:
                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 49:
                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 50:
                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 51:
                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 52:
                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 53:
                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 54:
                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 55:
                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 56:
                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 57:
                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 58:
                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 59:
                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 60:
                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 61:
                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 62:
                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 63:
                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 64:
                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 65:
                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 66:
                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 67:
                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 68:
                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 69:
                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 70:
                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 71:
                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 72:
                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 73:
                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 74:
                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 75:
                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 76:
                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 77:
                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 78:
                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 79:
                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 80:
                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 81:
                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 82:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 83:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 84:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 85:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 86:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 87:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 88:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 89:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                            revert with 0, 'Game: This level is not supported yet'
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        continue 
        else:
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(7 * ceil32(return_data.size)) + 800 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if not bool((8 * ceil32(return_data.size)) + 928 <= test266151307()):
                revert with 0, 65
            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
            mem[(8 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 832] = ext_call.return_data[32]
            mem[(8 * ceil32(return_data.size)) + 864] = ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[108 len 20]
            mem[(8 * ceil32(return_data.size)) + 896] = ext_call.return_data[96]
            if not ext_call.return_data[108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if 0 == ext_call.return_data[126 len 2]:
                if tx.origin != msg.sender:
                    revert with 0, 'Game: Only EOA'
                if uint16(arg2) < 1:
                    revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                idx = 1
                while uint16(idx) <= uint16(arg2):
                    if ext_call.return_data[126 len 2] > -uint16(idx) + 65535:
                        revert with 0, 17
                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]):
                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 1:
                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 2:
                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 3:
                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 4:
                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 5:
                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 6:
                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 7:
                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 8:
                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 9:
                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 10:
                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 11:
                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 12:
                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 13:
                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 14:
                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 15:
                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 16:
                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 17:
                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 18:
                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 19:
                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 20:
                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 21:
                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 22:
                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 23:
                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 24:
                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 25:
                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 26:
                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 27:
                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 28:
                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 29:
                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 30:
                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 31:
                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 32:
                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 33:
                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 34:
                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 35:
                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 36:
                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 37:
                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 38:
                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 39:
                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 40:
                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 41:
                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 42:
                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 43:
                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 44:
                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 45:
                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 46:
                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 47:
                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 48:
                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 49:
                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 50:
                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 51:
                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 52:
                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 53:
                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 54:
                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 55:
                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 56:
                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 57:
                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 58:
                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 59:
                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 60:
                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 61:
                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 62:
                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 63:
                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 64:
                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 65:
                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 66:
                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 67:
                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 68:
                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 69:
                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 70:
                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 71:
                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 72:
                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 73:
                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 74:
                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 75:
                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 76:
                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 77:
                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 78:
                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 79:
                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 80:
                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 81:
                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 82:
                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 83:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 84:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 85:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 86:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 87:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 88:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 89:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                        revert with 0, 'Game: This level is not supported yet'
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    continue 
            else:
                mem[(8 * ceil32(return_data.size)) + 932] = ext_call.return_data[108 len 20]
                staticcall sub_c0c675edAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args ext_call.return_data[108 len 20]
                mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 928
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(ext_call.return_data[96])
                    mem[mem[64] + 36] = idx
                    staticcall sub_c0c675edAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[96]), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_293]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _317 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_317] = mem[_311]
                    mem[_317 + 32] = mem[_311 + 32]
                    mem[_317 + 64] = mem[_311 + 64]
                    if 24 * 3600 > !mem[_317 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_317 + 64] + (24 * 3600):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s and sub_4b33b36e > -1 / s:
                    revert with 0, 17
                if s * sub_4b33b36e > !sub_fc7c54de:
                    revert with 0, 17
                if block.timestamp < mem[(6 * ceil32(return_data.size)) + 576]:
                    revert with 0, 17
                if not (s * sub_4b33b36e) + sub_fc7c54de:
                    revert with 0, 18
                if uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 576] / (s * sub_4b33b36e) + sub_fc7c54de) > mem[(6 * ceil32(return_data.size)) + 574 len 2]:
                    if tx.origin != msg.sender:
                        revert with 0, 'Game: Only EOA'
                    if uint16(arg2) < 1:
                        revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                    idx = 1
                    while uint16(idx) <= uint16(arg2):
                        if 0 > -uint16(idx) + 65535:
                            revert with 0, 17
                        if uint16(idx):
                            if uint16(idx) != 1:
                                if uint16(idx) != 2:
                                    if uint16(idx) != 3:
                                        if uint16(idx) != 4:
                                            if uint16(idx) != 5:
                                                if uint16(idx) != 6:
                                                    if uint16(idx) != 7:
                                                        if uint16(idx) != 8:
                                                            if uint16(idx) != 9:
                                                                if uint16(idx) != 10:
                                                                    if uint16(idx) != 11:
                                                                        if uint16(idx) != 12:
                                                                            if uint16(idx) != 13:
                                                                                if uint16(idx) != 14:
                                                                                    if uint16(idx) != 15:
                                                                                        if uint16(idx) != 16:
                                                                                            if uint16(idx) != 17:
                                                                                                if uint16(idx) != 18:
                                                                                                    if uint16(idx) != 19:
                                                                                                        if uint16(idx) != 20:
                                                                                                            if uint16(idx) != 21:
                                                                                                                if uint16(idx) != 22:
                                                                                                                    if uint16(idx) != 23:
                                                                                                                        if uint16(idx) != 24:
                                                                                                                            if uint16(idx) != 25:
                                                                                                                                if uint16(idx) != 26:
                                                                                                                                    if uint16(idx) != 27:
                                                                                                                                        if uint16(idx) != 28:
                                                                                                                                            if uint16(idx) != 29:
                                                                                                                                                if uint16(idx) != 30:
                                                                                                                                                    if uint16(idx) != 31:
                                                                                                                                                        if uint16(idx) != 32:
                                                                                                                                                            if uint16(idx) != 33:
                                                                                                                                                                if uint16(idx) != 34:
                                                                                                                                                                    if uint16(idx) != 35:
                                                                                                                                                                        if uint16(idx) != 36:
                                                                                                                                                                            if uint16(idx) != 37:
                                                                                                                                                                                if uint16(idx) != 38:
                                                                                                                                                                                    if uint16(idx) != 39:
                                                                                                                                                                                        if uint16(idx) != 40:
                                                                                                                                                                                            if uint16(idx) != 41:
                                                                                                                                                                                                if uint16(idx) != 42:
                                                                                                                                                                                                    if uint16(idx) != 43:
                                                                                                                                                                                                        if uint16(idx) != 44:
                                                                                                                                                                                                            if uint16(idx) != 45:
                                                                                                                                                                                                                if uint16(idx) != 46:
                                                                                                                                                                                                                    if uint16(idx) != 47:
                                                                                                                                                                                                                        if uint16(idx) != 48:
                                                                                                                                                                                                                            if uint16(idx) != 49:
                                                                                                                                                                                                                                if uint16(idx) != 50:
                                                                                                                                                                                                                                    if uint16(idx) != 51:
                                                                                                                                                                                                                                        if uint16(idx) != 52:
                                                                                                                                                                                                                                            if uint16(idx) != 53:
                                                                                                                                                                                                                                                if uint16(idx) != 54:
                                                                                                                                                                                                                                                    if uint16(idx) != 55:
                                                                                                                                                                                                                                                        if uint16(idx) != 56:
                                                                                                                                                                                                                                                            if uint16(idx) != 57:
                                                                                                                                                                                                                                                                if uint16(idx) != 58:
                                                                                                                                                                                                                                                                    if uint16(idx) != 59:
                                                                                                                                                                                                                                                                        if uint16(idx) != 60:
                                                                                                                                                                                                                                                                            if uint16(idx) != 61:
                                                                                                                                                                                                                                                                                if uint16(idx) != 62:
                                                                                                                                                                                                                                                                                    if uint16(idx) != 63:
                                                                                                                                                                                                                                                                                        if uint16(idx) != 64:
                                                                                                                                                                                                                                                                                            if uint16(idx) != 65:
                                                                                                                                                                                                                                                                                                if uint16(idx) != 66:
                                                                                                                                                                                                                                                                                                    if uint16(idx) != 67:
                                                                                                                                                                                                                                                                                                        if uint16(idx) != 68:
                                                                                                                                                                                                                                                                                                            if uint16(idx) != 69:
                                                                                                                                                                                                                                                                                                                if uint16(idx) != 70:
                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 71:
                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 72:
                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 73:
                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 74:
                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 75:
                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 76:
                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 77:
                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 78:
                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 79:
                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 80:
                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 81:
                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 82:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 83:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 84:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 85:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 86:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 87:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 88:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 89:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                            revert with 0, 'Game: This level is not supported yet'
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        continue 
                else:
                    if mem[(6 * ceil32(return_data.size)) + 574 len 2] < uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 576] / (s * sub_4b33b36e) + sub_fc7c54de):
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 544] = uint16(mem[(6 * ceil32(return_data.size)) + 574 len 2] - uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 576] / (s * sub_4b33b36e) + sub_fc7c54de))
                    if tx.origin != msg.sender:
                        revert with 0, 'Game: Only EOA'
                    if uint16(arg2) < 1:
                        revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                    idx = 1
                    while uint16(idx) <= uint16(arg2):
                        if mem[(6 * ceil32(return_data.size)) + 574 len 2] > -uint16(idx) + 65535:
                            revert with 0, 17
                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]):
                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 1:
                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 2:
                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 3:
                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 4:
                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 5:
                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 6:
                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 7:
                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 8:
                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 9:
                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 10:
                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 11:
                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 12:
                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 13:
                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 14:
                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 15:
                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 16:
                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 17:
                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 18:
                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 19:
                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 20:
                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 21:
                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 22:
                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 23:
                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 24:
                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 25:
                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 26:
                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 27:
                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 28:
                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 29:
                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 30:
                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 31:
                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 32:
                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 33:
                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 34:
                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 35:
                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 36:
                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 37:
                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 38:
                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 39:
                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 40:
                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 41:
                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 42:
                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 43:
                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 44:
                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 45:
                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 46:
                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 47:
                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 48:
                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 49:
                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 50:
                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 51:
                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 52:
                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 53:
                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 54:
                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 55:
                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 56:
                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 57:
                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 58:
                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 59:
                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 60:
                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 61:
                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 62:
                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 63:
                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 64:
                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 65:
                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 66:
                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 67:
                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 68:
                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 69:
                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 70:
                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 71:
                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 72:
                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 73:
                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 74:
                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 75:
                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 76:
                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 77:
                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 78:
                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 79:
                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 80:
                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 81:
                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 82:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 83:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 84:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 85:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 86:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 87:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 88:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 89:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 574 len 2]) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                            revert with 0, 'Game: This level is not supported yet'
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        continue 
    else:
        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 96 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((4 * ceil32(return_data.size)) + 224 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[108 len 20]
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[96]
        if not ext_call.return_data[108 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if ext_call.return_data[108 len 20] != msg.sender:
            revert with 0, 'Game: You don't own this token'
        mem[(4 * ceil32(return_data.size)) + 224] = 0
        mem[(4 * ceil32(return_data.size)) + 256] = 0
        mem[(4 * ceil32(return_data.size)) + 288] = 0
        mem[(4 * ceil32(return_data.size)) + 320] = 0
        mem[(4 * ceil32(return_data.size)) + 352] = 0
        mem[(4 * ceil32(return_data.size)) + 384] = 0
        mem[(4 * ceil32(return_data.size)) + 416] = 0
        mem[(4 * ceil32(return_data.size)) + 448] = 0
        mem[(4 * ceil32(return_data.size)) + 480] = 0
        mem[(4 * ceil32(return_data.size)) + 512] = 0
        mem[(4 * ceil32(return_data.size)) + 544] = 0
        staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(4 * ceil32(return_data.size)) + 576 len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 352
        if not bool((6 * ceil32(return_data.size)) + 928 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        require ext_call.return_data[32] == bool(ext_call.return_data[32])
        mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[32]
        require ext_call.return_data[64] == bool(ext_call.return_data[64])
        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[126 len 2]
        mem[(6 * ceil32(return_data.size)) + 672] = ext_call.return_data[96]
        mem[(6 * ceil32(return_data.size)) + 704] = ext_call.return_data[128]
        require ext_call.return_data[160] == ext_call.return_data[191 len 1]
        mem[(6 * ceil32(return_data.size)) + 736] = ext_call.return_data[160]
        mem[(6 * ceil32(return_data.size)) + 768] = ext_call.return_data[192]
        require ext_call.return_data[224] == ext_call.return_data[255 len 1]
        mem[(6 * ceil32(return_data.size)) + 800] = ext_call.return_data[224]
        require ext_call.return_data[256] == ext_call.return_data[287 len 1]
        mem[(6 * ceil32(return_data.size)) + 832] = ext_call.return_data[256]
        require ext_call.return_data[288] == ext_call.return_data[319 len 1]
        mem[(6 * ceil32(return_data.size)) + 864] = ext_call.return_data[288]
        require ext_call.return_data[320] == ext_call.return_data[344 len 8]
        mem[(6 * ceil32(return_data.size)) + 896] = ext_call.return_data[320]
        mem[(6 * ceil32(return_data.size)) + 932] = arg1
        staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(6 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[(7 * ceil32(return_data.size)) + 932] = arg1
            staticcall sub_809deb63Address.0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            mem[(7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if 0 == ext_call.return_data[126 len 2]:
                if tx.origin != msg.sender:
                    revert with 0, 'Game: Only EOA'
                if uint16(arg2) < 1:
                    revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                idx = 1
                while uint16(idx) <= uint16(arg2):
                    if ext_call.return_data[126 len 2] > -uint16(idx) + 65535:
                        revert with 0, 17
                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]):
                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 1:
                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 2:
                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 3:
                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 4:
                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 5:
                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 6:
                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 7:
                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 8:
                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 9:
                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 10:
                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 11:
                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 12:
                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 13:
                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 14:
                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 15:
                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 16:
                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 17:
                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 18:
                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 19:
                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 20:
                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 21:
                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 22:
                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 23:
                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 24:
                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 25:
                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 26:
                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 27:
                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 28:
                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 29:
                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 30:
                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 31:
                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 32:
                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 33:
                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 34:
                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 35:
                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 36:
                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 37:
                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 38:
                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 39:
                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 40:
                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 41:
                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 42:
                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 43:
                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 44:
                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 45:
                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 46:
                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 47:
                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 48:
                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 49:
                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 50:
                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 51:
                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 52:
                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 53:
                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 54:
                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 55:
                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 56:
                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 57:
                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 58:
                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 59:
                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 60:
                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 61:
                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 62:
                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 63:
                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 64:
                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 65:
                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 66:
                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 67:
                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 68:
                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 69:
                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 70:
                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 71:
                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 72:
                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 73:
                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 74:
                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 75:
                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 76:
                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 77:
                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 78:
                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 79:
                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 80:
                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 81:
                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 82:
                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 83:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 84:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 85:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 86:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 87:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 88:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 89:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                        revert with 0, 'Game: This level is not supported yet'
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    continue 
            else:
                mem[(8 * ceil32(return_data.size)) + 932] = address(ext_call.return_data[0])
                staticcall sub_c0c675edAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 928
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = idx
                    staticcall sub_c0c675edAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_294]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _318 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_318] = mem[_313]
                    mem[_318 + 32] = mem[_313 + 32]
                    mem[_318 + 64] = mem[_313 + 64]
                    if 24 * 3600 > !mem[_318 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_318 + 64] + (24 * 3600):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s and sub_4b33b36e > -1 / s:
                    revert with 0, 17
                if s * sub_4b33b36e > !sub_fc7c54de:
                    revert with 0, 17
                if block.timestamp < mem[(6 * ceil32(return_data.size)) + 704]:
                    revert with 0, 17
                if not (s * sub_4b33b36e) + sub_fc7c54de:
                    revert with 0, 18
                if uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de) > mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                    if tx.origin != msg.sender:
                        revert with 0, 'Game: Only EOA'
                    if uint16(arg2) < 1:
                        revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                    idx = 1
                    while uint16(idx) <= uint16(arg2):
                        if 0 > -uint16(idx) + 65535:
                            revert with 0, 17
                        if uint16(idx):
                            if uint16(idx) != 1:
                                if uint16(idx) != 2:
                                    if uint16(idx) != 3:
                                        if uint16(idx) != 4:
                                            if uint16(idx) != 5:
                                                if uint16(idx) != 6:
                                                    if uint16(idx) != 7:
                                                        if uint16(idx) != 8:
                                                            if uint16(idx) != 9:
                                                                if uint16(idx) != 10:
                                                                    if uint16(idx) != 11:
                                                                        if uint16(idx) != 12:
                                                                            if uint16(idx) != 13:
                                                                                if uint16(idx) != 14:
                                                                                    if uint16(idx) != 15:
                                                                                        if uint16(idx) != 16:
                                                                                            if uint16(idx) != 17:
                                                                                                if uint16(idx) != 18:
                                                                                                    if uint16(idx) != 19:
                                                                                                        if uint16(idx) != 20:
                                                                                                            if uint16(idx) != 21:
                                                                                                                if uint16(idx) != 22:
                                                                                                                    if uint16(idx) != 23:
                                                                                                                        if uint16(idx) != 24:
                                                                                                                            if uint16(idx) != 25:
                                                                                                                                if uint16(idx) != 26:
                                                                                                                                    if uint16(idx) != 27:
                                                                                                                                        if uint16(idx) != 28:
                                                                                                                                            if uint16(idx) != 29:
                                                                                                                                                if uint16(idx) != 30:
                                                                                                                                                    if uint16(idx) != 31:
                                                                                                                                                        if uint16(idx) != 32:
                                                                                                                                                            if uint16(idx) != 33:
                                                                                                                                                                if uint16(idx) != 34:
                                                                                                                                                                    if uint16(idx) != 35:
                                                                                                                                                                        if uint16(idx) != 36:
                                                                                                                                                                            if uint16(idx) != 37:
                                                                                                                                                                                if uint16(idx) != 38:
                                                                                                                                                                                    if uint16(idx) != 39:
                                                                                                                                                                                        if uint16(idx) != 40:
                                                                                                                                                                                            if uint16(idx) != 41:
                                                                                                                                                                                                if uint16(idx) != 42:
                                                                                                                                                                                                    if uint16(idx) != 43:
                                                                                                                                                                                                        if uint16(idx) != 44:
                                                                                                                                                                                                            if uint16(idx) != 45:
                                                                                                                                                                                                                if uint16(idx) != 46:
                                                                                                                                                                                                                    if uint16(idx) != 47:
                                                                                                                                                                                                                        if uint16(idx) != 48:
                                                                                                                                                                                                                            if uint16(idx) != 49:
                                                                                                                                                                                                                                if uint16(idx) != 50:
                                                                                                                                                                                                                                    if uint16(idx) != 51:
                                                                                                                                                                                                                                        if uint16(idx) != 52:
                                                                                                                                                                                                                                            if uint16(idx) != 53:
                                                                                                                                                                                                                                                if uint16(idx) != 54:
                                                                                                                                                                                                                                                    if uint16(idx) != 55:
                                                                                                                                                                                                                                                        if uint16(idx) != 56:
                                                                                                                                                                                                                                                            if uint16(idx) != 57:
                                                                                                                                                                                                                                                                if uint16(idx) != 58:
                                                                                                                                                                                                                                                                    if uint16(idx) != 59:
                                                                                                                                                                                                                                                                        if uint16(idx) != 60:
                                                                                                                                                                                                                                                                            if uint16(idx) != 61:
                                                                                                                                                                                                                                                                                if uint16(idx) != 62:
                                                                                                                                                                                                                                                                                    if uint16(idx) != 63:
                                                                                                                                                                                                                                                                                        if uint16(idx) != 64:
                                                                                                                                                                                                                                                                                            if uint16(idx) != 65:
                                                                                                                                                                                                                                                                                                if uint16(idx) != 66:
                                                                                                                                                                                                                                                                                                    if uint16(idx) != 67:
                                                                                                                                                                                                                                                                                                        if uint16(idx) != 68:
                                                                                                                                                                                                                                                                                                            if uint16(idx) != 69:
                                                                                                                                                                                                                                                                                                                if uint16(idx) != 70:
                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 71:
                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 72:
                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 73:
                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 74:
                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 75:
                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 76:
                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 77:
                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 78:
                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 79:
                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 80:
                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 81:
                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 82:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 83:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 84:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 85:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 86:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 87:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 88:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 89:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                            revert with 0, 'Game: This level is not supported yet'
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        continue 
                else:
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] < uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de):
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 672] = uint16(mem[(6 * ceil32(return_data.size)) + 702 len 2] - uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de))
                    if tx.origin != msg.sender:
                        revert with 0, 'Game: Only EOA'
                    if uint16(arg2) < 1:
                        revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                    idx = 1
                    while uint16(idx) <= uint16(arg2):
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] > -uint16(idx) + 65535:
                            revert with 0, 17
                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 1:
                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 2:
                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 3:
                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 4:
                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 5:
                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 6:
                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 7:
                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 8:
                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 9:
                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 10:
                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 11:
                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 12:
                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 13:
                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 14:
                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 15:
                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 16:
                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 17:
                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 18:
                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 19:
                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 20:
                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 21:
                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 22:
                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 23:
                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 24:
                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 25:
                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 26:
                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 27:
                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 28:
                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 29:
                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 30:
                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 31:
                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 32:
                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 33:
                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 34:
                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 35:
                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 36:
                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 37:
                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 38:
                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 39:
                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 40:
                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 41:
                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 42:
                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 43:
                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 44:
                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 45:
                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 46:
                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 47:
                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 48:
                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 49:
                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 50:
                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 51:
                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 52:
                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 53:
                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 54:
                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 55:
                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 56:
                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 57:
                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 58:
                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 59:
                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 60:
                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 61:
                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 62:
                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 63:
                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 64:
                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 65:
                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 66:
                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 67:
                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 68:
                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 69:
                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 70:
                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 71:
                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 72:
                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 73:
                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 74:
                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 75:
                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 76:
                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 77:
                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 78:
                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 79:
                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 80:
                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 81:
                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 82:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 83:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 84:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 85:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 86:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 87:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 88:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 89:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                            revert with 0, 'Game: This level is not supported yet'
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        continue 
        else:
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(7 * ceil32(return_data.size)) + 928 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if not bool((8 * ceil32(return_data.size)) + 1056 <= test266151307()):
                revert with 0, 65
            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
            mem[(8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 960] = ext_call.return_data[32]
            mem[(8 * ceil32(return_data.size)) + 992] = ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[108 len 20]
            mem[(8 * ceil32(return_data.size)) + 1024] = ext_call.return_data[96]
            if not ext_call.return_data[108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if 0 == ext_call.return_data[126 len 2]:
                if tx.origin != msg.sender:
                    revert with 0, 'Game: Only EOA'
                if uint16(arg2) < 1:
                    revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                idx = 1
                while uint16(idx) <= uint16(arg2):
                    if ext_call.return_data[126 len 2] > -uint16(idx) + 65535:
                        revert with 0, 17
                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]):
                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 1:
                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 2:
                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 3:
                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 4:
                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 5:
                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 6:
                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 7:
                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 8:
                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 9:
                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 10:
                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 11:
                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 12:
                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 13:
                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 14:
                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 15:
                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 16:
                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 17:
                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 18:
                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 19:
                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 20:
                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 21:
                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 22:
                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 23:
                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 24:
                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 25:
                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 26:
                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 27:
                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 28:
                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 29:
                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 30:
                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 31:
                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 32:
                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 33:
                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 34:
                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 35:
                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 36:
                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 37:
                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 38:
                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 39:
                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 40:
                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 41:
                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 42:
                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 43:
                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 44:
                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 45:
                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 46:
                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 47:
                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 48:
                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 49:
                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 50:
                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 51:
                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 52:
                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 53:
                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 54:
                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 55:
                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 56:
                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 57:
                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 58:
                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 59:
                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 60:
                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 61:
                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 62:
                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 63:
                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 64:
                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 65:
                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 66:
                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 67:
                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 68:
                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 69:
                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 70:
                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 71:
                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 72:
                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 73:
                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 74:
                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 75:
                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 76:
                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 77:
                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 78:
                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 79:
                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 80:
                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 81:
                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 82:
                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 83:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 84:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 85:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 86:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 87:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 88:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 89:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + ext_call.return_data[126 len 2]) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                        revert with 0, 'Game: This level is not supported yet'
                    if uint16(idx) == 65535:
                        revert with 0, 17
                    idx = uint16(idx) + 1
                    continue 
            else:
                mem[(8 * ceil32(return_data.size)) + 1060] = ext_call.return_data[108 len 20]
                staticcall sub_c0c675edAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args ext_call.return_data[108 len 20]
                mem[(8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 1056
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(ext_call.return_data[96])
                    mem[mem[64] + 36] = idx
                    staticcall sub_c0c675edAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[96]), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_295]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _319 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_319] = mem[_315]
                    mem[_319 + 32] = mem[_315 + 32]
                    mem[_319 + 64] = mem[_315 + 64]
                    if 24 * 3600 > !mem[_319 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_319 + 64] + (24 * 3600):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s and sub_4b33b36e > -1 / s:
                    revert with 0, 17
                if s * sub_4b33b36e > !sub_fc7c54de:
                    revert with 0, 17
                if block.timestamp < mem[(6 * ceil32(return_data.size)) + 704]:
                    revert with 0, 17
                if not (s * sub_4b33b36e) + sub_fc7c54de:
                    revert with 0, 18
                if uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de) > mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                    if tx.origin != msg.sender:
                        revert with 0, 'Game: Only EOA'
                    if uint16(arg2) < 1:
                        revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                    idx = 1
                    while uint16(idx) <= uint16(arg2):
                        if 0 > -uint16(idx) + 65535:
                            revert with 0, 17
                        if uint16(idx):
                            if uint16(idx) != 1:
                                if uint16(idx) != 2:
                                    if uint16(idx) != 3:
                                        if uint16(idx) != 4:
                                            if uint16(idx) != 5:
                                                if uint16(idx) != 6:
                                                    if uint16(idx) != 7:
                                                        if uint16(idx) != 8:
                                                            if uint16(idx) != 9:
                                                                if uint16(idx) != 10:
                                                                    if uint16(idx) != 11:
                                                                        if uint16(idx) != 12:
                                                                            if uint16(idx) != 13:
                                                                                if uint16(idx) != 14:
                                                                                    if uint16(idx) != 15:
                                                                                        if uint16(idx) != 16:
                                                                                            if uint16(idx) != 17:
                                                                                                if uint16(idx) != 18:
                                                                                                    if uint16(idx) != 19:
                                                                                                        if uint16(idx) != 20:
                                                                                                            if uint16(idx) != 21:
                                                                                                                if uint16(idx) != 22:
                                                                                                                    if uint16(idx) != 23:
                                                                                                                        if uint16(idx) != 24:
                                                                                                                            if uint16(idx) != 25:
                                                                                                                                if uint16(idx) != 26:
                                                                                                                                    if uint16(idx) != 27:
                                                                                                                                        if uint16(idx) != 28:
                                                                                                                                            if uint16(idx) != 29:
                                                                                                                                                if uint16(idx) != 30:
                                                                                                                                                    if uint16(idx) != 31:
                                                                                                                                                        if uint16(idx) != 32:
                                                                                                                                                            if uint16(idx) != 33:
                                                                                                                                                                if uint16(idx) != 34:
                                                                                                                                                                    if uint16(idx) != 35:
                                                                                                                                                                        if uint16(idx) != 36:
                                                                                                                                                                            if uint16(idx) != 37:
                                                                                                                                                                                if uint16(idx) != 38:
                                                                                                                                                                                    if uint16(idx) != 39:
                                                                                                                                                                                        if uint16(idx) != 40:
                                                                                                                                                                                            if uint16(idx) != 41:
                                                                                                                                                                                                if uint16(idx) != 42:
                                                                                                                                                                                                    if uint16(idx) != 43:
                                                                                                                                                                                                        if uint16(idx) != 44:
                                                                                                                                                                                                            if uint16(idx) != 45:
                                                                                                                                                                                                                if uint16(idx) != 46:
                                                                                                                                                                                                                    if uint16(idx) != 47:
                                                                                                                                                                                                                        if uint16(idx) != 48:
                                                                                                                                                                                                                            if uint16(idx) != 49:
                                                                                                                                                                                                                                if uint16(idx) != 50:
                                                                                                                                                                                                                                    if uint16(idx) != 51:
                                                                                                                                                                                                                                        if uint16(idx) != 52:
                                                                                                                                                                                                                                            if uint16(idx) != 53:
                                                                                                                                                                                                                                                if uint16(idx) != 54:
                                                                                                                                                                                                                                                    if uint16(idx) != 55:
                                                                                                                                                                                                                                                        if uint16(idx) != 56:
                                                                                                                                                                                                                                                            if uint16(idx) != 57:
                                                                                                                                                                                                                                                                if uint16(idx) != 58:
                                                                                                                                                                                                                                                                    if uint16(idx) != 59:
                                                                                                                                                                                                                                                                        if uint16(idx) != 60:
                                                                                                                                                                                                                                                                            if uint16(idx) != 61:
                                                                                                                                                                                                                                                                                if uint16(idx) != 62:
                                                                                                                                                                                                                                                                                    if uint16(idx) != 63:
                                                                                                                                                                                                                                                                                        if uint16(idx) != 64:
                                                                                                                                                                                                                                                                                            if uint16(idx) != 65:
                                                                                                                                                                                                                                                                                                if uint16(idx) != 66:
                                                                                                                                                                                                                                                                                                    if uint16(idx) != 67:
                                                                                                                                                                                                                                                                                                        if uint16(idx) != 68:
                                                                                                                                                                                                                                                                                                            if uint16(idx) != 69:
                                                                                                                                                                                                                                                                                                                if uint16(idx) != 70:
                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 71:
                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 72:
                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 73:
                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 74:
                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 75:
                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 76:
                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 77:
                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 78:
                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 79:
                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 80:
                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 81:
                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 82:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 83:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 84:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 85:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 86:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 87:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 88:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 89:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(idx) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(idx) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(idx) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(idx) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                            revert with 0, 'Game: This level is not supported yet'
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        continue 
                else:
                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] < uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de):
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 672] = uint16(mem[(6 * ceil32(return_data.size)) + 702 len 2] - uint16(block.timestamp - mem[(6 * ceil32(return_data.size)) + 704] / (s * sub_4b33b36e) + sub_fc7c54de))
                    if tx.origin != msg.sender:
                        revert with 0, 'Game: Only EOA'
                    if uint16(arg2) < 1:
                        revert with 0, 'Game: Invalid levelsToUpgrade provided.'
                    idx = 1
                    while uint16(idx) <= uint16(arg2):
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] > -uint16(idx) + 65535:
                            revert with 0, 17
                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]):
                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 1:
                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 2:
                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 3:
                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 4:
                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 5:
                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 6:
                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 7:
                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 8:
                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 9:
                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 10:
                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 11:
                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 12:
                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 13:
                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 14:
                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 15:
                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 16:
                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 17:
                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 18:
                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 19:
                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 20:
                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 21:
                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 22:
                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 23:
                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 24:
                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 25:
                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 26:
                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 27:
                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 28:
                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 29:
                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 30:
                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 31:
                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 32:
                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 33:
                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 34:
                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 35:
                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 36:
                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 37:
                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 38:
                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 39:
                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 40:
                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 41:
                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 42:
                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 43:
                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 44:
                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 45:
                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 46:
                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 47:
                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 48:
                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 49:
                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 50:
                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 51:
                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 52:
                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 53:
                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 54:
                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 55:
                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 56:
                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 57:
                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 58:
                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 59:
                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 60:
                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 61:
                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 62:
                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 63:
                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 64:
                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 65:
                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 66:
                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 67:
                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 68:
                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 69:
                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 70:
                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 71:
                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 72:
                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 73:
                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 74:
                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 75:
                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 76:
                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 77:
                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 78:
                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 79:
                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 80:
                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 81:
                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 82:
                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 83:
                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 84:
                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 85:
                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 86:
                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 87:
                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 88:
                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 89:
                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 90:
                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 91:
                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 92:
                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 93:
                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 94:
                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 95:
                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 96:
                                                                                                                                                                                                                                                                                                                                                                                                                            if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 97:
                                                                                                                                                                                                                                                                                                                                                                                                                                if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 98:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 99:
                                                                                                                                                                                                                                                                                                                                                                                                                                        if uint16(uint16(idx) + mem[(6 * ceil32(return_data.size)) + 702 len 2]) != 100:
                                                                                                                                                                                                                                                                                                                                                                                                                                            revert with 0, 'Game: This level is not supported yet'
                        if uint16(idx) == 65535:
                            revert with 0, 17
                        idx = uint16(idx) + 1
                        continue 
    revert with 0, 'Game: Error calculating level up $BLOOD cost.'
}



}
