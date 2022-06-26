contract main {




// =====================  Runtime code  =====================


#
#  - sub_32bef484(?)
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
            _355 = mem[64]
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
            call sub_809deb63Address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _355 + (32 * _363) + -mem[64] + 64]
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
            _356 = mem[64]
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
            call sub_809deb63Address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _356 + (32 * _364) + -mem[64] + 64]
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
                _349 = mem[64]
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
                call sub_809deb63Address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _349 + (32 * _357) + -mem[64] + 64]
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
                _350 = mem[64]
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
                call sub_809deb63Address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _350 + (32 * _358) + -mem[64] + 64]
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
                    _352 = mem[64]
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
                    call sub_809deb63Address.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _352 + (32 * _360) + -mem[64] + 64]
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
                    _353 = mem[64]
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
                    call sub_809deb63Address.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _353 + (32 * _361) + -mem[64] + 64]
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
                    _354 = mem[64]
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
                    call sub_809deb63Address.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _354 + (32 * _362) + -mem[64] + 64]
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

function sub_35bc07c2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _1343 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        staticcall sub_809deb63Address.getTokenWriteBlock(uint256 arg1) with:
                gas gas_remaining wei
               args _1343
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1347 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1347] == mem[_1347 + 24 len 8]
        if mem[_1347 + 24 len 8] >= block.number:
            revert with 0, 'Game: Nope!'
        mem[mem[64] + 4] = _1343
        staticcall sub_809deb63Address.0x32385e25 with:
                gas gas_remaining wei
               args _1343
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1352] == mem[_1352 + 24 len 8]
        if mem[_1352 + 24 len 8] >= block.number:
            revert with 0, 'Game: Nope!'
        mem[mem[64] + 4] = _1343
        staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args _1343
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1358] == bool(mem[_1358])
        if not mem[_1358]:
            revert with 0, 'Game: Token is not staked'
        _1361 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1361] = 0
        mem[_1361 + 32] = 0
        mem[_1361 + 64] = 0
        mem[_1361 + 96] = 0
        _1364 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1364] = 0
        mem[_1364 + 32] = 0
        mem[_1364 + 64] = 0
        mem[_1364 + 96] = 0
        mem[_1364 + 128] = 0
        mem[_1364 + 160] = 0
        mem[_1364 + 192] = 0
        mem[_1364 + 224] = 0
        mem[_1364 + 256] = 0
        mem[_1364 + 288] = 0
        mem[_1364 + 320] = 0
        staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args _1343
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1367 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        _1368 = mem[64]
        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 352
        require mem[_1367] == bool(mem[_1367])
        mem[_1368] = mem[_1367]
        require mem[_1367 + 32] == bool(mem[_1367 + 32])
        mem[_1368 + 32] = mem[_1367 + 32]
        require mem[_1367 + 64] == bool(mem[_1367 + 64])
        mem[_1368 + 64] = mem[_1367 + 64]
        require mem[_1367 + 96] == mem[_1367 + 126 len 2]
        mem[_1368 + 96] = mem[_1367 + 96]
        mem[_1368 + 128] = mem[_1367 + 128]
        require mem[_1367 + 160] == mem[_1367 + 191 len 1]
        mem[_1368 + 160] = mem[_1367 + 160]
        mem[_1368 + 192] = mem[_1367 + 192]
        require mem[_1367 + 224] == mem[_1367 + 255 len 1]
        mem[_1368 + 224] = mem[_1367 + 224]
        require mem[_1367 + 256] == mem[_1367 + 287 len 1]
        mem[_1368 + 256] = mem[_1367 + 256]
        require mem[_1367 + 288] == mem[_1367 + 319 len 1]
        mem[_1368 + 288] = mem[_1367 + 288]
        require mem[_1367 + 320] == mem[_1367 + 344 len 8]
        mem[_1368 + 320] = mem[_1367 + 320]
        mem[mem[64] + 4] = _1343
        staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args _1343
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1382] == bool(mem[_1382])
        if not mem[_1382]:
            mem[mem[64] + 4] = _1343
            staticcall sub_809deb63Address.0x6352211e with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1390 = mem[_1388]
            require mem[_1388] == mem[_1388 + 12 len 20]
            if not mem[_1388 + 12 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if 0 == mem[_1368 + 126 len 2]:
                mem[mem[64] + 4] = _1343
                staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1405 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1405] == bool(mem[_1405])
                if not mem[_1405]:
                    mem[mem[64] + 4] = _1343
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args _1343
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1428 = mem[_1425]
                    require mem[_1425] == mem[_1425 + 12 len 20]
                    if not mem[_1425 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[_1368 + 32]:
                        _1463 = mem[_1368 + 160]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1473 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1479 = mem[_1473]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1343
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1505 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1515 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1505] == mem[_1505 + 30 len 2]
                        mem[_1515] = mem[_1505]
                        mem[_1515 + 32] = mem[_1505 + 32]
                        mem[_1515 + 64] = mem[_1505 + 64]
                        require mem[_1505 + 96] == mem[_1505 + 108 len 20]
                        mem[_1515 + 96] = mem[_1505 + 96]
                        if _1479 < mem[_1515 + 32]:
                            revert with 0, 17
                        if uint8(_1463) and _1479 - mem[_1515 + 32] > -1 / uint8(_1463):
                            revert with 0, 17
                        if s > !((_1479 * uint8(_1463)) - (mem[_1515 + 32] * uint8(_1463))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (_1479 * uint8(_1463)) - (mem[_1515 + 32] * uint8(_1463))
                        continue 
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1343
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1480 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1474] == mem[_1474 + 30 len 2]
                    mem[_1480] = mem[_1474]
                    mem[_1480 + 32] = mem[_1474 + 32]
                    mem[_1480 + 64] = mem[_1474 + 64]
                    require mem[_1474 + 96] == mem[_1474 + 108 len 20]
                    mem[_1480 + 96] = mem[_1474 + 96]
                    _1552 = mem[_1480 + 64]
                    if block.timestamp < mem[_1480 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1480 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1480 + 64]:
                        revert with 0, 17
                    if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1480 + 64] * sub_d23270a3) / 24 * 3600):
                        revert with 0, 17
                    _1636 = mem[_1368 + 96]
                    if mem[_1368 + 126 len 2] and sub_b175c7c7 > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    mem[mem[64] + 4] = address(_1428)
                    staticcall sub_f43bc155Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1428)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1741 = mem[_1703]
                    t = 0
                    u = 0
                    while t < _1741:
                        mem[mem[64] + 4] = address(_1428)
                        mem[mem[64] + 36] = t
                        staticcall sub_f43bc155Address.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(_1428), t
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2111 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[_2111]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2140 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2147 = mem[64]
                        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 96
                        mem[_2147] = mem[_2140]
                        mem[_2147 + 32] = mem[_2140 + 32]
                        mem[_2147 + 64] = mem[_2140 + 64]
                        if 24 * 3600 > !mem[_2147 + 64]:
                            revert with 0, 17
                        if block.timestamp < mem[_2147 + 64] + (24 * 3600):
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            u = u
                            continue 
                        if u == -1:
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = u + 1
                        continue 
                    if u < sub_c0d8478d:
                        if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                            revert with 0, 17
                        if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                            revert with 0, 17
                        if uint16(_1636) * sub_b175c7c7 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                            revert with 0, 17
                        if block.timestamp < mem[_1480 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1480 + 64] and (uint16(_1636) * sub_b175c7c7) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe) > -1 / block.timestamp - mem[_1480 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1552 * sub_d23270a3) / 24 * 3600 > !((uint16(_1636) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1636) * sub_b175c7c7 * mem[_1480 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1480 + 64]) / 24 * 3600):
                            revert with 0, 17
                        if s > !(((block.timestamp * sub_d23270a3) - (_1552 * sub_d23270a3) / 24 * 3600) + ((uint16(_1636) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1636) * sub_b175c7c7 * mem[_1480 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1480 + 64]) / 24 * 3600)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((block.timestamp * sub_d23270a3) - (_1552 * sub_d23270a3) / 24 * 3600) + ((uint16(_1636) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1636) * sub_b175c7c7 * mem[_1480 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1480 + 64]) / 24 * 3600)
                        continue 
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                        revert with 0, 17
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if u < sub_c0d8478d - 1:
                        revert with 0, 17
                    t = 1
                    v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
                    while t <= u + -sub_c0d8478d + 1:
                        if sub_1eca8abe and t > -1 / sub_1eca8abe:
                            revert with 0, 17
                        if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                            revert with 0, 17
                        if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                            if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                                revert with 0, 17
                            if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                            continue 
                        if uint16(_1636) * sub_b175c7c7 > !v:
                            revert with 0, 17
                        if block.timestamp < mem[_1480 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1480 + 64] and (uint16(_1636) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1480 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1552 * sub_d23270a3) / 24 * 3600 > !((uint16(_1636) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1636) * sub_b175c7c7 * mem[_1480 + 64]) - (v * mem[_1480 + 64]) / 24 * 3600):
                            revert with 0, 17
                        if s > !(((block.timestamp * sub_d23270a3) - (_1552 * sub_d23270a3) / 24 * 3600) + ((uint16(_1636) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1636) * sub_b175c7c7 * mem[_1480 + 64]) - (v * mem[_1480 + 64]) / 24 * 3600)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((block.timestamp * sub_d23270a3) - (_1552 * sub_d23270a3) / 24 * 3600) + ((uint16(_1636) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1636) * sub_b175c7c7 * mem[_1480 + 64]) - (v * mem[_1480 + 64]) / 24 * 3600)
                        continue 
                    if uint16(_1636) * sub_b175c7c7 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[_1480 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1480 + 64] and (uint16(_1636) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1480 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_1552 * sub_d23270a3) / 24 * 3600 > !((uint16(_1636) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1636) * sub_b175c7c7 * mem[_1480 + 64]) - (v * mem[_1480 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_1552 * sub_d23270a3) / 24 * 3600) + ((uint16(_1636) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1636) * sub_b175c7c7 * mem[_1480 + 64]) - (v * mem[_1480 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_1552 * sub_d23270a3) / 24 * 3600) + ((uint16(_1636) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1636) * sub_b175c7c7 * mem[_1480 + 64]) - (v * mem[_1480 + 64]) / 24 * 3600)
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1429 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1426] == mem[_1426 + 30 len 2]
                mem[_1429] = mem[_1426]
                mem[_1429 + 32] = mem[_1426 + 32]
                mem[_1429 + 64] = mem[_1426 + 64]
                require mem[_1426 + 96] == mem[_1426 + 108 len 20]
                mem[_1429 + 96] = mem[_1426 + 96]
                _1468 = mem[_1429 + 96]
                if not mem[_1429 + 108 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1368 + 32]:
                    _1489 = mem[_1368 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1519 = mem[_1506]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1343
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1553 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1541] == mem[_1541 + 30 len 2]
                    mem[_1553] = mem[_1541]
                    mem[_1553 + 32] = mem[_1541 + 32]
                    mem[_1553 + 64] = mem[_1541 + 64]
                    require mem[_1541 + 96] == mem[_1541 + 108 len 20]
                    mem[_1553 + 96] = mem[_1541 + 96]
                    if _1519 < mem[_1553 + 32]:
                        revert with 0, 17
                    if uint8(_1489) and _1519 - mem[_1553 + 32] > -1 / uint8(_1489):
                        revert with 0, 17
                    if s > !((_1519 * uint8(_1489)) - (mem[_1553 + 32] * uint8(_1489))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_1519 * uint8(_1489)) - (mem[_1553 + 32] * uint8(_1489))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1507 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1520 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1507] == mem[_1507 + 30 len 2]
                mem[_1520] = mem[_1507]
                mem[_1520 + 32] = mem[_1507 + 32]
                mem[_1520 + 64] = mem[_1507 + 64]
                require mem[_1507 + 96] == mem[_1507 + 108 len 20]
                mem[_1520 + 96] = mem[_1507 + 96]
                _1583 = mem[_1520 + 64]
                if block.timestamp < mem[_1520 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1520 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1520 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1520 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                _1668 = mem[_1368 + 96]
                if mem[_1368 + 126 len 2] and sub_b175c7c7 > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                mem[mem[64] + 4] = address(_1468)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1468)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1765 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1801 = mem[_1765]
                t = 0
                u = 0
                while t < _1801:
                    mem[mem[64] + 4] = address(_1468)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_1468), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2112]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2148 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2148] = mem[_2141]
                    mem[_2148 + 32] = mem[_2141 + 32]
                    mem[_2148 + 64] = mem[_2141 + 64]
                    if 24 * 3600 > !mem[_2148 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2148 + 64] + (24 * 3600):
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = u
                        continue 
                    if u == -1:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u + 1
                    continue 
                if u < sub_c0d8478d:
                    if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                        revert with 0, 17
                    if uint16(_1668) * sub_b175c7c7 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                        revert with 0, 17
                    if block.timestamp < mem[_1520 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1520 + 64] and (uint16(_1668) * sub_b175c7c7) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe) > -1 / block.timestamp - mem[_1520 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_1583 * sub_d23270a3) / 24 * 3600 > !((uint16(_1668) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1668) * sub_b175c7c7 * mem[_1520 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1520 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_1583 * sub_d23270a3) / 24 * 3600) + ((uint16(_1668) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1668) * sub_b175c7c7 * mem[_1520 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1520 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_1583 * sub_d23270a3) / 24 * 3600) + ((uint16(_1668) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1668) * sub_b175c7c7 * mem[_1520 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1520 + 64]) / 24 * 3600)
                    continue 
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                    revert with 0, 17
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if u < sub_c0d8478d - 1:
                    revert with 0, 17
                t = 1
                v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
                while t <= u + -sub_c0d8478d + 1:
                    if sub_1eca8abe and t > -1 / sub_1eca8abe:
                        revert with 0, 17
                    if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                        revert with 0, 17
                    if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                        if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                            revert with 0, 17
                        if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                        continue 
                    if uint16(_1668) * sub_b175c7c7 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[_1520 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1520 + 64] and (uint16(_1668) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1520 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_1583 * sub_d23270a3) / 24 * 3600 > !((uint16(_1668) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1668) * sub_b175c7c7 * mem[_1520 + 64]) - (v * mem[_1520 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_1583 * sub_d23270a3) / 24 * 3600) + ((uint16(_1668) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1668) * sub_b175c7c7 * mem[_1520 + 64]) - (v * mem[_1520 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_1583 * sub_d23270a3) / 24 * 3600) + ((uint16(_1668) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1668) * sub_b175c7c7 * mem[_1520 + 64]) - (v * mem[_1520 + 64]) / 24 * 3600)
                    continue 
                if uint16(_1668) * sub_b175c7c7 > !v:
                    revert with 0, 17
                if block.timestamp < mem[_1520 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1520 + 64] and (uint16(_1668) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1520 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_1583 * sub_d23270a3) / 24 * 3600 > !((uint16(_1668) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1668) * sub_b175c7c7 * mem[_1520 + 64]) - (v * mem[_1520 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_1583 * sub_d23270a3) / 24 * 3600) + ((uint16(_1668) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1668) * sub_b175c7c7 * mem[_1520 + 64]) - (v * mem[_1520 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_1583 * sub_d23270a3) / 24 * 3600) + ((uint16(_1668) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1668) * sub_b175c7c7 * mem[_1520 + 64]) - (v * mem[_1520 + 64]) / 24 * 3600)
                continue 
            mem[mem[64] + 4] = mem[_1388 + 12 len 20]
            staticcall sub_c0c675edAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1390)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1408 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1411 = mem[_1408]
            t = 0
            u = 0
            while t < _1411:
                mem[mem[64] + 4] = address(_1390)
                mem[mem[64] + 36] = t
                staticcall sub_c0c675edAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_1390), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2110 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2110]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2146 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2146] = mem[_2139]
                mem[_2146 + 32] = mem[_2139 + 32]
                mem[_2146 + 64] = mem[_2139 + 64]
                if 24 * 3600 > !mem[_2146 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2146 + 64] + (24 * 3600):
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u
                    continue 
                if u == -1:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = u + 1
                continue 
            if u and sub_4b33b36e > -1 / u:
                revert with 0, 17
            if u * sub_4b33b36e > !sub_fc7c54de:
                revert with 0, 17
            if block.timestamp < mem[_1368 + 128]:
                revert with 0, 17
            if not (u * sub_4b33b36e) + sub_fc7c54de:
                revert with 0, 18
            if uint16(block.timestamp - mem[_1368 + 128] / (u * sub_4b33b36e) + sub_fc7c54de) > mem[_1368 + 126 len 2]:
                mem[_1368 + 96] = 0
                mem[mem[64] + 4] = _1343
                staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2188 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2188] == bool(mem[_2188])
                if not mem[_2188]:
                    mem[mem[64] + 4] = _1343
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args _1343
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2212 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2220 = mem[_2212]
                    require mem[_2212] == mem[_2212 + 12 len 20]
                    if not mem[_2212 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[_1368 + 32]:
                        _2266 = mem[_1368 + 160]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2279 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2296 = mem[_2279]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1343
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _2354 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_2331] == mem[_2331 + 30 len 2]
                        mem[_2354] = mem[_2331]
                        mem[_2354 + 32] = mem[_2331 + 32]
                        mem[_2354 + 64] = mem[_2331 + 64]
                        require mem[_2331 + 96] == mem[_2331 + 108 len 20]
                        mem[_2354 + 96] = mem[_2331 + 96]
                        if _2296 < mem[_2354 + 32]:
                            revert with 0, 17
                        if uint8(_2266) and _2296 - mem[_2354 + 32] > -1 / uint8(_2266):
                            revert with 0, 17
                        if s > !((_2296 * uint8(_2266)) - (mem[_2354 + 32] * uint8(_2266))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (_2296 * uint8(_2266)) - (mem[_2354 + 32] * uint8(_2266))
                        continue 
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1343
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2280 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2297 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2280] == mem[_2280 + 30 len 2]
                    mem[_2297] = mem[_2280]
                    mem[_2297 + 32] = mem[_2280 + 32]
                    mem[_2297 + 64] = mem[_2280 + 64]
                    require mem[_2280 + 96] == mem[_2280 + 108 len 20]
                    mem[_2297 + 96] = mem[_2280 + 96]
                    _2409 = mem[_2297 + 64]
                    if block.timestamp < mem[_2297 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2297 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2297 + 64]:
                        revert with 0, 17
                    if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2297 + 64] * sub_d23270a3) / 24 * 3600):
                        revert with 0, 17
                    if 0 and sub_b175c7c7 > -1 / 0:
                        revert with 0, 17
                    mem[mem[64] + 4] = address(_2220)
                    staticcall sub_f43bc155Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(_2220)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2484 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2491 = mem[_2484]
                    t = 0
                    u = 0
                    while t < _2491:
                        mem[mem[64] + 4] = address(_2220)
                        mem[mem[64] + 36] = t
                        staticcall sub_f43bc155Address.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(_2220), t
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2682 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[_2682]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2726 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2734 = mem[64]
                        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 96
                        mem[_2734] = mem[_2726]
                        mem[_2734 + 32] = mem[_2726 + 32]
                        mem[_2734 + 64] = mem[_2726 + 64]
                        if 24 * 3600 > !mem[_2734 + 64]:
                            revert with 0, 17
                        if block.timestamp < mem[_2734 + 64] + (24 * 3600):
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            u = u
                            continue 
                        if u == -1:
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = u + 1
                        continue 
                    if u < sub_c0d8478d:
                        if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                            revert with 0, 17
                        if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                            revert with 0, 17
                        if 0 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                            revert with 0, 17
                        if block.timestamp < mem[_2297 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_2297 + 64] and mem[_1368 + 126 len 2] * u * sub_1eca8abe > -1 / block.timestamp - mem[_2297 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_2409 * sub_d23270a3) / 24 * 3600 > !((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2297 + 64]) / 24 * 3600):
                            revert with 0, 17
                        if s > !(((block.timestamp * sub_d23270a3) - (_2409 * sub_d23270a3) / 24 * 3600) + ((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2297 + 64]) / 24 * 3600)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((block.timestamp * sub_d23270a3) - (_2409 * sub_d23270a3) / 24 * 3600) + ((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2297 + 64]) / 24 * 3600)
                        continue 
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                        revert with 0, 17
                    if sub_c0d8478d < 1:
                        revert with 0, 17
                    if u < sub_c0d8478d - 1:
                        revert with 0, 17
                    t = 1
                    v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
                    while t <= u + -sub_c0d8478d + 1:
                        if sub_1eca8abe and t > -1 / sub_1eca8abe:
                            revert with 0, 17
                        if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                            revert with 0, 17
                        if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                            if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                                revert with 0, 17
                            if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                            continue 
                        if 0 > !v:
                            revert with 0, 17
                        if block.timestamp < mem[_2297 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_2297 + 64] and v > -1 / block.timestamp - mem[_2297 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_2409 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_2297 + 64]) / 24 * 3600):
                            revert with 0, 17
                        if s > !(((block.timestamp * sub_d23270a3) - (_2409 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2297 + 64]) / 24 * 3600)):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((block.timestamp * sub_d23270a3) - (_2409 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2297 + 64]) / 24 * 3600)
                        continue 
                    if 0 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[_2297 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2297 + 64] and v > -1 / block.timestamp - mem[_2297 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_2409 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_2297 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_2409 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2297 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_2409 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2297 + 64]) / 24 * 3600)
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2213 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2221 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2213] == mem[_2213 + 30 len 2]
                mem[_2221] = mem[_2213]
                mem[_2221 + 32] = mem[_2213 + 32]
                mem[_2221 + 64] = mem[_2213 + 64]
                require mem[_2213 + 96] == mem[_2213 + 108 len 20]
                mem[_2221 + 96] = mem[_2213 + 96]
                _2271 = mem[_2221 + 96]
                if not mem[_2221 + 108 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1368 + 32]:
                    _2315 = mem[_1368 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2358 = mem[_2332]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1343
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2388 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2410 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2388] == mem[_2388 + 30 len 2]
                    mem[_2410] = mem[_2388]
                    mem[_2410 + 32] = mem[_2388 + 32]
                    mem[_2410 + 64] = mem[_2388 + 64]
                    require mem[_2388 + 96] == mem[_2388 + 108 len 20]
                    mem[_2410 + 96] = mem[_2388 + 96]
                    if _2358 < mem[_2410 + 32]:
                        revert with 0, 17
                    if uint8(_2315) and _2358 - mem[_2410 + 32] > -1 / uint8(_2315):
                        revert with 0, 17
                    if s > !((_2358 * uint8(_2315)) - (mem[_2410 + 32] * uint8(_2315))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_2358 * uint8(_2315)) - (mem[_2410 + 32] * uint8(_2315))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2359 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2333] == mem[_2333 + 30 len 2]
                mem[_2359] = mem[_2333]
                mem[_2359 + 32] = mem[_2333 + 32]
                mem[_2359 + 64] = mem[_2333 + 64]
                require mem[_2333 + 96] == mem[_2333 + 108 len 20]
                mem[_2359 + 96] = mem[_2333 + 96]
                _2451 = mem[_2359 + 64]
                if block.timestamp < mem[_2359 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2359 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2359 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2359 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                if 0 and sub_b175c7c7 > -1 / 0:
                    revert with 0, 17
                mem[mem[64] + 4] = address(_2271)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2271)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2507 = mem[_2499]
                t = 0
                u = 0
                while t < _2507:
                    mem[mem[64] + 4] = address(_2271)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_2271), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2683 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2683]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2727 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2735 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2735] = mem[_2727]
                    mem[_2735 + 32] = mem[_2727 + 32]
                    mem[_2735 + 64] = mem[_2727 + 64]
                    if 24 * 3600 > !mem[_2735 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2735 + 64] + (24 * 3600):
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = u
                        continue 
                    if u == -1:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u + 1
                    continue 
                if u < sub_c0d8478d:
                    if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                        revert with 0, 17
                    if 0 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                        revert with 0, 17
                    if block.timestamp < mem[_2359 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2359 + 64] and mem[_1368 + 126 len 2] * u * sub_1eca8abe > -1 / block.timestamp - mem[_2359 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_2451 * sub_d23270a3) / 24 * 3600 > !((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2359 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_2451 * sub_d23270a3) / 24 * 3600) + ((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2359 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_2451 * sub_d23270a3) / 24 * 3600) + ((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2359 + 64]) / 24 * 3600)
                    continue 
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                    revert with 0, 17
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if u < sub_c0d8478d - 1:
                    revert with 0, 17
                t = 1
                v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
                while t <= u + -sub_c0d8478d + 1:
                    if sub_1eca8abe and t > -1 / sub_1eca8abe:
                        revert with 0, 17
                    if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                        revert with 0, 17
                    if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                        if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                            revert with 0, 17
                        if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                        continue 
                    if 0 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[_2359 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2359 + 64] and v > -1 / block.timestamp - mem[_2359 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_2451 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_2359 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_2451 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2359 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_2451 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2359 + 64]) / 24 * 3600)
                    continue 
                if 0 > !v:
                    revert with 0, 17
                if block.timestamp < mem[_2359 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2359 + 64] and v > -1 / block.timestamp - mem[_2359 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2451 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_2359 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2451 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2359 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2451 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2359 + 64]) / 24 * 3600)
                continue 
            if mem[_1368 + 126 len 2] < uint16(block.timestamp - mem[_1368 + 128] / (u * sub_4b33b36e) + sub_fc7c54de):
                revert with 0, 17
            mem[_1368 + 96] = uint16(mem[_1368 + 126 len 2] - uint16(block.timestamp - mem[_1368 + 128] / (u * sub_4b33b36e) + sub_fc7c54de))
            mem[mem[64] + 4] = _1343
            staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2196] == bool(mem[_2196])
            if not mem[_2196]:
                mem[mem[64] + 4] = _1343
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2228 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2234 = mem[_2228]
                require mem[_2228] == mem[_2228 + 12 len 20]
                if not mem[_2228 + 12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1368 + 32]:
                    _2290 = mem[_1368 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2338 = mem[_2310]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1343
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2390 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2374] == mem[_2374 + 30 len 2]
                    mem[_2390] = mem[_2374]
                    mem[_2390 + 32] = mem[_2374 + 32]
                    mem[_2390 + 64] = mem[_2374 + 64]
                    require mem[_2374 + 96] == mem[_2374 + 108 len 20]
                    mem[_2390 + 96] = mem[_2374 + 96]
                    if _2338 < mem[_2390 + 32]:
                        revert with 0, 17
                    if uint8(_2290) and _2338 - mem[_2390 + 32] > -1 / uint8(_2290):
                        revert with 0, 17
                    if s > !((_2338 * uint8(_2290)) - (mem[_2390 + 32] * uint8(_2290))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_2338 * uint8(_2290)) - (mem[_2390 + 32] * uint8(_2290))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2339 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2311] == mem[_2311 + 30 len 2]
                mem[_2339] = mem[_2311]
                mem[_2339 + 32] = mem[_2311 + 32]
                mem[_2339 + 64] = mem[_2311 + 64]
                require mem[_2311 + 96] == mem[_2311 + 108 len 20]
                mem[_2339 + 96] = mem[_2311 + 96]
                _2433 = mem[_2339 + 64]
                if block.timestamp < mem[_2339 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2339 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2339 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2339 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                _2474 = mem[_1368 + 96]
                if mem[_1368 + 126 len 2] and sub_b175c7c7 > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                mem[mem[64] + 4] = address(_2234)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2234)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2502 = mem[_2494]
                t = 0
                u = 0
                while t < _2502:
                    mem[mem[64] + 4] = address(_2234)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_2234), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2680 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2680]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2724 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2732 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2732] = mem[_2724]
                    mem[_2732 + 32] = mem[_2724 + 32]
                    mem[_2732 + 64] = mem[_2724 + 64]
                    if 24 * 3600 > !mem[_2732 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2732 + 64] + (24 * 3600):
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = u
                        continue 
                    if u == -1:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u + 1
                    continue 
                if u < sub_c0d8478d:
                    if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                        revert with 0, 17
                    if uint16(_2474) * sub_b175c7c7 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                        revert with 0, 17
                    if block.timestamp < mem[_2339 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2339 + 64] and (uint16(_2474) * sub_b175c7c7) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe) > -1 / block.timestamp - mem[_2339 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_2433 * sub_d23270a3) / 24 * 3600 > !((uint16(_2474) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2474) * sub_b175c7c7 * mem[_2339 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2339 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_2433 * sub_d23270a3) / 24 * 3600) + ((uint16(_2474) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2474) * sub_b175c7c7 * mem[_2339 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2339 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_2433 * sub_d23270a3) / 24 * 3600) + ((uint16(_2474) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2474) * sub_b175c7c7 * mem[_2339 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2339 + 64]) / 24 * 3600)
                    continue 
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                    revert with 0, 17
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if u < sub_c0d8478d - 1:
                    revert with 0, 17
                t = 1
                v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
                while t <= u + -sub_c0d8478d + 1:
                    if sub_1eca8abe and t > -1 / sub_1eca8abe:
                        revert with 0, 17
                    if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                        revert with 0, 17
                    if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                        if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                            revert with 0, 17
                        if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                        continue 
                    if uint16(_2474) * sub_b175c7c7 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[_2339 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2339 + 64] and (uint16(_2474) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_2339 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_2433 * sub_d23270a3) / 24 * 3600 > !((uint16(_2474) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2474) * sub_b175c7c7 * mem[_2339 + 64]) - (v * mem[_2339 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_2433 * sub_d23270a3) / 24 * 3600) + ((uint16(_2474) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2474) * sub_b175c7c7 * mem[_2339 + 64]) - (v * mem[_2339 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_2433 * sub_d23270a3) / 24 * 3600) + ((uint16(_2474) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2474) * sub_b175c7c7 * mem[_2339 + 64]) - (v * mem[_2339 + 64]) / 24 * 3600)
                    continue 
                if uint16(_2474) * sub_b175c7c7 > !v:
                    revert with 0, 17
                if block.timestamp < mem[_2339 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2339 + 64] and (uint16(_2474) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_2339 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2433 * sub_d23270a3) / 24 * 3600 > !((uint16(_2474) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2474) * sub_b175c7c7 * mem[_2339 + 64]) - (v * mem[_2339 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2433 * sub_d23270a3) / 24 * 3600) + ((uint16(_2474) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2474) * sub_b175c7c7 * mem[_2339 + 64]) - (v * mem[_2339 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2433 * sub_d23270a3) / 24 * 3600) + ((uint16(_2474) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2474) * sub_b175c7c7 * mem[_2339 + 64]) - (v * mem[_2339 + 64]) / 24 * 3600)
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2229 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2235 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2229] == mem[_2229 + 30 len 2]
            mem[_2235] = mem[_2229]
            mem[_2235 + 32] = mem[_2229 + 32]
            mem[_2235 + 64] = mem[_2229 + 64]
            require mem[_2229 + 96] == mem[_2229 + 108 len 20]
            mem[_2235 + 96] = mem[_2229 + 96]
            _2295 = mem[_2235 + 96]
            if not mem[_2235 + 108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1368 + 32]:
                _2349 = mem[_1368 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2394 = mem[_2375]
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2434 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2426] == mem[_2426 + 30 len 2]
                mem[_2434] = mem[_2426]
                mem[_2434 + 32] = mem[_2426 + 32]
                mem[_2434 + 64] = mem[_2426 + 64]
                require mem[_2426 + 96] == mem[_2426 + 108 len 20]
                mem[_2434 + 96] = mem[_2426 + 96]
                if _2394 < mem[_2434 + 32]:
                    revert with 0, 17
                if uint8(_2349) and _2394 - mem[_2434 + 32] > -1 / uint8(_2349):
                    revert with 0, 17
                if s > !((_2394 * uint8(_2349)) - (mem[_2434 + 32] * uint8(_2349))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_2394 * uint8(_2349)) - (mem[_2434 + 32] * uint8(_2349))
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2376 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2395 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2376] == mem[_2376 + 30 len 2]
            mem[_2395] = mem[_2376]
            mem[_2395 + 32] = mem[_2376 + 32]
            mem[_2395 + 64] = mem[_2376 + 64]
            require mem[_2376 + 96] == mem[_2376 + 108 len 20]
            mem[_2395 + 96] = mem[_2376 + 96]
            _2462 = mem[_2395 + 64]
            if block.timestamp < mem[_2395 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2395 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2395 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2395 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            _2483 = mem[_1368 + 96]
            if mem[_1368 + 126 len 2] and sub_b175c7c7 > -1 / mem[_1368 + 126 len 2]:
                revert with 0, 17
            mem[mem[64] + 4] = address(_2295)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2295)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2510 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2520 = mem[_2510]
            t = 0
            u = 0
            while t < _2520:
                mem[mem[64] + 4] = address(_2295)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_2295), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2681 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2681]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2725 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2733 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2733] = mem[_2725]
                mem[_2733 + 32] = mem[_2725 + 32]
                mem[_2733 + 64] = mem[_2725 + 64]
                if 24 * 3600 > !mem[_2733 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2733 + 64] + (24 * 3600):
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u
                    continue 
                if u == -1:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = u + 1
                continue 
            if u < sub_c0d8478d:
                if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                    revert with 0, 17
                if uint16(_2483) * sub_b175c7c7 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                    revert with 0, 17
                if block.timestamp < mem[_2395 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2395 + 64] and (uint16(_2483) * sub_b175c7c7) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe) > -1 / block.timestamp - mem[_2395 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2462 * sub_d23270a3) / 24 * 3600 > !((uint16(_2483) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2483) * sub_b175c7c7 * mem[_2395 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2395 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2462 * sub_d23270a3) / 24 * 3600) + ((uint16(_2483) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2483) * sub_b175c7c7 * mem[_2395 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2395 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2462 * sub_d23270a3) / 24 * 3600) + ((uint16(_2483) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2483) * sub_b175c7c7 * mem[_2395 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2395 + 64]) / 24 * 3600)
                continue 
            if sub_c0d8478d < 1:
                revert with 0, 17
            if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                revert with 0, 17
            if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                revert with 0, 17
            if sub_c0d8478d < 1:
                revert with 0, 17
            if u < sub_c0d8478d - 1:
                revert with 0, 17
            t = 1
            v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
            while t <= u + -sub_c0d8478d + 1:
                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                    revert with 0, 17
                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                    revert with 0, 17
                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                    if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                    continue 
                if uint16(_2483) * sub_b175c7c7 > !v:
                    revert with 0, 17
                if block.timestamp < mem[_2395 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2395 + 64] and (uint16(_2483) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_2395 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2462 * sub_d23270a3) / 24 * 3600 > !((uint16(_2483) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2483) * sub_b175c7c7 * mem[_2395 + 64]) - (v * mem[_2395 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2462 * sub_d23270a3) / 24 * 3600) + ((uint16(_2483) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2483) * sub_b175c7c7 * mem[_2395 + 64]) - (v * mem[_2395 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2462 * sub_d23270a3) / 24 * 3600) + ((uint16(_2483) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2483) * sub_b175c7c7 * mem[_2395 + 64]) - (v * mem[_2395 + 64]) / 24 * 3600)
                continue 
            if uint16(_2483) * sub_b175c7c7 > !v:
                revert with 0, 17
            if block.timestamp < mem[_2395 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2395 + 64] and (uint16(_2483) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_2395 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2462 * sub_d23270a3) / 24 * 3600 > !((uint16(_2483) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2483) * sub_b175c7c7 * mem[_2395 + 64]) - (v * mem[_2395 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2462 * sub_d23270a3) / 24 * 3600) + ((uint16(_2483) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2483) * sub_b175c7c7 * mem[_2395 + 64]) - (v * mem[_2395 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2462 * sub_d23270a3) / 24 * 3600) + ((uint16(_2483) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2483) * sub_b175c7c7 * mem[_2395 + 64]) - (v * mem[_2395 + 64]) / 24 * 3600)
            continue 
        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                gas gas_remaining wei
               args _1343
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _1391 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_1389] == mem[_1389 + 30 len 2]
        mem[_1391] = mem[_1389]
        mem[_1391 + 32] = mem[_1389 + 32]
        mem[_1391 + 64] = mem[_1389 + 64]
        require mem[_1389 + 96] == mem[_1389 + 108 len 20]
        mem[_1391 + 96] = mem[_1389 + 96]
        _1399 = mem[_1391 + 96]
        if not mem[_1391 + 108 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if 0 == mem[_1368 + 126 len 2]:
            mem[mem[64] + 4] = _1343
            staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1415 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1415] == bool(mem[_1415])
            if not mem[_1415]:
                mem[mem[64] + 4] = _1343
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1440 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1448 = mem[_1440]
                require mem[_1440] == mem[_1440 + 12 len 20]
                if not mem[_1440 + 12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1368 + 32]:
                    _1497 = mem[_1368 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1521 = mem[_1509]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1343
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1557 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1544] == mem[_1544 + 30 len 2]
                    mem[_1557] = mem[_1544]
                    mem[_1557 + 32] = mem[_1544 + 32]
                    mem[_1557 + 64] = mem[_1544 + 64]
                    require mem[_1544 + 96] == mem[_1544 + 108 len 20]
                    mem[_1557 + 96] = mem[_1544 + 96]
                    if _1521 < mem[_1557 + 32]:
                        revert with 0, 17
                    if uint8(_1497) and _1521 - mem[_1557 + 32] > -1 / uint8(_1497):
                        revert with 0, 17
                    if s > !((_1521 * uint8(_1497)) - (mem[_1557 + 32] * uint8(_1497))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_1521 * uint8(_1497)) - (mem[_1557 + 32] * uint8(_1497))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1510 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1522 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1510] == mem[_1510 + 30 len 2]
                mem[_1522] = mem[_1510]
                mem[_1522 + 32] = mem[_1510 + 32]
                mem[_1522 + 64] = mem[_1510 + 64]
                require mem[_1510 + 96] == mem[_1510 + 108 len 20]
                mem[_1522 + 96] = mem[_1510 + 96]
                _1588 = mem[_1522 + 64]
                if block.timestamp < mem[_1522 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1522 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1522 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1522 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                _1674 = mem[_1368 + 96]
                if mem[_1368 + 126 len 2] and sub_b175c7c7 > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                mem[mem[64] + 4] = address(_1448)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1448)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1770 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1809 = mem[_1770]
                t = 0
                u = 0
                while t < _1809:
                    mem[mem[64] + 4] = address(_1448)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_1448), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2114]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2150 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2150] = mem[_2144]
                    mem[_2150 + 32] = mem[_2144 + 32]
                    mem[_2150 + 64] = mem[_2144 + 64]
                    if 24 * 3600 > !mem[_2150 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2150 + 64] + (24 * 3600):
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = u
                        continue 
                    if u == -1:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u + 1
                    continue 
                if u < sub_c0d8478d:
                    if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                        revert with 0, 17
                    if uint16(_1674) * sub_b175c7c7 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                        revert with 0, 17
                    if block.timestamp < mem[_1522 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1522 + 64] and (uint16(_1674) * sub_b175c7c7) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe) > -1 / block.timestamp - mem[_1522 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_1588 * sub_d23270a3) / 24 * 3600 > !((uint16(_1674) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1674) * sub_b175c7c7 * mem[_1522 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1522 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_1588 * sub_d23270a3) / 24 * 3600) + ((uint16(_1674) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1674) * sub_b175c7c7 * mem[_1522 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1522 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_1588 * sub_d23270a3) / 24 * 3600) + ((uint16(_1674) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1674) * sub_b175c7c7 * mem[_1522 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1522 + 64]) / 24 * 3600)
                    continue 
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                    revert with 0, 17
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if u < sub_c0d8478d - 1:
                    revert with 0, 17
                t = 1
                v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
                while t <= u + -sub_c0d8478d + 1:
                    if sub_1eca8abe and t > -1 / sub_1eca8abe:
                        revert with 0, 17
                    if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                        revert with 0, 17
                    if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                        if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                            revert with 0, 17
                        if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                        continue 
                    if uint16(_1674) * sub_b175c7c7 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[_1522 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1522 + 64] and (uint16(_1674) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1522 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_1588 * sub_d23270a3) / 24 * 3600 > !((uint16(_1674) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1674) * sub_b175c7c7 * mem[_1522 + 64]) - (v * mem[_1522 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_1588 * sub_d23270a3) / 24 * 3600) + ((uint16(_1674) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1674) * sub_b175c7c7 * mem[_1522 + 64]) - (v * mem[_1522 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_1588 * sub_d23270a3) / 24 * 3600) + ((uint16(_1674) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1674) * sub_b175c7c7 * mem[_1522 + 64]) - (v * mem[_1522 + 64]) / 24 * 3600)
                    continue 
                if uint16(_1674) * sub_b175c7c7 > !v:
                    revert with 0, 17
                if block.timestamp < mem[_1522 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1522 + 64] and (uint16(_1674) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1522 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_1588 * sub_d23270a3) / 24 * 3600 > !((uint16(_1674) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1674) * sub_b175c7c7 * mem[_1522 + 64]) - (v * mem[_1522 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_1588 * sub_d23270a3) / 24 * 3600) + ((uint16(_1674) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1674) * sub_b175c7c7 * mem[_1522 + 64]) - (v * mem[_1522 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_1588 * sub_d23270a3) / 24 * 3600) + ((uint16(_1674) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1674) * sub_b175c7c7 * mem[_1522 + 64]) - (v * mem[_1522 + 64]) / 24 * 3600)
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1449 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_1441] == mem[_1441 + 30 len 2]
            mem[_1449] = mem[_1441]
            mem[_1449 + 32] = mem[_1441 + 32]
            mem[_1449 + 64] = mem[_1441 + 64]
            require mem[_1441 + 96] == mem[_1441 + 108 len 20]
            mem[_1449 + 96] = mem[_1441 + 96]
            _1502 = mem[_1449 + 96]
            if not mem[_1449 + 108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1368 + 32]:
                _1535 = mem[_1368 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1561 = mem[_1545]
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1576 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1589 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1576] == mem[_1576 + 30 len 2]
                mem[_1589] = mem[_1576]
                mem[_1589 + 32] = mem[_1576 + 32]
                mem[_1589 + 64] = mem[_1576 + 64]
                require mem[_1576 + 96] == mem[_1576 + 108 len 20]
                mem[_1589 + 96] = mem[_1576 + 96]
                if _1561 < mem[_1589 + 32]:
                    revert with 0, 17
                if uint8(_1535) and _1561 - mem[_1589 + 32] > -1 / uint8(_1535):
                    revert with 0, 17
                if s > !((_1561 * uint8(_1535)) - (mem[_1589 + 32] * uint8(_1535))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_1561 * uint8(_1535)) - (mem[_1589 + 32] * uint8(_1535))
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1562 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_1546] == mem[_1546 + 30 len 2]
            mem[_1562] = mem[_1546]
            mem[_1562 + 32] = mem[_1546 + 32]
            mem[_1562 + 64] = mem[_1546 + 64]
            require mem[_1546 + 96] == mem[_1546 + 108 len 20]
            mem[_1562 + 96] = mem[_1546 + 96]
            _1616 = mem[_1562 + 64]
            if block.timestamp < mem[_1562 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_1562 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1562 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1562 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            _1733 = mem[_1368 + 96]
            if mem[_1368 + 126 len 2] and sub_b175c7c7 > -1 / mem[_1368 + 126 len 2]:
                revert with 0, 17
            mem[mem[64] + 4] = address(_1502)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1502)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1853 = mem[_1829]
            t = 0
            u = 0
            while t < _1853:
                mem[mem[64] + 4] = address(_1502)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_1502), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2115]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2151 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2151] = mem[_2145]
                mem[_2151 + 32] = mem[_2145 + 32]
                mem[_2151 + 64] = mem[_2145 + 64]
                if 24 * 3600 > !mem[_2151 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2151 + 64] + (24 * 3600):
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u
                    continue 
                if u == -1:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = u + 1
                continue 
            if u < sub_c0d8478d:
                if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                    revert with 0, 17
                if uint16(_1733) * sub_b175c7c7 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                    revert with 0, 17
                if block.timestamp < mem[_1562 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1562 + 64] and (uint16(_1733) * sub_b175c7c7) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe) > -1 / block.timestamp - mem[_1562 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_1616 * sub_d23270a3) / 24 * 3600 > !((uint16(_1733) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1733) * sub_b175c7c7 * mem[_1562 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1562 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_1616 * sub_d23270a3) / 24 * 3600) + ((uint16(_1733) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1733) * sub_b175c7c7 * mem[_1562 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1562 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_1616 * sub_d23270a3) / 24 * 3600) + ((uint16(_1733) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_1733) * sub_b175c7c7 * mem[_1562 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_1562 + 64]) / 24 * 3600)
                continue 
            if sub_c0d8478d < 1:
                revert with 0, 17
            if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                revert with 0, 17
            if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                revert with 0, 17
            if sub_c0d8478d < 1:
                revert with 0, 17
            if u < sub_c0d8478d - 1:
                revert with 0, 17
            t = 1
            v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
            while t <= u + -sub_c0d8478d + 1:
                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                    revert with 0, 17
                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                    revert with 0, 17
                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                    if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                    continue 
                if uint16(_1733) * sub_b175c7c7 > !v:
                    revert with 0, 17
                if block.timestamp < mem[_1562 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1562 + 64] and (uint16(_1733) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1562 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_1616 * sub_d23270a3) / 24 * 3600 > !((uint16(_1733) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1733) * sub_b175c7c7 * mem[_1562 + 64]) - (v * mem[_1562 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_1616 * sub_d23270a3) / 24 * 3600) + ((uint16(_1733) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1733) * sub_b175c7c7 * mem[_1562 + 64]) - (v * mem[_1562 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_1616 * sub_d23270a3) / 24 * 3600) + ((uint16(_1733) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1733) * sub_b175c7c7 * mem[_1562 + 64]) - (v * mem[_1562 + 64]) / 24 * 3600)
                continue 
            if uint16(_1733) * sub_b175c7c7 > !v:
                revert with 0, 17
            if block.timestamp < mem[_1562 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_1562 + 64] and (uint16(_1733) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_1562 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_1616 * sub_d23270a3) / 24 * 3600 > !((uint16(_1733) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1733) * sub_b175c7c7 * mem[_1562 + 64]) - (v * mem[_1562 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_1616 * sub_d23270a3) / 24 * 3600) + ((uint16(_1733) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1733) * sub_b175c7c7 * mem[_1562 + 64]) - (v * mem[_1562 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_1616 * sub_d23270a3) / 24 * 3600) + ((uint16(_1733) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_1733) * sub_b175c7c7 * mem[_1562 + 64]) - (v * mem[_1562 + 64]) / 24 * 3600)
            continue 
        mem[mem[64] + 4] = mem[_1391 + 108 len 20]
        staticcall sub_c0c675edAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(_1399)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1416 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1423 = mem[_1416]
        t = 0
        u = 0
        while t < _1423:
            mem[mem[64] + 4] = address(_1399)
            mem[mem[64] + 36] = t
            staticcall sub_c0c675edAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(_1399), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_2113]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2149 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2149] = mem[_2143]
            mem[_2149 + 32] = mem[_2143 + 32]
            mem[_2149 + 64] = mem[_2143 + 64]
            if 24 * 3600 > !mem[_2149 + 64]:
                revert with 0, 17
            if block.timestamp < mem[_2149 + 64] + (24 * 3600):
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = u
                continue 
            if u == -1:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            t = t + 1
            u = u + 1
            continue 
        if u and sub_4b33b36e > -1 / u:
            revert with 0, 17
        if u * sub_4b33b36e > !sub_fc7c54de:
            revert with 0, 17
        if block.timestamp < mem[_1368 + 128]:
            revert with 0, 17
        if not (u * sub_4b33b36e) + sub_fc7c54de:
            revert with 0, 18
        if uint16(block.timestamp - mem[_1368 + 128] / (u * sub_4b33b36e) + sub_fc7c54de) > mem[_1368 + 126 len 2]:
            mem[_1368 + 96] = 0
            mem[mem[64] + 4] = _1343
            staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2189] == bool(mem[_2189])
            if not mem[_2189]:
                mem[mem[64] + 4] = _1343
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2214 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2226 = mem[_2214]
                require mem[_2214] == mem[_2214 + 12 len 20]
                if not mem[_2214 + 12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1368 + 32]:
                    _2272 = mem[_1368 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2282 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2306 = mem[_2282]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1343
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2368 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2335] == mem[_2335 + 30 len 2]
                    mem[_2368] = mem[_2335]
                    mem[_2368 + 32] = mem[_2335 + 32]
                    mem[_2368 + 64] = mem[_2335 + 64]
                    require mem[_2335 + 96] == mem[_2335 + 108 len 20]
                    mem[_2368 + 96] = mem[_2335 + 96]
                    if _2306 < mem[_2368 + 32]:
                        revert with 0, 17
                    if uint8(_2272) and _2306 - mem[_2368 + 32] > -1 / uint8(_2272):
                        revert with 0, 17
                    if s > !((_2306 * uint8(_2272)) - (mem[_2368 + 32] * uint8(_2272))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_2306 * uint8(_2272)) - (mem[_2368 + 32] * uint8(_2272))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2283 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2307 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2283] == mem[_2283 + 30 len 2]
                mem[_2307] = mem[_2283]
                mem[_2307 + 32] = mem[_2283 + 32]
                mem[_2307 + 64] = mem[_2283 + 64]
                require mem[_2283 + 96] == mem[_2283 + 108 len 20]
                mem[_2307 + 96] = mem[_2283 + 96]
                _2421 = mem[_2307 + 64]
                if block.timestamp < mem[_2307 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2307 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2307 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2307 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                if 0 and sub_b175c7c7 > -1 / 0:
                    revert with 0, 17
                mem[mem[64] + 4] = address(_2226)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2226)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2487 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2493 = mem[_2487]
                t = 0
                u = 0
                while t < _2493:
                    mem[mem[64] + 4] = address(_2226)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_2226), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2686 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2686]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2730 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2738 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2738] = mem[_2730]
                    mem[_2738 + 32] = mem[_2730 + 32]
                    mem[_2738 + 64] = mem[_2730 + 64]
                    if 24 * 3600 > !mem[_2738 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2738 + 64] + (24 * 3600):
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = u
                        continue 
                    if u == -1:
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u + 1
                    continue 
                if u < sub_c0d8478d:
                    if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                        revert with 0, 17
                    if 0 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                        revert with 0, 17
                    if block.timestamp < mem[_2307 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2307 + 64] and mem[_1368 + 126 len 2] * u * sub_1eca8abe > -1 / block.timestamp - mem[_2307 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_2421 * sub_d23270a3) / 24 * 3600 > !((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2307 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_2421 * sub_d23270a3) / 24 * 3600) + ((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2307 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_2421 * sub_d23270a3) / 24 * 3600) + ((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2307 + 64]) / 24 * 3600)
                    continue 
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                    revert with 0, 17
                if sub_c0d8478d < 1:
                    revert with 0, 17
                if u < sub_c0d8478d - 1:
                    revert with 0, 17
                t = 1
                v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
                while t <= u + -sub_c0d8478d + 1:
                    if sub_1eca8abe and t > -1 / sub_1eca8abe:
                        revert with 0, 17
                    if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                        revert with 0, 17
                    if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                        if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                            revert with 0, 17
                        if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                            revert with 0, 17
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                        continue 
                    if 0 > !v:
                        revert with 0, 17
                    if block.timestamp < mem[_2307 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2307 + 64] and v > -1 / block.timestamp - mem[_2307 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_2421 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_2307 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_2421 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2307 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_2421 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2307 + 64]) / 24 * 3600)
                    continue 
                if 0 > !v:
                    revert with 0, 17
                if block.timestamp < mem[_2307 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2307 + 64] and v > -1 / block.timestamp - mem[_2307 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2421 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_2307 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2421 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2307 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2421 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2307 + 64]) / 24 * 3600)
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2227 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2215] == mem[_2215 + 30 len 2]
            mem[_2227] = mem[_2215]
            mem[_2227 + 32] = mem[_2215 + 32]
            mem[_2227 + 64] = mem[_2215 + 64]
            require mem[_2215 + 96] == mem[_2215 + 108 len 20]
            mem[_2227 + 96] = mem[_2215 + 96]
            _2277 = mem[_2227 + 96]
            if not mem[_2227 + 108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1368 + 32]:
                _2325 = mem[_1368 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2336 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2372 = mem[_2336]
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2389 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2422 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2389] == mem[_2389 + 30 len 2]
                mem[_2422] = mem[_2389]
                mem[_2422 + 32] = mem[_2389 + 32]
                mem[_2422 + 64] = mem[_2389 + 64]
                require mem[_2389 + 96] == mem[_2389 + 108 len 20]
                mem[_2422 + 96] = mem[_2389 + 96]
                if _2372 < mem[_2422 + 32]:
                    revert with 0, 17
                if uint8(_2325) and _2372 - mem[_2422 + 32] > -1 / uint8(_2325):
                    revert with 0, 17
                if s > !((_2372 * uint8(_2325)) - (mem[_2422 + 32] * uint8(_2325))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_2372 * uint8(_2325)) - (mem[_2422 + 32] * uint8(_2325))
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2373 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2337] == mem[_2337 + 30 len 2]
            mem[_2373] = mem[_2337]
            mem[_2373 + 32] = mem[_2337 + 32]
            mem[_2373 + 64] = mem[_2337 + 64]
            require mem[_2337 + 96] == mem[_2337 + 108 len 20]
            mem[_2373 + 96] = mem[_2337 + 96]
            _2457 = mem[_2373 + 64]
            if block.timestamp < mem[_2373 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2373 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2373 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2373 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            if 0 and sub_b175c7c7 > -1 / 0:
                revert with 0, 17
            mem[mem[64] + 4] = address(_2277)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2277)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2501 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2509 = mem[_2501]
            t = 0
            u = 0
            while t < _2509:
                mem[mem[64] + 4] = address(_2277)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_2277), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2687 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2687]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2739 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2739] = mem[_2731]
                mem[_2739 + 32] = mem[_2731 + 32]
                mem[_2739 + 64] = mem[_2731 + 64]
                if 24 * 3600 > !mem[_2739 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2739 + 64] + (24 * 3600):
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u
                    continue 
                if u == -1:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = u + 1
                continue 
            if u < sub_c0d8478d:
                if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                    revert with 0, 17
                if 0 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                    revert with 0, 17
                if block.timestamp < mem[_2373 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2373 + 64] and mem[_1368 + 126 len 2] * u * sub_1eca8abe > -1 / block.timestamp - mem[_2373 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2457 * sub_d23270a3) / 24 * 3600 > !((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2373 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2457 * sub_d23270a3) / 24 * 3600) + ((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2373 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2457 * sub_d23270a3) / 24 * 3600) + ((mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2373 + 64]) / 24 * 3600)
                continue 
            if sub_c0d8478d < 1:
                revert with 0, 17
            if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                revert with 0, 17
            if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                revert with 0, 17
            if sub_c0d8478d < 1:
                revert with 0, 17
            if u < sub_c0d8478d - 1:
                revert with 0, 17
            t = 1
            v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
            while t <= u + -sub_c0d8478d + 1:
                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                    revert with 0, 17
                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                    revert with 0, 17
                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                    if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                    continue 
                if 0 > !v:
                    revert with 0, 17
                if block.timestamp < mem[_2373 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2373 + 64] and v > -1 / block.timestamp - mem[_2373 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2457 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_2373 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2457 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2373 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2457 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2373 + 64]) / 24 * 3600)
                continue 
            if 0 > !v:
                revert with 0, 17
            if block.timestamp < mem[_2373 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2373 + 64] and v > -1 / block.timestamp - mem[_2373 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2457 * sub_d23270a3) / 24 * 3600 > !((v * block.timestamp) - (v * mem[_2373 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2457 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2373 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2457 * sub_d23270a3) / 24 * 3600) + ((v * block.timestamp) - (v * mem[_2373 + 64]) / 24 * 3600)
            continue 
        if mem[_1368 + 126 len 2] < uint16(block.timestamp - mem[_1368 + 128] / (u * sub_4b33b36e) + sub_fc7c54de):
            revert with 0, 17
        mem[_1368 + 96] = uint16(mem[_1368 + 126 len 2] - uint16(block.timestamp - mem[_1368 + 128] / (u * sub_4b33b36e) + sub_fc7c54de))
        mem[mem[64] + 4] = _1343
        staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args _1343
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2197] == bool(mem[_2197])
        if not mem[_2197]:
            mem[mem[64] + 4] = _1343
            staticcall sub_809deb63Address.0x6352211e with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2231 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2236 = mem[_2231]
            require mem[_2231] == mem[_2231 + 12 len 20]
            if not mem[_2231 + 12 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1368 + 32]:
                _2300 = mem[_1368 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2320 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2342 = mem[_2320]
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1343
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2396 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2381] == mem[_2381 + 30 len 2]
                mem[_2396] = mem[_2381]
                mem[_2396 + 32] = mem[_2381 + 32]
                mem[_2396 + 64] = mem[_2381 + 64]
                require mem[_2381 + 96] == mem[_2381 + 108 len 20]
                mem[_2396 + 96] = mem[_2381 + 96]
                if _2342 < mem[_2396 + 32]:
                    revert with 0, 17
                if uint8(_2300) and _2342 - mem[_2396 + 32] > -1 / uint8(_2300):
                    revert with 0, 17
                if s > !((_2342 * uint8(_2300)) - (mem[_2396 + 32] * uint8(_2300))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_2342 * uint8(_2300)) - (mem[_2396 + 32] * uint8(_2300))
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2343 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2321] == mem[_2321 + 30 len 2]
            mem[_2343] = mem[_2321]
            mem[_2343 + 32] = mem[_2321 + 32]
            mem[_2343 + 64] = mem[_2321 + 64]
            require mem[_2321 + 96] == mem[_2321 + 108 len 20]
            mem[_2343 + 96] = mem[_2321 + 96]
            _2441 = mem[_2343 + 64]
            if block.timestamp < mem[_2343 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2343 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2343 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2343 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            _2475 = mem[_1368 + 96]
            if mem[_1368 + 126 len 2] and sub_b175c7c7 > -1 / mem[_1368 + 126 len 2]:
                revert with 0, 17
            mem[mem[64] + 4] = address(_2236)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2236)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2496 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2504 = mem[_2496]
            t = 0
            u = 0
            while t < _2504:
                mem[mem[64] + 4] = address(_2236)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_2236), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2684 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2684]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2728 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2736 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2736] = mem[_2728]
                mem[_2736 + 32] = mem[_2728 + 32]
                mem[_2736 + 64] = mem[_2728 + 64]
                if 24 * 3600 > !mem[_2736 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2736 + 64] + (24 * 3600):
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u
                    continue 
                if u == -1:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = u + 1
                continue 
            if u < sub_c0d8478d:
                if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                    revert with 0, 17
                if uint16(_2475) * sub_b175c7c7 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                    revert with 0, 17
                if block.timestamp < mem[_2343 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2343 + 64] and (uint16(_2475) * sub_b175c7c7) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe) > -1 / block.timestamp - mem[_2343 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2441 * sub_d23270a3) / 24 * 3600 > !((uint16(_2475) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2475) * sub_b175c7c7 * mem[_2343 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2343 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2441 * sub_d23270a3) / 24 * 3600) + ((uint16(_2475) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2475) * sub_b175c7c7 * mem[_2343 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2343 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2441 * sub_d23270a3) / 24 * 3600) + ((uint16(_2475) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2475) * sub_b175c7c7 * mem[_2343 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2343 + 64]) / 24 * 3600)
                continue 
            if sub_c0d8478d < 1:
                revert with 0, 17
            if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
                revert with 0, 17
            if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
                revert with 0, 17
            if sub_c0d8478d < 1:
                revert with 0, 17
            if u < sub_c0d8478d - 1:
                revert with 0, 17
            t = 1
            v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
            while t <= u + -sub_c0d8478d + 1:
                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                    revert with 0, 17
                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                    revert with 0, 17
                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                    if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                        revert with 0, 17
                    if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                        revert with 0, 17
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                    continue 
                if uint16(_2475) * sub_b175c7c7 > !v:
                    revert with 0, 17
                if block.timestamp < mem[_2343 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2343 + 64] and (uint16(_2475) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_2343 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2441 * sub_d23270a3) / 24 * 3600 > !((uint16(_2475) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2475) * sub_b175c7c7 * mem[_2343 + 64]) - (v * mem[_2343 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2441 * sub_d23270a3) / 24 * 3600) + ((uint16(_2475) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2475) * sub_b175c7c7 * mem[_2343 + 64]) - (v * mem[_2343 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2441 * sub_d23270a3) / 24 * 3600) + ((uint16(_2475) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2475) * sub_b175c7c7 * mem[_2343 + 64]) - (v * mem[_2343 + 64]) / 24 * 3600)
                continue 
            if uint16(_2475) * sub_b175c7c7 > !v:
                revert with 0, 17
            if block.timestamp < mem[_2343 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2343 + 64] and (uint16(_2475) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_2343 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2441 * sub_d23270a3) / 24 * 3600 > !((uint16(_2475) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2475) * sub_b175c7c7 * mem[_2343 + 64]) - (v * mem[_2343 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2441 * sub_d23270a3) / 24 * 3600) + ((uint16(_2475) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2475) * sub_b175c7c7 * mem[_2343 + 64]) - (v * mem[_2343 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2441 * sub_d23270a3) / 24 * 3600) + ((uint16(_2475) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2475) * sub_b175c7c7 * mem[_2343 + 64]) - (v * mem[_2343 + 64]) / 24 * 3600)
            continue 
        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                gas gas_remaining wei
               args _1343
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2232 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2237 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_2232] == mem[_2232 + 30 len 2]
        mem[_2237] = mem[_2232]
        mem[_2237 + 32] = mem[_2232 + 32]
        mem[_2237 + 64] = mem[_2232 + 64]
        require mem[_2232 + 96] == mem[_2232 + 108 len 20]
        mem[_2237 + 96] = mem[_2232 + 96]
        _2305 = mem[_2237 + 96]
        if not mem[_2237 + 108 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if not mem[_1368 + 32]:
            _2363 = mem[_1368 + 160]
            staticcall sub_93066351Address.0x8c59295c with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2382 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2400 = mem[_2382]
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1343
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2428 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2442 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2428] == mem[_2428 + 30 len 2]
            mem[_2442] = mem[_2428]
            mem[_2442 + 32] = mem[_2428 + 32]
            mem[_2442 + 64] = mem[_2428 + 64]
            require mem[_2428 + 96] == mem[_2428 + 108 len 20]
            mem[_2442 + 96] = mem[_2428 + 96]
            if _2400 < mem[_2442 + 32]:
                revert with 0, 17
            if uint8(_2363) and _2400 - mem[_2442 + 32] > -1 / uint8(_2363):
                revert with 0, 17
            if s > !((_2400 * uint8(_2363)) - (mem[_2442 + 32] * uint8(_2363))):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (_2400 * uint8(_2363)) - (mem[_2442 + 32] * uint8(_2363))
            continue 
        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                gas gas_remaining wei
               args _1343
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2383 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2401 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_2383] == mem[_2383 + 30 len 2]
        mem[_2401] = mem[_2383]
        mem[_2401 + 32] = mem[_2383 + 32]
        mem[_2401 + 64] = mem[_2383 + 64]
        require mem[_2383 + 96] == mem[_2383 + 108 len 20]
        mem[_2401 + 96] = mem[_2383 + 96]
        _2467 = mem[_2401 + 64]
        if block.timestamp < mem[_2401 + 64]:
            revert with 0, 17
        if block.timestamp - mem[_2401 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2401 + 64]:
            revert with 0, 17
        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2401 + 64] * sub_d23270a3) / 24 * 3600):
            revert with 0, 17
        _2486 = mem[_1368 + 96]
        if mem[_1368 + 126 len 2] and sub_b175c7c7 > -1 / mem[_1368 + 126 len 2]:
            revert with 0, 17
        mem[mem[64] + 4] = address(_2305)
        staticcall sub_f43bc155Address.0x70a08231 with:
                gas gas_remaining wei
               args address(_2305)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2513 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2522 = mem[_2513]
        t = 0
        u = 0
        while t < _2522:
            mem[mem[64] + 4] = address(_2305)
            mem[mem[64] + 36] = t
            staticcall sub_f43bc155Address.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(_2305), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_2685]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2729 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2737 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2737] = mem[_2729]
            mem[_2737 + 32] = mem[_2729 + 32]
            mem[_2737 + 64] = mem[_2729 + 64]
            if 24 * 3600 > !mem[_2737 + 64]:
                revert with 0, 17
            if block.timestamp < mem[_2737 + 64] + (24 * 3600):
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = u
                continue 
            if u == -1:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            t = t + 1
            u = u + 1
            continue 
        if u < sub_c0d8478d:
            if mem[_1368 + 126 len 2] and u > -1 / mem[_1368 + 126 len 2]:
                revert with 0, 17
            if mem[_1368 + 126 len 2] * u and sub_1eca8abe > -1 / mem[_1368 + 126 len 2] * u:
                revert with 0, 17
            if uint16(_2486) * sub_b175c7c7 > !(mem[_1368 + 126 len 2] * u * sub_1eca8abe):
                revert with 0, 17
            if block.timestamp < mem[_2401 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2401 + 64] and (uint16(_2486) * sub_b175c7c7) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe) > -1 / block.timestamp - mem[_2401 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2467 * sub_d23270a3) / 24 * 3600 > !((uint16(_2486) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2486) * sub_b175c7c7 * mem[_2401 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2401 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2467 * sub_d23270a3) / 24 * 3600) + ((uint16(_2486) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2486) * sub_b175c7c7 * mem[_2401 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2401 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2467 * sub_d23270a3) / 24 * 3600) + ((uint16(_2486) * sub_b175c7c7 * block.timestamp) + (mem[_1368 + 126 len 2] * u * sub_1eca8abe * block.timestamp) - (uint16(_2486) * sub_b175c7c7 * mem[_2401 + 64]) - (mem[_1368 + 126 len 2] * u * sub_1eca8abe * mem[_2401 + 64]) / 24 * 3600)
            continue 
        if sub_c0d8478d < 1:
            revert with 0, 17
        if mem[_1368 + 126 len 2] and sub_c0d8478d - 1 > -1 / mem[_1368 + 126 len 2]:
            revert with 0, 17
        if -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]) and sub_1eca8abe > -1 / -mem[_1368 + 126 len 2] + (sub_c0d8478d * mem[_1368 + 126 len 2]):
            revert with 0, 17
        if sub_c0d8478d < 1:
            revert with 0, 17
        if u < sub_c0d8478d - 1:
            revert with 0, 17
        t = 1
        v = (-1 * mem[_1368 + 126 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[_1368 + 126 len 2] * sub_1eca8abe)
        while t <= u + -sub_c0d8478d + 1:
            if sub_1eca8abe and t > -1 / sub_1eca8abe:
                revert with 0, 17
            if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                if mem[_1368 + 126 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[_1368 + 126 len 2]:
                    revert with 0, 17
                if v > !((sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])):
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                t = t + 1
                v = v + (sub_1eca8abe * mem[_1368 + 126 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[_1368 + 126 len 2])
                continue 
            if uint16(_2486) * sub_b175c7c7 > !v:
                revert with 0, 17
            if block.timestamp < mem[_2401 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2401 + 64] and (uint16(_2486) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_2401 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2467 * sub_d23270a3) / 24 * 3600 > !((uint16(_2486) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2486) * sub_b175c7c7 * mem[_2401 + 64]) - (v * mem[_2401 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2467 * sub_d23270a3) / 24 * 3600) + ((uint16(_2486) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2486) * sub_b175c7c7 * mem[_2401 + 64]) - (v * mem[_2401 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2467 * sub_d23270a3) / 24 * 3600) + ((uint16(_2486) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2486) * sub_b175c7c7 * mem[_2401 + 64]) - (v * mem[_2401 + 64]) / 24 * 3600)
            continue 
        if uint16(_2486) * sub_b175c7c7 > !v:
            revert with 0, 17
        if block.timestamp < mem[_2401 + 64]:
            revert with 0, 17
        if block.timestamp - mem[_2401 + 64] and (uint16(_2486) * sub_b175c7c7) + v > -1 / block.timestamp - mem[_2401 + 64]:
            revert with 0, 17
        if (block.timestamp * sub_d23270a3) - (_2467 * sub_d23270a3) / 24 * 3600 > !((uint16(_2486) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2486) * sub_b175c7c7 * mem[_2401 + 64]) - (v * mem[_2401 + 64]) / 24 * 3600):
            revert with 0, 17
        if s > !(((block.timestamp * sub_d23270a3) - (_2467 * sub_d23270a3) / 24 * 3600) + ((uint16(_2486) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2486) * sub_b175c7c7 * mem[_2401 + 64]) - (v * mem[_2401 + 64]) / 24 * 3600)):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((block.timestamp * sub_d23270a3) - (_2467 * sub_d23270a3) / 24 * 3600) + ((uint16(_2486) * sub_b175c7c7 * block.timestamp) + (v * block.timestamp) - (uint16(_2486) * sub_b175c7c7 * mem[_2401 + 64]) - (v * mem[_2401 + 64]) / 24 * 3600)
        continue 
    return s
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
                    _781 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_781]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _810 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _817 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_817] = mem[_810]
                    mem[_817 + 32] = mem[_810 + 32]
                    mem[_817 + 64] = mem[_810 + 64]
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
                    u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                    while t <= s + -sub_c0d8478d + 1:
                        if sub_1eca8abe and t > -1 / sub_1eca8abe:
                            revert with 0, 17
                        if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                            revert with 0, 17
                        if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                            continue 
                        if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !u:
                            revert with 0, 17
                        if block.timestamp < mem[(12 * ceil32(return_data.size)) + 992]:
                            revert with 0, 17
                        if block.timestamp - mem[(12 * ceil32(return_data.size)) + 992] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + u > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 992]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 992]) - (u * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 992]) - (u * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600)
                        return memory
                          from mem[64]
                           len 32
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !u:
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 992]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 992] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + u > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 992]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 992]) - (u * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 992]) - (u * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600)
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
                    _782 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_782]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _811 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _818 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_818] = mem[_811]
                    mem[_818 + 32] = mem[_811 + 32]
                    mem[_818 + 64] = mem[_811 + 64]
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
                    u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                    while t <= s + -sub_c0d8478d + 1:
                        if sub_1eca8abe and t > -1 / sub_1eca8abe:
                            revert with 0, 17
                        if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                            revert with 0, 17
                        if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                            continue 
                        if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !u:
                            revert with 0, 17
                        if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                            revert with 0, 17
                        if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + u > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (u * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (u * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
                        return memory
                          from mem[64]
                           len 32
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !u:
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + u > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (u * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (u * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
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
                _780 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
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
                _858 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_858] == bool(mem[_858])
                if not mem[_858]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _882 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _894 = mem[_882]
                    require mem[_882] == mem[_882 + 12 len 20]
                    if not mem[_882 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _944 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _957 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _974 = mem[_957]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1017 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1040 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1017] == mem[_1017 + 30 len 2]
                        mem[_1040] = mem[_1017]
                        mem[_1040 + 32] = mem[_1017 + 32]
                        mem[_1040 + 64] = mem[_1017 + 64]
                        require mem[_1017 + 96] == mem[_1017 + 108 len 20]
                        mem[_1040 + 96] = mem[_1017 + 96]
                        if _974 < mem[_1040 + 32]:
                            revert with 0, 17
                        if uint8(_944) and _974 - mem[_1040 + 32] > -1 / uint8(_944):
                            revert with 0, 17
                        mem[mem[64]] = (_974 * uint8(_944)) - (mem[_1040 + 32] * uint8(_944))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _958 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _975 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_958] == mem[_958 + 30 len 2]
                        mem[_975] = mem[_958]
                        mem[_975 + 32] = mem[_958 + 32]
                        mem[_975 + 64] = mem[_958 + 64]
                        require mem[_958 + 96] == mem[_958 + 108 len 20]
                        mem[_975 + 96] = mem[_958 + 96]
                        _1095 = mem[_975 + 64]
                        if block.timestamp < mem[_975 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_975 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_975 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_975 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        if 0 and sub_b175c7c7 > -1 / 0:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_894)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_894)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1200 = mem[_1190]
                        idx = 0
                        s = 0
                        while idx < _1200:
                            mem[mem[64] + 4] = address(_894)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_894), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1440 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1440]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1484 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1492 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1492] = mem[_1484]
                            mem[_1492 + 32] = mem[_1484 + 32]
                            mem[_1492 + 64] = mem[_1484 + 64]
                            if 24 * 3600 > !mem[_1492 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1492 + 64] + (24 * 3600):
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
                            if block.timestamp < mem[_975 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_975 + 64] and mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe > -1 / block.timestamp - mem[_975 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1095 * sub_d23270a3) / 24 * 3600 > !((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_975 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1095 * sub_d23270a3) / 24 * 3600) + ((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_975 + 64]) / 24 * 3600)
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
                            u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                                    revert with 0, 17
                                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                        revert with 0, 17
                                    if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                        revert with 0, 17
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                                    continue 
                                if 0 > !u:
                                    revert with 0, 17
                                if block.timestamp < mem[_975 + 64]:
                                    revert with 0, 17
                                if block.timestamp - mem[_975 + 64] and u > -1 / block.timestamp - mem[_975 + 64]:
                                    revert with 0, 17
                                if (block.timestamp * sub_d23270a3) - (_1095 * sub_d23270a3) / 24 * 3600 > !((u * block.timestamp) - (u * mem[_975 + 64]) / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1095 * sub_d23270a3) / 24 * 3600) + ((u * block.timestamp) - (u * mem[_975 + 64]) / 24 * 3600)
                                return memory
                                  from mem[64]
                                   len 32
                            if 0 > !u:
                                revert with 0, 17
                            if block.timestamp < mem[_975 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_975 + 64] and u > -1 / block.timestamp - mem[_975 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1095 * sub_d23270a3) / 24 * 3600 > !((u * block.timestamp) - (u * mem[_975 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1095 * sub_d23270a3) / 24 * 3600) + ((u * block.timestamp) - (u * mem[_975 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _883 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _895 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_883] == mem[_883 + 30 len 2]
                    mem[_895] = mem[_883]
                    mem[_895 + 32] = mem[_883 + 32]
                    mem[_895 + 64] = mem[_883 + 64]
                    require mem[_883 + 96] == mem[_883 + 108 len 20]
                    mem[_895 + 96] = mem[_883 + 96]
                    _949 = mem[_895 + 96]
                    if not mem[_895 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _997 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1018 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1044 = mem[_1018]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1074 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1096 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1074] == mem[_1074 + 30 len 2]
                        mem[_1096] = mem[_1074]
                        mem[_1096 + 32] = mem[_1074 + 32]
                        mem[_1096 + 64] = mem[_1074 + 64]
                        require mem[_1074 + 96] == mem[_1074 + 108 len 20]
                        mem[_1096 + 96] = mem[_1074 + 96]
                        if _1044 < mem[_1096 + 32]:
                            revert with 0, 17
                        if uint8(_997) and _1044 - mem[_1096 + 32] > -1 / uint8(_997):
                            revert with 0, 17
                        mem[mem[64]] = (_1044 * uint8(_997)) - (mem[_1096 + 32] * uint8(_997))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1019 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1045 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1019] == mem[_1019 + 30 len 2]
                        mem[_1045] = mem[_1019]
                        mem[_1045 + 32] = mem[_1019 + 32]
                        mem[_1045 + 64] = mem[_1019 + 64]
                        require mem[_1019 + 96] == mem[_1019 + 108 len 20]
                        mem[_1045 + 96] = mem[_1019 + 96]
                        _1141 = mem[_1045 + 64]
                        if block.timestamp < mem[_1045 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1045 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1045 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1045 + 64] * sub_d23270a3) / 24 * 3600):
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
                        _1209 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1217 = mem[_1209]
                        idx = 0
                        s = 0
                        while idx < _1217:
                            mem[mem[64] + 4] = address(_949)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_949), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1441 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1441]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1485 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1493 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1493] = mem[_1485]
                            mem[_1493 + 32] = mem[_1485 + 32]
                            mem[_1493 + 64] = mem[_1485 + 64]
                            if 24 * 3600 > !mem[_1493 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1493 + 64] + (24 * 3600):
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
                            if block.timestamp < mem[_1045 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1045 + 64] and mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe > -1 / block.timestamp - mem[_1045 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1141 * sub_d23270a3) / 24 * 3600 > !((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1045 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1141 * sub_d23270a3) / 24 * 3600) + ((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1045 + 64]) / 24 * 3600)
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
                            u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                                    revert with 0, 17
                                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                        revert with 0, 17
                                    if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                        revert with 0, 17
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                                    continue 
                                if 0 > !u:
                                    revert with 0, 17
                                if block.timestamp < mem[_1045 + 64]:
                                    revert with 0, 17
                                if block.timestamp - mem[_1045 + 64] and u > -1 / block.timestamp - mem[_1045 + 64]:
                                    revert with 0, 17
                                if (block.timestamp * sub_d23270a3) - (_1141 * sub_d23270a3) / 24 * 3600 > !((u * block.timestamp) - (u * mem[_1045 + 64]) / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1141 * sub_d23270a3) / 24 * 3600) + ((u * block.timestamp) - (u * mem[_1045 + 64]) / 24 * 3600)
                                return memory
                                  from mem[64]
                                   len 32
                            if 0 > !u:
                                revert with 0, 17
                            if block.timestamp < mem[_1045 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1045 + 64] and u > -1 / block.timestamp - mem[_1045 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1141 * sub_d23270a3) / 24 * 3600 > !((u * block.timestamp) - (u * mem[_1045 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1141 * sub_d23270a3) / 24 * 3600) + ((u * block.timestamp) - (u * mem[_1045 + 64]) / 24 * 3600)
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
                _866 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_866] == bool(mem[_866])
                if not mem[_866]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _906 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _912 = mem[_906]
                    require mem[_906] == mem[_906 + 12 len 20]
                    if not mem[_906 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _968 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _992 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1024 = mem[_992]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1060 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1076 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1060] == mem[_1060 + 30 len 2]
                        mem[_1076] = mem[_1060]
                        mem[_1076 + 32] = mem[_1060 + 32]
                        mem[_1076 + 64] = mem[_1060 + 64]
                        require mem[_1060 + 96] == mem[_1060 + 108 len 20]
                        mem[_1076 + 96] = mem[_1060 + 96]
                        if _1024 < mem[_1076 + 32]:
                            revert with 0, 17
                        if uint8(_968) and _1024 - mem[_1076 + 32] > -1 / uint8(_968):
                            revert with 0, 17
                        mem[mem[64]] = (_1024 * uint8(_968)) - (mem[_1076 + 32] * uint8(_968))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1025 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_993] == mem[_993 + 30 len 2]
                        mem[_1025] = mem[_993]
                        mem[_1025 + 32] = mem[_993 + 32]
                        mem[_1025 + 64] = mem[_993 + 64]
                        require mem[_993 + 96] == mem[_993 + 108 len 20]
                        mem[_1025 + 96] = mem[_993 + 96]
                        _1119 = mem[_1025 + 64]
                        if block.timestamp < mem[_1025 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1025 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1025 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1025 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        _1172 = mem[(6 * ceil32(return_data.size)) + 672]
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_912)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_912)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1204 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1212 = mem[_1204]
                        idx = 0
                        s = 0
                        while idx < _1212:
                            mem[mem[64] + 4] = address(_912)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_912), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1438 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1438]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1482 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1490 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1490] = mem[_1482]
                            mem[_1490 + 32] = mem[_1482 + 32]
                            mem[_1490 + 64] = mem[_1482 + 64]
                            if 24 * 3600 > !mem[_1490 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1490 + 64] + (24 * 3600):
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
                            if uint16(_1172) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1025 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1025 + 64] and (uint16(_1172) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[_1025 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1119 * sub_d23270a3) / 24 * 3600 > !((uint16(_1172) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1172) * sub_b175c7c7 * mem[_1025 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1025 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1119 * sub_d23270a3) / 24 * 3600) + ((uint16(_1172) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1172) * sub_b175c7c7 * mem[_1025 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1025 + 64]) / 24 * 3600)
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
                            u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                                    revert with 0, 17
                                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                        revert with 0, 17
                                    if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                        revert with 0, 17
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                                    continue 
                                if uint16(_1172) * sub_b175c7c7 > !u:
                                    revert with 0, 17
                                if block.timestamp < mem[_1025 + 64]:
                                    revert with 0, 17
                                if block.timestamp - mem[_1025 + 64] and (uint16(_1172) * sub_b175c7c7) + u > -1 / block.timestamp - mem[_1025 + 64]:
                                    revert with 0, 17
                                if (block.timestamp * sub_d23270a3) - (_1119 * sub_d23270a3) / 24 * 3600 > !((uint16(_1172) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1172) * sub_b175c7c7 * mem[_1025 + 64]) - (u * mem[_1025 + 64]) / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1119 * sub_d23270a3) / 24 * 3600) + ((uint16(_1172) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1172) * sub_b175c7c7 * mem[_1025 + 64]) - (u * mem[_1025 + 64]) / 24 * 3600)
                                return memory
                                  from mem[64]
                                   len 32
                            if uint16(_1172) * sub_b175c7c7 > !u:
                                revert with 0, 17
                            if block.timestamp < mem[_1025 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1025 + 64] and (uint16(_1172) * sub_b175c7c7) + u > -1 / block.timestamp - mem[_1025 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1119 * sub_d23270a3) / 24 * 3600 > !((uint16(_1172) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1172) * sub_b175c7c7 * mem[_1025 + 64]) - (u * mem[_1025 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1119 * sub_d23270a3) / 24 * 3600) + ((uint16(_1172) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1172) * sub_b175c7c7 * mem[_1025 + 64]) - (u * mem[_1025 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _907 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _913 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_907] == mem[_907 + 30 len 2]
                    mem[_913] = mem[_907]
                    mem[_913 + 32] = mem[_907 + 32]
                    mem[_913 + 64] = mem[_907 + 64]
                    require mem[_907 + 96] == mem[_907 + 108 len 20]
                    mem[_913 + 96] = mem[_907 + 96]
                    _973 = mem[_913 + 96]
                    if not mem[_913 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _1035 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1061 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1080 = mem[_1061]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1112 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1120 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1112] == mem[_1112 + 30 len 2]
                        mem[_1120] = mem[_1112]
                        mem[_1120 + 32] = mem[_1112 + 32]
                        mem[_1120 + 64] = mem[_1112 + 64]
                        require mem[_1112 + 96] == mem[_1112 + 108 len 20]
                        mem[_1120 + 96] = mem[_1112 + 96]
                        if _1080 < mem[_1120 + 32]:
                            revert with 0, 17
                        if uint8(_1035) and _1080 - mem[_1120 + 32] > -1 / uint8(_1035):
                            revert with 0, 17
                        mem[mem[64]] = (_1080 * uint8(_1035)) - (mem[_1120 + 32] * uint8(_1035))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1062 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1081 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1062] == mem[_1062 + 30 len 2]
                        mem[_1081] = mem[_1062]
                        mem[_1081 + 32] = mem[_1062 + 32]
                        mem[_1081 + 64] = mem[_1062 + 64]
                        require mem[_1062 + 96] == mem[_1062 + 108 len 20]
                        mem[_1081 + 96] = mem[_1062 + 96]
                        _1156 = mem[_1081 + 64]
                        if block.timestamp < mem[_1081 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1081 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1081 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1081 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        _1189 = mem[(6 * ceil32(return_data.size)) + 672]
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_973)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_973)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1220 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1230 = mem[_1220]
                        idx = 0
                        s = 0
                        while idx < _1230:
                            mem[mem[64] + 4] = address(_973)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_973), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1439 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1439]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1483 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1491 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1491] = mem[_1483]
                            mem[_1491 + 32] = mem[_1483 + 32]
                            mem[_1491 + 64] = mem[_1483 + 64]
                            if 24 * 3600 > !mem[_1491 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1491 + 64] + (24 * 3600):
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
                            if uint16(_1189) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1081 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1081 + 64] and (uint16(_1189) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[_1081 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1156 * sub_d23270a3) / 24 * 3600 > !((uint16(_1189) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1189) * sub_b175c7c7 * mem[_1081 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1081 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1156 * sub_d23270a3) / 24 * 3600) + ((uint16(_1189) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1189) * sub_b175c7c7 * mem[_1081 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1081 + 64]) / 24 * 3600)
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
                            u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                                    revert with 0, 17
                                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                        revert with 0, 17
                                    if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                        revert with 0, 17
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                                    continue 
                                if uint16(_1189) * sub_b175c7c7 > !u:
                                    revert with 0, 17
                                if block.timestamp < mem[_1081 + 64]:
                                    revert with 0, 17
                                if block.timestamp - mem[_1081 + 64] and (uint16(_1189) * sub_b175c7c7) + u > -1 / block.timestamp - mem[_1081 + 64]:
                                    revert with 0, 17
                                if (block.timestamp * sub_d23270a3) - (_1156 * sub_d23270a3) / 24 * 3600 > !((uint16(_1189) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1189) * sub_b175c7c7 * mem[_1081 + 64]) - (u * mem[_1081 + 64]) / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1156 * sub_d23270a3) / 24 * 3600) + ((uint16(_1189) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1189) * sub_b175c7c7 * mem[_1081 + 64]) - (u * mem[_1081 + 64]) / 24 * 3600)
                                return memory
                                  from mem[64]
                                   len 32
                            if uint16(_1189) * sub_b175c7c7 > !u:
                                revert with 0, 17
                            if block.timestamp < mem[_1081 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1081 + 64] and (uint16(_1189) * sub_b175c7c7) + u > -1 / block.timestamp - mem[_1081 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1156 * sub_d23270a3) / 24 * 3600 > !((uint16(_1189) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1189) * sub_b175c7c7 * mem[_1081 + 64]) - (u * mem[_1081 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1156 * sub_d23270a3) / 24 * 3600) + ((uint16(_1189) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1189) * sub_b175c7c7 * mem[_1081 + 64]) - (u * mem[_1081 + 64]) / 24 * 3600)
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
                    _784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_784]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _814 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _820 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_820] = mem[_814]
                    mem[_820 + 32] = mem[_814 + 32]
                    mem[_820 + 64] = mem[_814 + 64]
                    if 24 * 3600 > !mem[_820 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_820 + 64] + (24 * 3600):
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
                    u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                    while t <= s + -sub_c0d8478d + 1:
                        if sub_1eca8abe and t > -1 / sub_1eca8abe:
                            revert with 0, 17
                        if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                            revert with 0, 17
                        if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                            continue 
                        if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !u:
                            revert with 0, 17
                        if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                            revert with 0, 17
                        if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + u > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (u * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (u * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
                        return memory
                          from mem[64]
                           len 32
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !u:
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + u > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (u * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1120]) - (u * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
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
                    _785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_785]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _821 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_821] = mem[_815]
                    mem[_821 + 32] = mem[_815 + 32]
                    mem[_821 + 64] = mem[_815 + 64]
                    if 24 * 3600 > !mem[_821 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_821 + 64] + (24 * 3600):
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
                    u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                    while t <= s + -sub_c0d8478d + 1:
                        if sub_1eca8abe and t > -1 / sub_1eca8abe:
                            revert with 0, 17
                        if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                            revert with 0, 17
                        if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                            if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                revert with 0, 17
                            if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                revert with 0, 17
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                            continue 
                        if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !u:
                            revert with 0, 17
                        if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1248]:
                            revert with 0, 17
                        if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + u > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1248]) - (u * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1248]) - (u * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600)
                        return memory
                          from mem[64]
                           len 32
                    if uint16(ext_call.return_data[96]) * sub_b175c7c7 > !u:
                        revert with 0, 17
                    if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1248]:
                        revert with 0, 17
                    if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248] and (uint16(ext_call.return_data[96]) * sub_b175c7c7) + u > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1248]) - (u * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((uint16(ext_call.return_data[96]) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(ext_call.return_data[96]) * sub_b175c7c7 * mem[(12 * ceil32(return_data.size)) + 1248]) - (u * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600)
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
                _783 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
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
                _859 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_859] == bool(mem[_859])
                if not mem[_859]:
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
                    _902 = mem[_884]
                    require mem[_884] == mem[_884 + 12 len 20]
                    if not mem[_884 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _950 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _960 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _986 = mem[_960]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1021 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1054 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1021] == mem[_1021 + 30 len 2]
                        mem[_1054] = mem[_1021]
                        mem[_1054 + 32] = mem[_1021 + 32]
                        mem[_1054 + 64] = mem[_1021 + 64]
                        require mem[_1021 + 96] == mem[_1021 + 108 len 20]
                        mem[_1054 + 96] = mem[_1021 + 96]
                        if _986 < mem[_1054 + 32]:
                            revert with 0, 17
                        if uint8(_950) and _986 - mem[_1054 + 32] > -1 / uint8(_950):
                            revert with 0, 17
                        mem[mem[64]] = (_986 * uint8(_950)) - (mem[_1054 + 32] * uint8(_950))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _961 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _987 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_961] == mem[_961 + 30 len 2]
                        mem[_987] = mem[_961]
                        mem[_987 + 32] = mem[_961 + 32]
                        mem[_987 + 64] = mem[_961 + 64]
                        require mem[_961 + 96] == mem[_961 + 108 len 20]
                        mem[_987 + 96] = mem[_961 + 96]
                        _1107 = mem[_987 + 64]
                        if block.timestamp < mem[_987 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_987 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_987 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_987 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        if 0 and sub_b175c7c7 > -1 / 0:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_902)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_902)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1193 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1203 = mem[_1193]
                        idx = 0
                        s = 0
                        while idx < _1203:
                            mem[mem[64] + 4] = address(_902)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_902), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1444]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1488 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1496 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1496] = mem[_1488]
                            mem[_1496 + 32] = mem[_1488 + 32]
                            mem[_1496 + 64] = mem[_1488 + 64]
                            if 24 * 3600 > !mem[_1496 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1496 + 64] + (24 * 3600):
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
                            if block.timestamp < mem[_987 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_987 + 64] and mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe > -1 / block.timestamp - mem[_987 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1107 * sub_d23270a3) / 24 * 3600 > !((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_987 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1107 * sub_d23270a3) / 24 * 3600) + ((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_987 + 64]) / 24 * 3600)
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
                            u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                                    revert with 0, 17
                                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                        revert with 0, 17
                                    if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                        revert with 0, 17
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                                    continue 
                                if 0 > !u:
                                    revert with 0, 17
                                if block.timestamp < mem[_987 + 64]:
                                    revert with 0, 17
                                if block.timestamp - mem[_987 + 64] and u > -1 / block.timestamp - mem[_987 + 64]:
                                    revert with 0, 17
                                if (block.timestamp * sub_d23270a3) - (_1107 * sub_d23270a3) / 24 * 3600 > !((u * block.timestamp) - (u * mem[_987 + 64]) / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1107 * sub_d23270a3) / 24 * 3600) + ((u * block.timestamp) - (u * mem[_987 + 64]) / 24 * 3600)
                                return memory
                                  from mem[64]
                                   len 32
                            if 0 > !u:
                                revert with 0, 17
                            if block.timestamp < mem[_987 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_987 + 64] and u > -1 / block.timestamp - mem[_987 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1107 * sub_d23270a3) / 24 * 3600 > !((u * block.timestamp) - (u * mem[_987 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1107 * sub_d23270a3) / 24 * 3600) + ((u * block.timestamp) - (u * mem[_987 + 64]) / 24 * 3600)
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
                    _903 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_885] == mem[_885 + 30 len 2]
                    mem[_903] = mem[_885]
                    mem[_903 + 32] = mem[_885 + 32]
                    mem[_903 + 64] = mem[_885 + 64]
                    require mem[_885 + 96] == mem[_885 + 108 len 20]
                    mem[_903 + 96] = mem[_885 + 96]
                    _955 = mem[_903 + 96]
                    if not mem[_903 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _1009 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1022 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1058 = mem[_1022]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1075 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1108 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1075] == mem[_1075 + 30 len 2]
                        mem[_1108] = mem[_1075]
                        mem[_1108 + 32] = mem[_1075 + 32]
                        mem[_1108 + 64] = mem[_1075 + 64]
                        require mem[_1075 + 96] == mem[_1075 + 108 len 20]
                        mem[_1108 + 96] = mem[_1075 + 96]
                        if _1058 < mem[_1108 + 32]:
                            revert with 0, 17
                        if uint8(_1009) and _1058 - mem[_1108 + 32] > -1 / uint8(_1009):
                            revert with 0, 17
                        mem[mem[64]] = (_1058 * uint8(_1009)) - (mem[_1108 + 32] * uint8(_1009))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1023 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1059 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1023] == mem[_1023 + 30 len 2]
                        mem[_1059] = mem[_1023]
                        mem[_1059 + 32] = mem[_1023 + 32]
                        mem[_1059 + 64] = mem[_1023 + 64]
                        require mem[_1023 + 96] == mem[_1023 + 108 len 20]
                        mem[_1059 + 96] = mem[_1023 + 96]
                        _1149 = mem[_1059 + 64]
                        if block.timestamp < mem[_1059 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1059 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1059 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1059 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        if 0 and sub_b175c7c7 > -1 / 0:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_955)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_955)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1211 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1219 = mem[_1211]
                        idx = 0
                        s = 0
                        while idx < _1219:
                            mem[mem[64] + 4] = address(_955)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_955), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1445 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1445]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1489 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1497 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1497] = mem[_1489]
                            mem[_1497 + 32] = mem[_1489 + 32]
                            mem[_1497 + 64] = mem[_1489 + 64]
                            if 24 * 3600 > !mem[_1497 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1497 + 64] + (24 * 3600):
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
                            if block.timestamp < mem[_1059 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1059 + 64] and mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe > -1 / block.timestamp - mem[_1059 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1149 * sub_d23270a3) / 24 * 3600 > !((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1059 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1149 * sub_d23270a3) / 24 * 3600) + ((mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1059 + 64]) / 24 * 3600)
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
                            u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                                    revert with 0, 17
                                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                        revert with 0, 17
                                    if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                        revert with 0, 17
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                                    continue 
                                if 0 > !u:
                                    revert with 0, 17
                                if block.timestamp < mem[_1059 + 64]:
                                    revert with 0, 17
                                if block.timestamp - mem[_1059 + 64] and u > -1 / block.timestamp - mem[_1059 + 64]:
                                    revert with 0, 17
                                if (block.timestamp * sub_d23270a3) - (_1149 * sub_d23270a3) / 24 * 3600 > !((u * block.timestamp) - (u * mem[_1059 + 64]) / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1149 * sub_d23270a3) / 24 * 3600) + ((u * block.timestamp) - (u * mem[_1059 + 64]) / 24 * 3600)
                                return memory
                                  from mem[64]
                                   len 32
                            if 0 > !u:
                                revert with 0, 17
                            if block.timestamp < mem[_1059 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1059 + 64] and u > -1 / block.timestamp - mem[_1059 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1149 * sub_d23270a3) / 24 * 3600 > !((u * block.timestamp) - (u * mem[_1059 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1149 * sub_d23270a3) / 24 * 3600) + ((u * block.timestamp) - (u * mem[_1059 + 64]) / 24 * 3600)
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
                _867 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_867] == bool(mem[_867])
                if not mem[_867]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _909 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _914 = mem[_909]
                    require mem[_909] == mem[_909 + 12 len 20]
                    if not mem[_909 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _980 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1004 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1028 = mem[_1004]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1067 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1082 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1067] == mem[_1067 + 30 len 2]
                        mem[_1082] = mem[_1067]
                        mem[_1082 + 32] = mem[_1067 + 32]
                        mem[_1082 + 64] = mem[_1067 + 64]
                        require mem[_1067 + 96] == mem[_1067 + 108 len 20]
                        mem[_1082 + 96] = mem[_1067 + 96]
                        if _1028 < mem[_1082 + 32]:
                            revert with 0, 17
                        if uint8(_980) and _1028 - mem[_1082 + 32] > -1 / uint8(_980):
                            revert with 0, 17
                        mem[mem[64]] = (_1028 * uint8(_980)) - (mem[_1082 + 32] * uint8(_980))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1005 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1029 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1005] == mem[_1005 + 30 len 2]
                        mem[_1029] = mem[_1005]
                        mem[_1029 + 32] = mem[_1005 + 32]
                        mem[_1029 + 64] = mem[_1005 + 64]
                        require mem[_1005 + 96] == mem[_1005 + 108 len 20]
                        mem[_1029 + 96] = mem[_1005 + 96]
                        _1129 = mem[_1029 + 64]
                        if block.timestamp < mem[_1029 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1029 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1029 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1029 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        _1173 = mem[(6 * ceil32(return_data.size)) + 672]
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_914)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_914)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1206 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1214 = mem[_1206]
                        idx = 0
                        s = 0
                        while idx < _1214:
                            mem[mem[64] + 4] = address(_914)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_914), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1442 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1442]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1486 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1494 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1494] = mem[_1486]
                            mem[_1494 + 32] = mem[_1486 + 32]
                            mem[_1494 + 64] = mem[_1486 + 64]
                            if 24 * 3600 > !mem[_1494 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1494 + 64] + (24 * 3600):
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
                            if uint16(_1173) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1029 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1029 + 64] and (uint16(_1173) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[_1029 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1129 * sub_d23270a3) / 24 * 3600 > !((uint16(_1173) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1173) * sub_b175c7c7 * mem[_1029 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1029 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1129 * sub_d23270a3) / 24 * 3600) + ((uint16(_1173) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1173) * sub_b175c7c7 * mem[_1029 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1029 + 64]) / 24 * 3600)
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
                            u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                                    revert with 0, 17
                                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                        revert with 0, 17
                                    if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                        revert with 0, 17
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                                    continue 
                                if uint16(_1173) * sub_b175c7c7 > !u:
                                    revert with 0, 17
                                if block.timestamp < mem[_1029 + 64]:
                                    revert with 0, 17
                                if block.timestamp - mem[_1029 + 64] and (uint16(_1173) * sub_b175c7c7) + u > -1 / block.timestamp - mem[_1029 + 64]:
                                    revert with 0, 17
                                if (block.timestamp * sub_d23270a3) - (_1129 * sub_d23270a3) / 24 * 3600 > !((uint16(_1173) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1173) * sub_b175c7c7 * mem[_1029 + 64]) - (u * mem[_1029 + 64]) / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1129 * sub_d23270a3) / 24 * 3600) + ((uint16(_1173) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1173) * sub_b175c7c7 * mem[_1029 + 64]) - (u * mem[_1029 + 64]) / 24 * 3600)
                                return memory
                                  from mem[64]
                                   len 32
                            if uint16(_1173) * sub_b175c7c7 > !u:
                                revert with 0, 17
                            if block.timestamp < mem[_1029 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1029 + 64] and (uint16(_1173) * sub_b175c7c7) + u > -1 / block.timestamp - mem[_1029 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1129 * sub_d23270a3) / 24 * 3600 > !((uint16(_1173) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1173) * sub_b175c7c7 * mem[_1029 + 64]) - (u * mem[_1029 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1129 * sub_d23270a3) / 24 * 3600) + ((uint16(_1173) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1173) * sub_b175c7c7 * mem[_1029 + 64]) - (u * mem[_1029 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _910 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _915 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_910] == mem[_910 + 30 len 2]
                    mem[_915] = mem[_910]
                    mem[_915 + 32] = mem[_910 + 32]
                    mem[_915 + 64] = mem[_910 + 64]
                    require mem[_910 + 96] == mem[_910 + 108 len 20]
                    mem[_915 + 96] = mem[_910 + 96]
                    _985 = mem[_915 + 96]
                    if not mem[_915 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _1049 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1068 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1086 = mem[_1068]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1114 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1130 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1114] == mem[_1114 + 30 len 2]
                        mem[_1130] = mem[_1114]
                        mem[_1130 + 32] = mem[_1114 + 32]
                        mem[_1130 + 64] = mem[_1114 + 64]
                        require mem[_1114 + 96] == mem[_1114 + 108 len 20]
                        mem[_1130 + 96] = mem[_1114 + 96]
                        if _1086 < mem[_1130 + 32]:
                            revert with 0, 17
                        if uint8(_1049) and _1086 - mem[_1130 + 32] > -1 / uint8(_1049):
                            revert with 0, 17
                        mem[mem[64]] = (_1086 * uint8(_1049)) - (mem[_1130 + 32] * uint8(_1049))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1069 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1087 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1069] == mem[_1069 + 30 len 2]
                        mem[_1087] = mem[_1069]
                        mem[_1087 + 32] = mem[_1069 + 32]
                        mem[_1087 + 64] = mem[_1069 + 64]
                        require mem[_1069 + 96] == mem[_1069 + 108 len 20]
                        mem[_1087 + 96] = mem[_1069 + 96]
                        _1161 = mem[_1087 + 64]
                        if block.timestamp < mem[_1087 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1087 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1087 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1087 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        _1192 = mem[(6 * ceil32(return_data.size)) + 672]
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_985)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_985)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1223 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1232 = mem[_1223]
                        idx = 0
                        s = 0
                        while idx < _1232:
                            mem[mem[64] + 4] = address(_985)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_985), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1443]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1487 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1495 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1495] = mem[_1487]
                            mem[_1495 + 32] = mem[_1487 + 32]
                            mem[_1495 + 64] = mem[_1487 + 64]
                            if 24 * 3600 > !mem[_1495 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1495 + 64] + (24 * 3600):
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
                            if uint16(_1192) * sub_b175c7c7 > !(mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe):
                                revert with 0, 17
                            if block.timestamp < mem[_1087 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1087 + 64] and (uint16(_1192) * sub_b175c7c7) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe) > -1 / block.timestamp - mem[_1087 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1161 * sub_d23270a3) / 24 * 3600 > !((uint16(_1192) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1192) * sub_b175c7c7 * mem[_1087 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1087 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1161 * sub_d23270a3) / 24 * 3600) + ((uint16(_1192) * sub_b175c7c7 * block.timestamp) + (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * block.timestamp) - (uint16(_1192) * sub_b175c7c7 * mem[_1087 + 64]) - (mem[(6 * ceil32(return_data.size)) + 702 len 2] * s * sub_1eca8abe * mem[_1087 + 64]) / 24 * 3600)
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
                            u = (-1 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe) + (sub_c0d8478d * mem[(6 * ceil32(return_data.size)) + 702 len 2] * sub_1eca8abe)
                            while t <= s + -sub_c0d8478d + 1:
                                if sub_1eca8abe and t > -1 / sub_1eca8abe:
                                    revert with 0, 17
                                if sub_1eca8abe * t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                    revert with 0, 17
                                if sub_1eca8abe >= 5 * sub_1eca8abe * t / 100:
                                    if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_1eca8abe - (5 * sub_1eca8abe * t / 100) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                                        revert with 0, 17
                                    if u > !((sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])):
                                        revert with 0, 17
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    u = u + (sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) - (5 * sub_1eca8abe * t / 100 * mem[(6 * ceil32(return_data.size)) + 702 len 2])
                                    continue 
                                if uint16(_1192) * sub_b175c7c7 > !u:
                                    revert with 0, 17
                                if block.timestamp < mem[_1087 + 64]:
                                    revert with 0, 17
                                if block.timestamp - mem[_1087 + 64] and (uint16(_1192) * sub_b175c7c7) + u > -1 / block.timestamp - mem[_1087 + 64]:
                                    revert with 0, 17
                                if (block.timestamp * sub_d23270a3) - (_1161 * sub_d23270a3) / 24 * 3600 > !((uint16(_1192) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1192) * sub_b175c7c7 * mem[_1087 + 64]) - (u * mem[_1087 + 64]) / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1161 * sub_d23270a3) / 24 * 3600) + ((uint16(_1192) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1192) * sub_b175c7c7 * mem[_1087 + 64]) - (u * mem[_1087 + 64]) / 24 * 3600)
                                return memory
                                  from mem[64]
                                   len 32
                            if uint16(_1192) * sub_b175c7c7 > !u:
                                revert with 0, 17
                            if block.timestamp < mem[_1087 + 64]:
                                revert with 0, 17
                            if block.timestamp - mem[_1087 + 64] and (uint16(_1192) * sub_b175c7c7) + u > -1 / block.timestamp - mem[_1087 + 64]:
                                revert with 0, 17
                            if (block.timestamp * sub_d23270a3) - (_1161 * sub_d23270a3) / 24 * 3600 > !((uint16(_1192) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1192) * sub_b175c7c7 * mem[_1087 + 64]) - (u * mem[_1087 + 64]) / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1161 * sub_d23270a3) / 24 * 3600) + ((uint16(_1192) * sub_b175c7c7 * block.timestamp) + (u * block.timestamp) - (uint16(_1192) * sub_b175c7c7 * mem[_1087 + 64]) - (u * mem[_1087 + 64]) / 24 * 3600)
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
