contract main {




// =====================  Runtime code  =====================


#
#  - sub_a578fe62(?)
#  - sub_cac404a4(?)
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
mapping of uint8 stor31;
mapping of uint8 stor32;
mapping of uint8 stor33;
mapping of uint8 stor34;

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
    stor31[address(arg1)] = 1
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
    stor31[address(arg1)] = 0
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
    call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
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

function addToPresale(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 32
        stor32[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeFromPresale(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 32
        stor32[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            if arg1 and sub_21af9534 > -1 / arg1:
                revert with 0, 17
            require ext_code.size(sub_f3211b5eAddress)
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 * sub_21af9534
    else:
        if sub_221947ca < sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88:
            revert with 0, 17
        if sub_221947ca - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88) >= sub_21af9534:
            if arg1 and sub_221947ca - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88) > -1 / arg1:
                revert with 0, 17
            require ext_code.size(sub_f3211b5eAddress)
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (sub_221947ca * arg1) - (sub_221947ca * sub_7f75077a / 100 * block.timestamp - sub_b85fd1c0 / sub_01f47d88 * arg1)
        else:
            if arg1 and sub_21af9534 > -1 / arg1:
                revert with 0, 17
            require ext_code.size(sub_f3211b5eAddress)
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
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
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            if arg1 and sub_de7b4551 > -1 / arg1:
                revert with 0, 17
            require ext_code.size(sub_f3211b5eAddress)
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 * sub_de7b4551
    else:
        if sub_3b13ec6b < sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88:
            revert with 0, 17
        if sub_3b13ec6b - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88) >= sub_de7b4551:
            if arg1 and sub_3b13ec6b - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88) > -1 / arg1:
                revert with 0, 17
            require ext_code.size(sub_f3211b5eAddress)
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (sub_3b13ec6b * arg1) - (sub_3b13ec6b * sub_7f75077a / 100 * block.timestamp - sub_bc3cef25 / sub_01f47d88 * arg1)
        else:
            if arg1 and sub_de7b4551 > -1 / arg1:
                revert with 0, 17
            require ext_code.size(sub_f3211b5eAddress)
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
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
        if not stor32[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You are not on the whitelist'
        if stor33[msg.sender] > !arg1:
            revert with 0, 17
        if stor33[msg.sender] + arg1 > sub_9dd85f17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You cannot mint more GEN0 during pre-sale'
    else:
        if not uint8(stor8.field_184):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: GEN0 sale has not started yet'
        if not uint8(stor8.field_160):
            if stor34[msg.sender] > !arg1:
                revert with 0, 17
            if stor34[msg.sender] + arg1 > sub_508881c1:
                revert with 0, 'Game: You cannot mint more GEN0'
        else:
            if not stor32[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You are not on the whitelist'
            if stor33[msg.sender] > !arg1:
                revert with 0, 17
            if stor33[msg.sender] + arg1 > sub_9dd85f17:
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
            mem[32] = 34
            if stor34[msg.sender] == 255:
                revert with 0, 17
            stor34[msg.sender] = uint8(stor34[msg.sender] + 1)
        else:
            mem[32] = 33
            if stor33[msg.sender] == 255:
                revert with 0, 17
            stor33[msg.sender] = uint8(stor33[msg.sender] + 1)
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
        call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
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
                staticcall randomizerAddress.0x6fc5a2d6 with:
                        gas gas_remaining wei
                       args (uint16(s) + 1 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _293 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _305 = mem[_293]
                if not mem[_293] % 2048 >> 245 % 10:
                    mem[mem[64] + 4] = Mask(112, 0, mem[_293]) >> 144
                    staticcall sub_93066351Address.0x394ffebd with:
                            gas gas_remaining wei
                           args (Mask(256, -144, _305) << 144)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _341 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _359 = mem[_341]
                    require mem[_341] == mem[_341 + 12 len 20]
                    if mem[_341 + 12 len 20]:
                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                        mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_359)
                        mem[mem[64] + 36] = 0
                        require ext_code.size(sub_809deb63Address)
                        call sub_809deb63Address.mint(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args address(_359), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.sender == address(_359):
                        else:
                            emit 0xfcd9ef97: msg.sender, address(_359), uint16(uint16(s) + 1)
                        if sub_dc1ce9ac:
                            if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                revert with 0, 17
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
                        s = _305
                        s = _359
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
                s = _305
                s = msg.sender
                s = uint16(s) + 1
                continue 
            sub_e625866a = block.timestamp
            _268 = mem[64]
            mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _274 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 68
            while idx < _274:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_809deb63Address)
            call sub_809deb63Address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _268 + (32 * _274) + -mem[64] + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _502 = mem[64]
            mem[mem[64]] = 32
            _508 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 64
            while idx < _508:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit 0x9dcf1c02: mem[mem[64] len _502 + (32 * _508) + -mem[64] + 64], msg.sender
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
                staticcall randomizerAddress.0x6fc5a2d6 with:
                        gas gas_remaining wei
                       args (uint16(s) + 1 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _307 = mem[_295]
                if not mem[_295] % 2048 >> 245 % 10:
                    mem[mem[64] + 4] = Mask(112, 0, mem[_295]) >> 144
                    staticcall sub_93066351Address.0x394ffebd with:
                            gas gas_remaining wei
                           args (Mask(256, -144, _307) << 144)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _343 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _361 = mem[_343]
                    require mem[_343] == mem[_343 + 12 len 20]
                    if mem[_343 + 12 len 20]:
                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                        mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_361)
                        mem[mem[64] + 36] = 0
                        require ext_code.size(sub_809deb63Address)
                        call sub_809deb63Address.mint(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args address(_361), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if msg.sender == address(_361):
                        else:
                            emit 0xfcd9ef97: msg.sender, address(_361), uint16(uint16(s) + 1)
                        if sub_dc1ce9ac:
                            if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                revert with 0, 17
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
                        s = _307
                        s = _361
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
                s = _307
                s = msg.sender
                s = uint16(s) + 1
                continue 
            sub_e625866a = block.timestamp
            mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _275 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 68
            while idx < _275:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_809deb63Address)
            call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len (32 * _275) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _503 = mem[64]
            mem[mem[64]] = 32
            _509 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 64
            while idx < _509:
                mem[t] = mem[s + 30 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit 0x9dcf1c02: mem[mem[64] len _503 + (32 * _509) + -mem[64] + 64], msg.sender
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
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
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
                    staticcall randomizerAddress.0x6fc5a2d6 with:
                            gas gas_remaining wei
                           args (uint16(s) + 1 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _309 = mem[_297]
                    if not mem[_297] % 2048 >> 245 % 10:
                        mem[mem[64] + 4] = Mask(112, 0, mem[_297]) >> 144
                        staticcall sub_93066351Address.0x394ffebd with:
                                gas gas_remaining wei
                               args (Mask(256, -144, _309) << 144)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _345 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _363 = mem[_345]
                        require mem[_345] == mem[_345 + 12 len 20]
                        if mem[_345 + 12 len 20]:
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                            mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_363)
                            mem[mem[64] + 36] = 0
                            require ext_code.size(sub_809deb63Address)
                            call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args address(_363), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.sender == address(_363):
                            else:
                                emit 0xfcd9ef97: msg.sender, address(_363), uint16(uint16(s) + 1)
                            if sub_dc1ce9ac:
                                if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                    revert with 0, 17
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
                            s = _309
                            s = _363
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
                    s = _309
                    s = msg.sender
                    s = uint16(s) + 1
                    continue 
                sub_e625866a = block.timestamp
                _270 = mem[64]
                mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _276 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 68
                while idx < _276:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _270 + (32 * _276) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _504 = mem[64]
                mem[mem[64]] = 32
                _510 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 64
                while idx < _510:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0x9dcf1c02: mem[mem[64] len _504 + (32 * _510) + -mem[64] + 64], msg.sender
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
                    staticcall randomizerAddress.0x6fc5a2d6 with:
                            gas gas_remaining wei
                           args (uint16(s) + 1 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _299 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _311 = mem[_299]
                    if not mem[_299] % 2048 >> 245 % 10:
                        mem[mem[64] + 4] = Mask(112, 0, mem[_299]) >> 144
                        staticcall sub_93066351Address.0x394ffebd with:
                                gas gas_remaining wei
                               args (Mask(256, -144, _311) << 144)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _365 = mem[_347]
                        require mem[_347] == mem[_347 + 12 len 20]
                        if mem[_347 + 12 len 20]:
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                            mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_365)
                            mem[mem[64] + 36] = 0
                            require ext_code.size(sub_809deb63Address)
                            call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args address(_365), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.sender == address(_365):
                            else:
                                emit 0xfcd9ef97: msg.sender, address(_365), uint16(uint16(s) + 1)
                            if sub_dc1ce9ac:
                                if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                    revert with 0, 17
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
                            s = _311
                            s = _365
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
                    s = _311
                    s = msg.sender
                    s = uint16(s) + 1
                    continue 
                sub_e625866a = block.timestamp
                _271 = mem[64]
                mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _277 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 68
                while idx < _277:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _271 + (32 * _277) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _505 = mem[64]
                mem[mem[64]] = 32
                _511 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 64
                while idx < _511:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0x9dcf1c02: mem[mem[64] len _505 + (32 * _511) + -mem[64] + 64], msg.sender
        else:
            if sub_244d907e and arg1 > -1 / sub_244d907e:
                revert with 0, 17
            if sub_244d907e * arg1 <= 0:
                revert with 0, 'Game: GEN1 mint cost cannot be 0'
            mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 132] = sub_244d907e * arg1
            require ext_code.size(sub_f3211b5eAddress)
            call sub_f3211b5eAddress.burn(address arg1, uint256 arg2) with:
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
                    staticcall randomizerAddress.0x6fc5a2d6 with:
                            gas gas_remaining wei
                           args (uint16(s) + 1 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _313 = mem[_301]
                    if not mem[_301] % 2048 >> 245 % 10:
                        mem[mem[64] + 4] = Mask(112, 0, mem[_301]) >> 144
                        staticcall sub_93066351Address.0x394ffebd with:
                                gas gas_remaining wei
                               args (Mask(256, -144, _313) << 144)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _349 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _367 = mem[_349]
                        require mem[_349] == mem[_349 + 12 len 20]
                        if mem[_349 + 12 len 20]:
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                            mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_367)
                            mem[mem[64] + 36] = 0
                            require ext_code.size(sub_809deb63Address)
                            call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args address(_367), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.sender == address(_367):
                            else:
                                emit 0xfcd9ef97: msg.sender, address(_367), uint16(uint16(s) + 1)
                            if sub_dc1ce9ac:
                                if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                    revert with 0, 17
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
                            s = _313
                            s = _367
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
                    s = _313
                    s = msg.sender
                    s = uint16(s) + 1
                    continue 
                sub_e625866a = block.timestamp
                _272 = mem[64]
                mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _278 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 68
                while idx < _278:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _272 + (32 * _278) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _506 = mem[64]
                mem[mem[64]] = 32
                _512 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 64
                while idx < _512:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0x9dcf1c02: mem[mem[64] len _506 + (32 * _512) + -mem[64] + 64], msg.sender
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
                    staticcall randomizerAddress.0x6fc5a2d6 with:
                            gas gas_remaining wei
                           args (uint16(s) + 1 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _315 = mem[_303]
                    if not mem[_303] % 2048 >> 245 % 10:
                        mem[mem[64] + 4] = Mask(112, 0, mem[_303]) >> 144
                        staticcall sub_93066351Address.0x394ffebd with:
                                gas gas_remaining wei
                               args (Mask(256, -144, _315) << 144)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _351 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _369 = mem[_351]
                        require mem[_351] == mem[_351 + 12 len 20]
                        if mem[_351 + 12 len 20]:
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = uint16(uint16(s) + 1)
                            mem[mem[64]] = 0x2097d3fb00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_369)
                            mem[mem[64] + 36] = 0
                            require ext_code.size(sub_809deb63Address)
                            call sub_809deb63Address.mint(address arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args address(_369), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if msg.sender == address(_369):
                            else:
                                emit 0xfcd9ef97: msg.sender, address(_369), uint16(uint16(s) + 1)
                            if sub_dc1ce9ac:
                                if sub_d01a49cf and sub_ce9efb02 > -1 / sub_d01a49cf:
                                    revert with 0, 17
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
                            s = _315
                            s = _369
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
                    s = _315
                    s = msg.sender
                    s = uint16(s) + 1
                    continue 
                sub_e625866a = block.timestamp
                _273 = mem[64]
                mem[mem[64]] = 0x35ca838b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _279 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 68
                while idx < _279:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _273 + (32 * _279) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _507 = mem[64]
                mem[mem[64]] = 32
                _513 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 64
                while idx < _513:
                    mem[t] = mem[s + 30 len 2]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0x9dcf1c02: mem[mem[64] len _507 + (32 * _513) + -mem[64] + 64], msg.sender
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
        _1327 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        staticcall sub_809deb63Address.getTokenWriteBlock(uint256 arg1) with:
                gas gas_remaining wei
               args _1327
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1331] == mem[_1331 + 24 len 8]
        if mem[_1331 + 24 len 8] >= block.number:
            revert with 0, 'Game: Nope!'
        mem[mem[64] + 4] = _1327
        staticcall sub_809deb63Address.0x32385e25 with:
                gas gas_remaining wei
               args _1327
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1336 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1336] == mem[_1336 + 24 len 8]
        if mem[_1336 + 24 len 8] >= block.number:
            revert with 0, 'Game: Nope!'
        mem[mem[64] + 4] = _1327
        staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args _1327
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1342 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1342] == bool(mem[_1342])
        if not mem[_1342]:
            revert with 0, 'Game: Token is not staked'
        _1345 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1345] = 0
        mem[_1345 + 32] = 0
        mem[_1345 + 64] = 0
        mem[_1345 + 96] = 0
        _1348 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1348] = 0
        mem[_1348 + 32] = 0
        mem[_1348 + 64] = 0
        mem[_1348 + 96] = 0
        mem[_1348 + 128] = 0
        mem[_1348 + 160] = 0
        mem[_1348 + 192] = 0
        mem[_1348 + 224] = 0
        mem[_1348 + 256] = 0
        mem[_1348 + 288] = 0
        mem[_1348 + 320] = 0
        staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args _1327
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1351 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        _1352 = mem[64]
        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 352
        require mem[_1351] == bool(mem[_1351])
        mem[_1352] = mem[_1351]
        require mem[_1351 + 32] == bool(mem[_1351 + 32])
        mem[_1352 + 32] = mem[_1351 + 32]
        require mem[_1351 + 64] == bool(mem[_1351 + 64])
        mem[_1352 + 64] = mem[_1351 + 64]
        require mem[_1351 + 96] == mem[_1351 + 126 len 2]
        mem[_1352 + 96] = mem[_1351 + 96]
        mem[_1352 + 128] = mem[_1351 + 128]
        require mem[_1351 + 160] == mem[_1351 + 191 len 1]
        mem[_1352 + 160] = mem[_1351 + 160]
        mem[_1352 + 192] = mem[_1351 + 192]
        require mem[_1351 + 224] == mem[_1351 + 255 len 1]
        mem[_1352 + 224] = mem[_1351 + 224]
        require mem[_1351 + 256] == mem[_1351 + 287 len 1]
        mem[_1352 + 256] = mem[_1351 + 256]
        require mem[_1351 + 288] == mem[_1351 + 319 len 1]
        mem[_1352 + 288] = mem[_1351 + 288]
        require mem[_1351 + 320] == mem[_1351 + 344 len 8]
        mem[_1352 + 320] = mem[_1351 + 320]
        mem[mem[64] + 4] = _1327
        staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args _1327
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1366] == bool(mem[_1366])
        if not mem[_1366]:
            mem[mem[64] + 4] = _1327
            staticcall sub_809deb63Address.0x6352211e with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1372 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1374 = mem[_1372]
            require mem[_1372] == mem[_1372 + 12 len 20]
            if not mem[_1372 + 12 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if 0 == mem[_1352 + 126 len 2]:
                mem[mem[64] + 4] = _1327
                staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1389 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1389] == bool(mem[_1389])
                if not mem[_1389]:
                    mem[mem[64] + 4] = _1327
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args _1327
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1412 = mem[_1409]
                    require mem[_1409] == mem[_1409 + 12 len 20]
                    if not mem[_1409 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[_1352 + 32]:
                        _1447 = mem[_1352 + 160]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1463 = mem[_1457]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1327
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1489 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1499 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1489] == mem[_1489 + 30 len 2]
                        mem[_1499] = mem[_1489]
                        mem[_1499 + 32] = mem[_1489 + 32]
                        mem[_1499 + 64] = mem[_1489 + 64]
                        require mem[_1489 + 96] == mem[_1489 + 108 len 20]
                        mem[_1499 + 96] = mem[_1489 + 96]
                        if _1463 < mem[_1499 + 32]:
                            revert with 0, 17
                        if uint8(_1447) and _1463 - mem[_1499 + 32] > -1 / uint8(_1447):
                            revert with 0, 17
                        if s > !((_1463 * uint8(_1447)) - (mem[_1499 + 32] * uint8(_1447))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (_1463 * uint8(_1447)) - (mem[_1499 + 32] * uint8(_1447))
                        continue 
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1327
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1458 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1464 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1458] == mem[_1458 + 30 len 2]
                    mem[_1464] = mem[_1458]
                    mem[_1464 + 32] = mem[_1458 + 32]
                    mem[_1464 + 64] = mem[_1458 + 64]
                    require mem[_1458 + 96] == mem[_1458 + 108 len 20]
                    mem[_1464 + 96] = mem[_1458 + 96]
                    _1536 = mem[_1464 + 64]
                    if block.timestamp < mem[_1464 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1464 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1464 + 64]:
                        revert with 0, 17
                    if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1464 + 64] * sub_d23270a3) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = address(_1412)
                    staticcall sub_f43bc155Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1412)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1652 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1680 = mem[_1652]
                    t = 0
                    u = 0
                    while t < _1680:
                        mem[mem[64] + 4] = address(_1412)
                        mem[mem[64] + 36] = t
                        staticcall sub_f43bc155Address.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(_1412), t
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2064 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[_2064]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2090 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2104 = mem[64]
                        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 96
                        mem[_2104] = mem[_2090]
                        mem[_2104 + 32] = mem[_2090 + 32]
                        mem[_2104 + 64] = mem[_2090 + 64]
                        if 24 * 3600 > !mem[_2104 + 64]:
                            revert with 0, 17
                        if block.timestamp < mem[_2104 + 64] + (24 * 3600):
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
                    if u and sub_1eca8abe > -1 / u:
                        revert with 0, 17
                    if sub_b175c7c7 > !(u * sub_1eca8abe):
                        revert with 0, 17
                    if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                        revert with 0, 17
                    if block.timestamp < mem[_1464 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1464 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_1464 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_1536 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1464 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1464 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_1536 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1464 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1464 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_1536 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1464 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1464 + 64]) / 24 * 3600)
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1410 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1413 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1410] == mem[_1410 + 30 len 2]
                mem[_1413] = mem[_1410]
                mem[_1413 + 32] = mem[_1410 + 32]
                mem[_1413 + 64] = mem[_1410 + 64]
                require mem[_1410 + 96] == mem[_1410 + 108 len 20]
                mem[_1413 + 96] = mem[_1410 + 96]
                _1452 = mem[_1413 + 96]
                if not mem[_1413 + 108 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1352 + 32]:
                    _1473 = mem[_1352 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1503 = mem[_1490]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1327
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1525 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1537 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1525] == mem[_1525 + 30 len 2]
                    mem[_1537] = mem[_1525]
                    mem[_1537 + 32] = mem[_1525 + 32]
                    mem[_1537 + 64] = mem[_1525 + 64]
                    require mem[_1525 + 96] == mem[_1525 + 108 len 20]
                    mem[_1537 + 96] = mem[_1525 + 96]
                    if _1503 < mem[_1537 + 32]:
                        revert with 0, 17
                    if uint8(_1473) and _1503 - mem[_1537 + 32] > -1 / uint8(_1473):
                        revert with 0, 17
                    if s > !((_1503 * uint8(_1473)) - (mem[_1537 + 32] * uint8(_1473))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_1503 * uint8(_1473)) - (mem[_1537 + 32] * uint8(_1473))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1491 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1504 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1491] == mem[_1491 + 30 len 2]
                mem[_1504] = mem[_1491]
                mem[_1504 + 32] = mem[_1491 + 32]
                mem[_1504 + 64] = mem[_1491 + 64]
                require mem[_1491 + 96] == mem[_1491 + 108 len 20]
                mem[_1504 + 96] = mem[_1491 + 96]
                _1567 = mem[_1504 + 64]
                if block.timestamp < mem[_1504 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1504 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1504 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1504 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_1452)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1452)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1707 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1739 = mem[_1707]
                t = 0
                u = 0
                while t < _1739:
                    mem[mem[64] + 4] = address(_1452)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_1452), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2065 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2065]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2092 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2105 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2105] = mem[_2092]
                    mem[_2105 + 32] = mem[_2092 + 32]
                    mem[_2105 + 64] = mem[_2092 + 64]
                    if 24 * 3600 > !mem[_2105 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2105 + 64] + (24 * 3600):
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
                if u and sub_1eca8abe > -1 / u:
                    revert with 0, 17
                if sub_b175c7c7 > !(u * sub_1eca8abe):
                    revert with 0, 17
                if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_1504 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1504 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_1504 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_1567 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1504 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1504 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_1567 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1504 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1504 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_1567 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1504 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1504 + 64]) / 24 * 3600)
                continue 
            mem[mem[64] + 4] = mem[_1372 + 12 len 20]
            staticcall sub_c0c675edAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1374)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1395 = mem[_1392]
            t = 0
            u = 0
            while t < _1395:
                mem[mem[64] + 4] = address(_1374)
                mem[mem[64] + 36] = t
                staticcall sub_c0c675edAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_1374), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2063 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2063]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2088 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2103 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2103] = mem[_2088]
                mem[_2103 + 32] = mem[_2088 + 32]
                mem[_2103 + 64] = mem[_2088 + 64]
                if 24 * 3600 > !mem[_2103 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2103 + 64] + (24 * 3600):
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
            if block.timestamp < mem[_1352 + 128]:
                revert with 0, 17
            if not (u * sub_4b33b36e) + sub_fc7c54de:
                revert with 0, 18
            if uint16(block.timestamp - mem[_1352 + 128] / (u * sub_4b33b36e) + sub_fc7c54de) > mem[_1352 + 126 len 2]:
                mem[_1352 + 96] = 0
                mem[mem[64] + 4] = _1327
                staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2141] == bool(mem[_2141])
                if not mem[_2141]:
                    mem[mem[64] + 4] = _1327
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args _1327
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2161 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2169 = mem[_2161]
                    require mem[_2161] == mem[_2161 + 12 len 20]
                    if not mem[_2161 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[_1352 + 32]:
                        _2207 = mem[_1352 + 160]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2220 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2237 = mem[_2220]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1327
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2272 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _2295 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_2272] == mem[_2272 + 30 len 2]
                        mem[_2295] = mem[_2272]
                        mem[_2295 + 32] = mem[_2272 + 32]
                        mem[_2295 + 64] = mem[_2272 + 64]
                        require mem[_2272 + 96] == mem[_2272 + 108 len 20]
                        mem[_2295 + 96] = mem[_2272 + 96]
                        if _2237 < mem[_2295 + 32]:
                            revert with 0, 17
                        if uint8(_2207) and _2237 - mem[_2295 + 32] > -1 / uint8(_2207):
                            revert with 0, 17
                        if s > !((_2237 * uint8(_2207)) - (mem[_2295 + 32] * uint8(_2207))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (_2237 * uint8(_2207)) - (mem[_2295 + 32] * uint8(_2207))
                        continue 
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1327
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2238 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2221] == mem[_2221 + 30 len 2]
                    mem[_2238] = mem[_2221]
                    mem[_2238 + 32] = mem[_2221 + 32]
                    mem[_2238 + 64] = mem[_2221 + 64]
                    require mem[_2221 + 96] == mem[_2221 + 108 len 20]
                    mem[_2238 + 96] = mem[_2221 + 96]
                    _2350 = mem[_2238 + 64]
                    if block.timestamp < mem[_2238 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2238 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2238 + 64]:
                        revert with 0, 17
                    if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2238 + 64] * sub_d23270a3) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = address(_2169)
                    staticcall sub_f43bc155Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(_2169)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2418 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2424 = mem[_2418]
                    t = 0
                    u = 0
                    while t < _2424:
                        mem[mem[64] + 4] = address(_2169)
                        mem[mem[64] + 36] = t
                        staticcall sub_f43bc155Address.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(_2169), t
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[_2575]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2631 = mem[64]
                        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 96
                        mem[_2631] = mem[_2610]
                        mem[_2631 + 32] = mem[_2610 + 32]
                        mem[_2631 + 64] = mem[_2610 + 64]
                        if 24 * 3600 > !mem[_2631 + 64]:
                            revert with 0, 17
                        if block.timestamp < mem[_2631 + 64] + (24 * 3600):
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
                    if u and sub_1eca8abe > -1 / u:
                        revert with 0, 17
                    if sub_b175c7c7 > !(u * sub_1eca8abe):
                        revert with 0, 17
                    if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                        revert with 0, 17
                    if block.timestamp < mem[_2238 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2238 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_2238 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_2350 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2238 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2238 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_2350 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2238 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2238 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_2350 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2238 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2238 + 64]) / 24 * 3600)
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2162 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2170 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2162] == mem[_2162 + 30 len 2]
                mem[_2170] = mem[_2162]
                mem[_2170 + 32] = mem[_2162 + 32]
                mem[_2170 + 64] = mem[_2162 + 64]
                require mem[_2162 + 96] == mem[_2162 + 108 len 20]
                mem[_2170 + 96] = mem[_2162 + 96]
                _2212 = mem[_2170 + 96]
                if not mem[_2170 + 108 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1352 + 32]:
                    _2256 = mem[_1352 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2273 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2299 = mem[_2273]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1327
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2329 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2351 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2329] == mem[_2329 + 30 len 2]
                    mem[_2351] = mem[_2329]
                    mem[_2351 + 32] = mem[_2329 + 32]
                    mem[_2351 + 64] = mem[_2329 + 64]
                    require mem[_2329 + 96] == mem[_2329 + 108 len 20]
                    mem[_2351 + 96] = mem[_2329 + 96]
                    if _2299 < mem[_2351 + 32]:
                        revert with 0, 17
                    if uint8(_2256) and _2299 - mem[_2351 + 32] > -1 / uint8(_2256):
                        revert with 0, 17
                    if s > !((_2299 * uint8(_2256)) - (mem[_2351 + 32] * uint8(_2256))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_2299 * uint8(_2256)) - (mem[_2351 + 32] * uint8(_2256))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2300 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2274] == mem[_2274 + 30 len 2]
                mem[_2300] = mem[_2274]
                mem[_2300 + 32] = mem[_2274 + 32]
                mem[_2300 + 64] = mem[_2274 + 64]
                require mem[_2274 + 96] == mem[_2274 + 108 len 20]
                mem[_2300 + 96] = mem[_2274 + 96]
                _2392 = mem[_2300 + 64]
                if block.timestamp < mem[_2300 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2300 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2300 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2300 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_2212)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2212)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2440 = mem[_2432]
                t = 0
                u = 0
                while t < _2440:
                    mem[mem[64] + 4] = address(_2212)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_2212), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2576]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2612 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2632 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2632] = mem[_2612]
                    mem[_2632 + 32] = mem[_2612 + 32]
                    mem[_2632 + 64] = mem[_2612 + 64]
                    if 24 * 3600 > !mem[_2632 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2632 + 64] + (24 * 3600):
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
                if u and sub_1eca8abe > -1 / u:
                    revert with 0, 17
                if sub_b175c7c7 > !(u * sub_1eca8abe):
                    revert with 0, 17
                if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_2300 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2300 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_2300 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2392 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2300 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2300 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2392 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2300 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2300 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2392 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2300 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2300 + 64]) / 24 * 3600)
                continue 
            if mem[_1352 + 126 len 2] < uint16(block.timestamp - mem[_1352 + 128] / (u * sub_4b33b36e) + sub_fc7c54de):
                revert with 0, 17
            mem[_1352 + 96] = uint16(mem[_1352 + 126 len 2] - uint16(block.timestamp - mem[_1352 + 128] / (u * sub_4b33b36e) + sub_fc7c54de))
            mem[mem[64] + 4] = _1327
            staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2149 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2149] == bool(mem[_2149])
            if not mem[_2149]:
                mem[mem[64] + 4] = _1327
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2183 = mem[_2177]
                require mem[_2177] == mem[_2177 + 12 len 20]
                if not mem[_2177 + 12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1352 + 32]:
                    _2231 = mem[_1352 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2279 = mem[_2251]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1327
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2331 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2315] == mem[_2315 + 30 len 2]
                    mem[_2331] = mem[_2315]
                    mem[_2331 + 32] = mem[_2315 + 32]
                    mem[_2331 + 64] = mem[_2315 + 64]
                    require mem[_2315 + 96] == mem[_2315 + 108 len 20]
                    mem[_2331 + 96] = mem[_2315 + 96]
                    if _2279 < mem[_2331 + 32]:
                        revert with 0, 17
                    if uint8(_2231) and _2279 - mem[_2331 + 32] > -1 / uint8(_2231):
                        revert with 0, 17
                    if s > !((_2279 * uint8(_2231)) - (mem[_2331 + 32] * uint8(_2231))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_2279 * uint8(_2231)) - (mem[_2331 + 32] * uint8(_2231))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2280 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2252] == mem[_2252 + 30 len 2]
                mem[_2280] = mem[_2252]
                mem[_2280 + 32] = mem[_2252 + 32]
                mem[_2280 + 64] = mem[_2252 + 64]
                require mem[_2252 + 96] == mem[_2252 + 108 len 20]
                mem[_2280 + 96] = mem[_2252 + 96]
                _2374 = mem[_2280 + 64]
                if block.timestamp < mem[_2280 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2280 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2280 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2280 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_2183)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2183)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2427 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2435 = mem[_2427]
                t = 0
                u = 0
                while t < _2435:
                    mem[mem[64] + 4] = address(_2183)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_2183), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2573 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2573]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2606 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2629 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2629] = mem[_2606]
                    mem[_2629 + 32] = mem[_2606 + 32]
                    mem[_2629 + 64] = mem[_2606 + 64]
                    if 24 * 3600 > !mem[_2629 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2629 + 64] + (24 * 3600):
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
                if u and sub_1eca8abe > -1 / u:
                    revert with 0, 17
                if sub_b175c7c7 > !(u * sub_1eca8abe):
                    revert with 0, 17
                if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_2280 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2280 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_2280 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2374 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2280 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2280 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2374 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2280 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2280 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2374 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2280 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2280 + 64]) / 24 * 3600)
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2178 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2184 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2178] == mem[_2178 + 30 len 2]
            mem[_2184] = mem[_2178]
            mem[_2184 + 32] = mem[_2178 + 32]
            mem[_2184 + 64] = mem[_2178 + 64]
            require mem[_2178 + 96] == mem[_2178 + 108 len 20]
            mem[_2184 + 96] = mem[_2178 + 96]
            _2236 = mem[_2184 + 96]
            if not mem[_2184 + 108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1352 + 32]:
                _2290 = mem[_1352 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2335 = mem[_2316]
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2375 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2367] == mem[_2367 + 30 len 2]
                mem[_2375] = mem[_2367]
                mem[_2375 + 32] = mem[_2367 + 32]
                mem[_2375 + 64] = mem[_2367 + 64]
                require mem[_2367 + 96] == mem[_2367 + 108 len 20]
                mem[_2375 + 96] = mem[_2367 + 96]
                if _2335 < mem[_2375 + 32]:
                    revert with 0, 17
                if uint8(_2290) and _2335 - mem[_2375 + 32] > -1 / uint8(_2290):
                    revert with 0, 17
                if s > !((_2335 * uint8(_2290)) - (mem[_2375 + 32] * uint8(_2290))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_2335 * uint8(_2290)) - (mem[_2375 + 32] * uint8(_2290))
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2317 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2336 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2317] == mem[_2317 + 30 len 2]
            mem[_2336] = mem[_2317]
            mem[_2336 + 32] = mem[_2317 + 32]
            mem[_2336 + 64] = mem[_2317 + 64]
            require mem[_2317 + 96] == mem[_2317 + 108 len 20]
            mem[_2336 + 96] = mem[_2317 + 96]
            _2403 = mem[_2336 + 64]
            if block.timestamp < mem[_2336 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2336 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2336 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2336 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = address(_2236)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2236)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2443 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2451 = mem[_2443]
            t = 0
            u = 0
            while t < _2451:
                mem[mem[64] + 4] = address(_2236)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_2236), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2574]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2608 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2630 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2630] = mem[_2608]
                mem[_2630 + 32] = mem[_2608 + 32]
                mem[_2630 + 64] = mem[_2608 + 64]
                if 24 * 3600 > !mem[_2630 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2630 + 64] + (24 * 3600):
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
            if u and sub_1eca8abe > -1 / u:
                revert with 0, 17
            if sub_b175c7c7 > !(u * sub_1eca8abe):
                revert with 0, 17
            if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                revert with 0, 17
            if block.timestamp < mem[_2336 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2336 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_2336 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2403 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2336 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2336 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2403 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2336 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2336 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2403 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2336 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2336 + 64]) / 24 * 3600)
            continue 
        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                gas gas_remaining wei
               args _1327
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _1375 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_1373] == mem[_1373 + 30 len 2]
        mem[_1375] = mem[_1373]
        mem[_1375 + 32] = mem[_1373 + 32]
        mem[_1375 + 64] = mem[_1373 + 64]
        require mem[_1373 + 96] == mem[_1373 + 108 len 20]
        mem[_1375 + 96] = mem[_1373 + 96]
        _1383 = mem[_1375 + 96]
        if not mem[_1375 + 108 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if 0 == mem[_1352 + 126 len 2]:
            mem[mem[64] + 4] = _1327
            staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1399] == bool(mem[_1399])
            if not mem[_1399]:
                mem[mem[64] + 4] = _1327
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1432 = mem[_1424]
                require mem[_1424] == mem[_1424 + 12 len 20]
                if not mem[_1424 + 12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1352 + 32]:
                    _1481 = mem[_1352 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1505 = mem[_1493]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1327
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1528 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1541 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1528] == mem[_1528 + 30 len 2]
                    mem[_1541] = mem[_1528]
                    mem[_1541 + 32] = mem[_1528 + 32]
                    mem[_1541 + 64] = mem[_1528 + 64]
                    require mem[_1528 + 96] == mem[_1528 + 108 len 20]
                    mem[_1541 + 96] = mem[_1528 + 96]
                    if _1505 < mem[_1541 + 32]:
                        revert with 0, 17
                    if uint8(_1481) and _1505 - mem[_1541 + 32] > -1 / uint8(_1481):
                        revert with 0, 17
                    if s > !((_1505 * uint8(_1481)) - (mem[_1541 + 32] * uint8(_1481))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_1505 * uint8(_1481)) - (mem[_1541 + 32] * uint8(_1481))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1506 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1494] == mem[_1494 + 30 len 2]
                mem[_1506] = mem[_1494]
                mem[_1506 + 32] = mem[_1494 + 32]
                mem[_1506 + 64] = mem[_1494 + 64]
                require mem[_1494 + 96] == mem[_1494 + 108 len 20]
                mem[_1506 + 96] = mem[_1494 + 96]
                _1572 = mem[_1506 + 64]
                if block.timestamp < mem[_1506 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1506 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1506 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1506 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_1432)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1432)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1718 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1744 = mem[_1718]
                t = 0
                u = 0
                while t < _1744:
                    mem[mem[64] + 4] = address(_1432)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_1432), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2067 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2067]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2107 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2107] = mem[_2096]
                    mem[_2107 + 32] = mem[_2096 + 32]
                    mem[_2107 + 64] = mem[_2096 + 64]
                    if 24 * 3600 > !mem[_2107 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2107 + 64] + (24 * 3600):
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
                if u and sub_1eca8abe > -1 / u:
                    revert with 0, 17
                if sub_b175c7c7 > !(u * sub_1eca8abe):
                    revert with 0, 17
                if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_1506 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1506 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_1506 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_1572 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1506 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1506 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_1572 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1506 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1506 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_1572 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1506 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1506 + 64]) / 24 * 3600)
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1433 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_1425] == mem[_1425 + 30 len 2]
            mem[_1433] = mem[_1425]
            mem[_1433 + 32] = mem[_1425 + 32]
            mem[_1433 + 64] = mem[_1425 + 64]
            require mem[_1425 + 96] == mem[_1425 + 108 len 20]
            mem[_1433 + 96] = mem[_1425 + 96]
            _1486 = mem[_1433 + 96]
            if not mem[_1433 + 108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1352 + 32]:
                _1519 = mem[_1352 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1529 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1545 = mem[_1529]
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1560 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1573 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1560] == mem[_1560 + 30 len 2]
                mem[_1573] = mem[_1560]
                mem[_1573 + 32] = mem[_1560 + 32]
                mem[_1573 + 64] = mem[_1560 + 64]
                require mem[_1560 + 96] == mem[_1560 + 108 len 20]
                mem[_1573 + 96] = mem[_1560 + 96]
                if _1545 < mem[_1573 + 32]:
                    revert with 0, 17
                if uint8(_1519) and _1545 - mem[_1573 + 32] > -1 / uint8(_1519):
                    revert with 0, 17
                if s > !((_1545 * uint8(_1519)) - (mem[_1573 + 32] * uint8(_1519))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_1545 * uint8(_1519)) - (mem[_1573 + 32] * uint8(_1519))
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1530 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1546 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_1530] == mem[_1530 + 30 len 2]
            mem[_1546] = mem[_1530]
            mem[_1546 + 32] = mem[_1530 + 32]
            mem[_1546 + 64] = mem[_1530 + 64]
            require mem[_1530 + 96] == mem[_1530 + 108 len 20]
            mem[_1546 + 96] = mem[_1530 + 96]
            _1600 = mem[_1546 + 64]
            if block.timestamp < mem[_1546 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_1546 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1546 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1546 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = address(_1486)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1486)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1784 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1798 = mem[_1784]
            t = 0
            u = 0
            while t < _1798:
                mem[mem[64] + 4] = address(_1486)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_1486), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2068 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2068]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2098 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2108 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2108] = mem[_2098]
                mem[_2108 + 32] = mem[_2098 + 32]
                mem[_2108 + 64] = mem[_2098 + 64]
                if 24 * 3600 > !mem[_2108 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2108 + 64] + (24 * 3600):
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
            if u and sub_1eca8abe > -1 / u:
                revert with 0, 17
            if sub_b175c7c7 > !(u * sub_1eca8abe):
                revert with 0, 17
            if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                revert with 0, 17
            if block.timestamp < mem[_1546 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_1546 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_1546 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_1600 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1546 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1546 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_1600 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1546 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1546 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_1600 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_1546 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_1546 + 64]) / 24 * 3600)
            continue 
        mem[mem[64] + 4] = mem[_1375 + 108 len 20]
        staticcall sub_c0c675edAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(_1383)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1400 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1407 = mem[_1400]
        t = 0
        u = 0
        while t < _1407:
            mem[mem[64] + 4] = address(_1383)
            mem[mem[64] + 36] = t
            staticcall sub_c0c675edAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(_1383), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2066 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_2066]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2094 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2106 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2106] = mem[_2094]
            mem[_2106 + 32] = mem[_2094 + 32]
            mem[_2106 + 64] = mem[_2094 + 64]
            if 24 * 3600 > !mem[_2106 + 64]:
                revert with 0, 17
            if block.timestamp < mem[_2106 + 64] + (24 * 3600):
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
        if block.timestamp < mem[_1352 + 128]:
            revert with 0, 17
        if not (u * sub_4b33b36e) + sub_fc7c54de:
            revert with 0, 18
        if uint16(block.timestamp - mem[_1352 + 128] / (u * sub_4b33b36e) + sub_fc7c54de) > mem[_1352 + 126 len 2]:
            mem[_1352 + 96] = 0
            mem[mem[64] + 4] = _1327
            staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2142 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2142] == bool(mem[_2142])
            if not mem[_2142]:
                mem[mem[64] + 4] = _1327
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2175 = mem[_2163]
                require mem[_2163] == mem[_2163 + 12 len 20]
                if not mem[_2163 + 12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1352 + 32]:
                    _2213 = mem[_1352 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2247 = mem[_2223]
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1327
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2309 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2276] == mem[_2276 + 30 len 2]
                    mem[_2309] = mem[_2276]
                    mem[_2309 + 32] = mem[_2276 + 32]
                    mem[_2309 + 64] = mem[_2276 + 64]
                    require mem[_2276 + 96] == mem[_2276 + 108 len 20]
                    mem[_2309 + 96] = mem[_2276 + 96]
                    if _2247 < mem[_2309 + 32]:
                        revert with 0, 17
                    if uint8(_2213) and _2247 - mem[_2309 + 32] > -1 / uint8(_2213):
                        revert with 0, 17
                    if s > !((_2247 * uint8(_2213)) - (mem[_2309 + 32] * uint8(_2213))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_2247 * uint8(_2213)) - (mem[_2309 + 32] * uint8(_2213))
                    continue 
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2248 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2224] == mem[_2224 + 30 len 2]
                mem[_2248] = mem[_2224]
                mem[_2248 + 32] = mem[_2224 + 32]
                mem[_2248 + 64] = mem[_2224 + 64]
                require mem[_2224 + 96] == mem[_2224 + 108 len 20]
                mem[_2248 + 96] = mem[_2224 + 96]
                _2362 = mem[_2248 + 64]
                if block.timestamp < mem[_2248 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2248 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2248 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2248 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_2175)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2175)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2426 = mem[_2420]
                t = 0
                u = 0
                while t < _2426:
                    mem[mem[64] + 4] = address(_2175)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_2175), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2579 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2579]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2635 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2635] = mem[_2618]
                    mem[_2635 + 32] = mem[_2618 + 32]
                    mem[_2635 + 64] = mem[_2618 + 64]
                    if 24 * 3600 > !mem[_2635 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2635 + 64] + (24 * 3600):
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
                if u and sub_1eca8abe > -1 / u:
                    revert with 0, 17
                if sub_b175c7c7 > !(u * sub_1eca8abe):
                    revert with 0, 17
                if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_2248 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2248 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_2248 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2362 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2248 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2248 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2362 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2248 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2248 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2362 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2248 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2248 + 64]) / 24 * 3600)
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2164 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2176 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2164] == mem[_2164 + 30 len 2]
            mem[_2176] = mem[_2164]
            mem[_2176 + 32] = mem[_2164 + 32]
            mem[_2176 + 64] = mem[_2164 + 64]
            require mem[_2164 + 96] == mem[_2164 + 108 len 20]
            mem[_2176 + 96] = mem[_2164 + 96]
            _2218 = mem[_2176 + 96]
            if not mem[_2176 + 108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1352 + 32]:
                _2266 = mem[_1352 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2313 = mem[_2277]
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2330 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2363 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2330] == mem[_2330 + 30 len 2]
                mem[_2363] = mem[_2330]
                mem[_2363 + 32] = mem[_2330 + 32]
                mem[_2363 + 64] = mem[_2330 + 64]
                require mem[_2330 + 96] == mem[_2330 + 108 len 20]
                mem[_2363 + 96] = mem[_2330 + 96]
                if _2313 < mem[_2363 + 32]:
                    revert with 0, 17
                if uint8(_2266) and _2313 - mem[_2363 + 32] > -1 / uint8(_2266):
                    revert with 0, 17
                if s > !((_2313 * uint8(_2266)) - (mem[_2363 + 32] * uint8(_2266))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_2313 * uint8(_2266)) - (mem[_2363 + 32] * uint8(_2266))
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2314 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2278] == mem[_2278 + 30 len 2]
            mem[_2314] = mem[_2278]
            mem[_2314 + 32] = mem[_2278 + 32]
            mem[_2314 + 64] = mem[_2278 + 64]
            require mem[_2278 + 96] == mem[_2278 + 108 len 20]
            mem[_2314 + 96] = mem[_2278 + 96]
            _2398 = mem[_2314 + 64]
            if block.timestamp < mem[_2314 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2314 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2314 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2314 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = address(_2218)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2218)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2434 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2442 = mem[_2434]
            t = 0
            u = 0
            while t < _2442:
                mem[mem[64] + 4] = address(_2218)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_2218), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2580]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2620 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2636 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2636] = mem[_2620]
                mem[_2636 + 32] = mem[_2620 + 32]
                mem[_2636 + 64] = mem[_2620 + 64]
                if 24 * 3600 > !mem[_2636 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2636 + 64] + (24 * 3600):
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
            if u and sub_1eca8abe > -1 / u:
                revert with 0, 17
            if sub_b175c7c7 > !(u * sub_1eca8abe):
                revert with 0, 17
            if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                revert with 0, 17
            if block.timestamp < mem[_2314 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2314 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_2314 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2398 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2314 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2314 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2398 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2314 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2314 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2398 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2314 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2314 + 64]) / 24 * 3600)
            continue 
        if mem[_1352 + 126 len 2] < uint16(block.timestamp - mem[_1352 + 128] / (u * sub_4b33b36e) + sub_fc7c54de):
            revert with 0, 17
        mem[_1352 + 96] = uint16(mem[_1352 + 126 len 2] - uint16(block.timestamp - mem[_1352 + 128] / (u * sub_4b33b36e) + sub_fc7c54de))
        mem[mem[64] + 4] = _1327
        staticcall sub_93066351Address.isStaked(uint256 arg1) with:
                gas gas_remaining wei
               args _1327
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2150] == bool(mem[_2150])
        if not mem[_2150]:
            mem[mem[64] + 4] = _1327
            staticcall sub_809deb63Address.0x6352211e with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2185 = mem[_2180]
            require mem[_2180] == mem[_2180 + 12 len 20]
            if not mem[_2180 + 12 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1352 + 32]:
                _2241 = mem[_1352 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2283 = mem[_2261]
                staticcall sub_93066351Address.getStake(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1327
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2337 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2322] == mem[_2322 + 30 len 2]
                mem[_2337] = mem[_2322]
                mem[_2337 + 32] = mem[_2322 + 32]
                mem[_2337 + 64] = mem[_2322 + 64]
                require mem[_2322 + 96] == mem[_2322 + 108 len 20]
                mem[_2337 + 96] = mem[_2322 + 96]
                if _2283 < mem[_2337 + 32]:
                    revert with 0, 17
                if uint8(_2241) and _2283 - mem[_2337 + 32] > -1 / uint8(_2241):
                    revert with 0, 17
                if s > !((_2283 * uint8(_2241)) - (mem[_2337 + 32] * uint8(_2241))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_2283 * uint8(_2241)) - (mem[_2337 + 32] * uint8(_2241))
                continue 
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2284 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2262] == mem[_2262 + 30 len 2]
            mem[_2284] = mem[_2262]
            mem[_2284 + 32] = mem[_2262 + 32]
            mem[_2284 + 64] = mem[_2262 + 64]
            require mem[_2262 + 96] == mem[_2262 + 108 len 20]
            mem[_2284 + 96] = mem[_2262 + 96]
            _2382 = mem[_2284 + 64]
            if block.timestamp < mem[_2284 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2284 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2284 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2284 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = address(_2185)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2185)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2437 = mem[_2429]
            t = 0
            u = 0
            while t < _2437:
                mem[mem[64] + 4] = address(_2185)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_2185), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2577]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2633 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2633] = mem[_2614]
                mem[_2633 + 32] = mem[_2614 + 32]
                mem[_2633 + 64] = mem[_2614 + 64]
                if 24 * 3600 > !mem[_2633 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2633 + 64] + (24 * 3600):
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
            if u and sub_1eca8abe > -1 / u:
                revert with 0, 17
            if sub_b175c7c7 > !(u * sub_1eca8abe):
                revert with 0, 17
            if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
                revert with 0, 17
            if block.timestamp < mem[_2284 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2284 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_2284 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2382 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2284 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2284 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2382 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2284 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2284 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2382 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2284 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2284 + 64]) / 24 * 3600)
            continue 
        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                gas gas_remaining wei
               args _1327
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2186 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_2181] == mem[_2181 + 30 len 2]
        mem[_2186] = mem[_2181]
        mem[_2186 + 32] = mem[_2181 + 32]
        mem[_2186 + 64] = mem[_2181 + 64]
        require mem[_2181 + 96] == mem[_2181 + 108 len 20]
        mem[_2186 + 96] = mem[_2181 + 96]
        _2246 = mem[_2186 + 96]
        if not mem[_2186 + 108 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if not mem[_1352 + 32]:
            _2304 = mem[_1352 + 160]
            staticcall sub_93066351Address.0x8c59295c with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2323 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2341 = mem[_2323]
            staticcall sub_93066351Address.getStake(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1327
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2383 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2369] == mem[_2369 + 30 len 2]
            mem[_2383] = mem[_2369]
            mem[_2383 + 32] = mem[_2369 + 32]
            mem[_2383 + 64] = mem[_2369 + 64]
            require mem[_2369 + 96] == mem[_2369 + 108 len 20]
            mem[_2383 + 96] = mem[_2369 + 96]
            if _2341 < mem[_2383 + 32]:
                revert with 0, 17
            if uint8(_2304) and _2341 - mem[_2383 + 32] > -1 / uint8(_2304):
                revert with 0, 17
            if s > !((_2341 * uint8(_2304)) - (mem[_2383 + 32] * uint8(_2304))):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (_2341 * uint8(_2304)) - (mem[_2383 + 32] * uint8(_2304))
            continue 
        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                gas gas_remaining wei
               args _1327
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2324 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2342 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_2324] == mem[_2324 + 30 len 2]
        mem[_2342] = mem[_2324]
        mem[_2342 + 32] = mem[_2324 + 32]
        mem[_2342 + 64] = mem[_2324 + 64]
        require mem[_2324 + 96] == mem[_2324 + 108 len 20]
        mem[_2342 + 96] = mem[_2324 + 96]
        _2408 = mem[_2342 + 64]
        if block.timestamp < mem[_2342 + 64]:
            revert with 0, 17
        if block.timestamp - mem[_2342 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2342 + 64]:
            revert with 0, 17
        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2342 + 64] * sub_d23270a3) / 24 * 3600):
            revert with 0, 17
        mem[mem[64] + 4] = address(_2246)
        staticcall sub_f43bc155Address.0x70a08231 with:
                gas gas_remaining wei
               args address(_2246)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2445 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2453 = mem[_2445]
        t = 0
        u = 0
        while t < _2453:
            mem[mem[64] + 4] = address(_2246)
            mem[mem[64] + 36] = t
            staticcall sub_f43bc155Address.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(_2246), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2578 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_2578]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2634 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2634] = mem[_2616]
            mem[_2634 + 32] = mem[_2616 + 32]
            mem[_2634 + 64] = mem[_2616 + 64]
            if 24 * 3600 > !mem[_2634 + 64]:
                revert with 0, 17
            if block.timestamp < mem[_2634 + 64] + (24 * 3600):
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
        if u and sub_1eca8abe > -1 / u:
            revert with 0, 17
        if sub_b175c7c7 > !(u * sub_1eca8abe):
            revert with 0, 17
        if mem[_1352 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1352 + 126 len 2]:
            revert with 0, 17
        if block.timestamp < mem[_2342 + 64]:
            revert with 0, 17
        if block.timestamp - mem[_2342 + 64] and (sub_b175c7c7 * mem[_1352 + 126 len 2]) + (u * sub_1eca8abe * mem[_1352 + 126 len 2]) > -1 / block.timestamp - mem[_2342 + 64]:
            revert with 0, 17
        if (block.timestamp * sub_d23270a3) - (_2408 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2342 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2342 + 64]) / 24 * 3600):
            revert with 0, 17
        if s > !(((block.timestamp * sub_d23270a3) - (_2408 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2342 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2342 + 64]) / 24 * 3600)):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((block.timestamp * sub_d23270a3) - (_2408 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1352 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1352 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1352 + 126 len 2] * mem[_2342 + 64]) - (u * sub_1eca8abe * mem[_1352 + 126 len 2] * mem[_2342 + 64]) / 24 * 3600)
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
                    _760 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_760]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _786 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _800 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_800] = mem[_786]
                    mem[_800 + 32] = mem[_786 + 32]
                    mem[_800 + 64] = mem[_786 + 64]
                    if 24 * 3600 > !mem[_800 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_800 + 64] + (24 * 3600):
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
                if s and sub_1eca8abe > -1 / s:
                    revert with 0, 17
                if sub_b175c7c7 > !(s * sub_1eca8abe):
                    revert with 0, 17
                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[(12 * ceil32(return_data.size)) + 992]:
                    revert with 0, 17
                if block.timestamp - mem[(12 * ceil32(return_data.size)) + 992] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 992]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 992]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 992]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 992]) / 24 * 3600)
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
                    _761 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_761]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _788 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _801 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_801] = mem[_788]
                    mem[_801 + 32] = mem[_788 + 32]
                    mem[_801 + 64] = mem[_788 + 64]
                    if 24 * 3600 > !mem[_801 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_801 + 64] + (24 * 3600):
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
                if s and sub_1eca8abe > -1 / s:
                    revert with 0, 17
                if sub_b175c7c7 > !(s * sub_1eca8abe):
                    revert with 0, 17
                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                    revert with 0, 17
                if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1120]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1120]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
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
                _759 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_759]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _784 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _799 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_799] = mem[_784]
                mem[_799 + 32] = mem[_784 + 32]
                mem[_799 + 64] = mem[_784 + 64]
                if 24 * 3600 > !mem[_799 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_799 + 64] + (24 * 3600):
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
                _837 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_837] == bool(mem[_837])
                if not mem[_837]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _861 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _873 = mem[_861]
                    require mem[_861] == mem[_861 + 12 len 20]
                    if not mem[_861 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _911 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _924 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _941 = mem[_924]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _976 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _999 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_976] == mem[_976 + 30 len 2]
                        mem[_999] = mem[_976]
                        mem[_999 + 32] = mem[_976 + 32]
                        mem[_999 + 64] = mem[_976 + 64]
                        require mem[_976 + 96] == mem[_976 + 108 len 20]
                        mem[_999 + 96] = mem[_976 + 96]
                        if _941 < mem[_999 + 32]:
                            revert with 0, 17
                        if uint8(_911) and _941 - mem[_999 + 32] > -1 / uint8(_911):
                            revert with 0, 17
                        mem[mem[64]] = (_941 * uint8(_911)) - (mem[_999 + 32] * uint8(_911))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _925 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _942 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_925] == mem[_925 + 30 len 2]
                        mem[_942] = mem[_925]
                        mem[_942 + 32] = mem[_925 + 32]
                        mem[_942 + 64] = mem[_925 + 64]
                        require mem[_925 + 96] == mem[_925 + 108 len 20]
                        mem[_942 + 96] = mem[_925 + 96]
                        _1054 = mem[_942 + 64]
                        if block.timestamp < mem[_942 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_942 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_942 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_942 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_873)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_873)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1127 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1138 = mem[_1127]
                        idx = 0
                        s = 0
                        while idx < _1138:
                            mem[mem[64] + 4] = address(_873)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_873), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1311]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1346 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1367 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1367] = mem[_1346]
                            mem[_1367 + 32] = mem[_1346 + 32]
                            mem[_1367 + 64] = mem[_1346 + 64]
                            if 24 * 3600 > !mem[_1367 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1367 + 64] + (24 * 3600):
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
                        if s and sub_1eca8abe > -1 / s:
                            revert with 0, 17
                        if sub_b175c7c7 > !(s * sub_1eca8abe):
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if block.timestamp < mem[_942 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_942 + 64] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[_942 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1054 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_942 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_942 + 64]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1054 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_942 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_942 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _874 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_862] == mem[_862 + 30 len 2]
                    mem[_874] = mem[_862]
                    mem[_874 + 32] = mem[_862 + 32]
                    mem[_874 + 64] = mem[_862 + 64]
                    require mem[_862 + 96] == mem[_862 + 108 len 20]
                    mem[_874 + 96] = mem[_862 + 96]
                    _916 = mem[_874 + 96]
                    if not mem[_874 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _960 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _977 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1003 = mem[_977]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1033 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1055 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1033] == mem[_1033 + 30 len 2]
                        mem[_1055] = mem[_1033]
                        mem[_1055 + 32] = mem[_1033 + 32]
                        mem[_1055 + 64] = mem[_1033 + 64]
                        require mem[_1033 + 96] == mem[_1033 + 108 len 20]
                        mem[_1055 + 96] = mem[_1033 + 96]
                        if _1003 < mem[_1055 + 32]:
                            revert with 0, 17
                        if uint8(_960) and _1003 - mem[_1055 + 32] > -1 / uint8(_960):
                            revert with 0, 17
                        mem[mem[64]] = (_1003 * uint8(_960)) - (mem[_1055 + 32] * uint8(_960))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _978 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1004 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_978] == mem[_978 + 30 len 2]
                        mem[_1004] = mem[_978]
                        mem[_1004 + 32] = mem[_978 + 32]
                        mem[_1004 + 64] = mem[_978 + 64]
                        require mem[_978 + 96] == mem[_978 + 108 len 20]
                        mem[_1004 + 96] = mem[_978 + 96]
                        _1096 = mem[_1004 + 64]
                        if block.timestamp < mem[_1004 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1004 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1004 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1004 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_916)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1160 = mem[_1149]
                        idx = 0
                        s = 0
                        while idx < _1160:
                            mem[mem[64] + 4] = address(_916)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_916), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1312]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1368 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1368] = mem[_1348]
                            mem[_1368 + 32] = mem[_1348 + 32]
                            mem[_1368 + 64] = mem[_1348 + 64]
                            if 24 * 3600 > !mem[_1368 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1368 + 64] + (24 * 3600):
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
                        if s and sub_1eca8abe > -1 / s:
                            revert with 0, 17
                        if sub_b175c7c7 > !(s * sub_1eca8abe):
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if block.timestamp < mem[_1004 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1004 + 64] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[_1004 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1096 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1004 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1004 + 64]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1096 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1004 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1004 + 64]) / 24 * 3600)
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
                _845 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_845] == bool(mem[_845])
                if not mem[_845]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _881 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _887 = mem[_881]
                    require mem[_881] == mem[_881 + 12 len 20]
                    if not mem[_881 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _935 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _955 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _983 = mem[_955]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1019 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1035 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1019] == mem[_1019 + 30 len 2]
                        mem[_1035] = mem[_1019]
                        mem[_1035 + 32] = mem[_1019 + 32]
                        mem[_1035 + 64] = mem[_1019 + 64]
                        require mem[_1019 + 96] == mem[_1019 + 108 len 20]
                        mem[_1035 + 96] = mem[_1019 + 96]
                        if _983 < mem[_1035 + 32]:
                            revert with 0, 17
                        if uint8(_935) and _983 - mem[_1035 + 32] > -1 / uint8(_935):
                            revert with 0, 17
                        mem[mem[64]] = (_983 * uint8(_935)) - (mem[_1035 + 32] * uint8(_935))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _956 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _984 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_956] == mem[_956 + 30 len 2]
                        mem[_984] = mem[_956]
                        mem[_984 + 32] = mem[_956 + 32]
                        mem[_984 + 64] = mem[_956 + 64]
                        require mem[_956 + 96] == mem[_956 + 108 len 20]
                        mem[_984 + 96] = mem[_956 + 96]
                        _1078 = mem[_984 + 64]
                        if block.timestamp < mem[_984 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_984 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_984 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_984 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_887)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_887)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1153 = mem[_1143]
                        idx = 0
                        s = 0
                        while idx < _1153:
                            mem[mem[64] + 4] = address(_887)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_887), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1309]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1342 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1365 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1365] = mem[_1342]
                            mem[_1365 + 32] = mem[_1342 + 32]
                            mem[_1365 + 64] = mem[_1342 + 64]
                            if 24 * 3600 > !mem[_1365 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1365 + 64] + (24 * 3600):
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
                        if s and sub_1eca8abe > -1 / s:
                            revert with 0, 17
                        if sub_b175c7c7 > !(s * sub_1eca8abe):
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if block.timestamp < mem[_984 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_984 + 64] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[_984 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1078 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_984 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_984 + 64]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1078 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_984 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_984 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _882 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _888 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_882] == mem[_882 + 30 len 2]
                    mem[_888] = mem[_882]
                    mem[_888 + 32] = mem[_882 + 32]
                    mem[_888 + 64] = mem[_882 + 64]
                    require mem[_882 + 96] == mem[_882 + 108 len 20]
                    mem[_888 + 96] = mem[_882 + 96]
                    _940 = mem[_888 + 96]
                    if not mem[_888 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _994 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1020 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1039 = mem[_1020]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1079 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1071] == mem[_1071 + 30 len 2]
                        mem[_1079] = mem[_1071]
                        mem[_1079 + 32] = mem[_1071 + 32]
                        mem[_1079 + 64] = mem[_1071 + 64]
                        require mem[_1071 + 96] == mem[_1071 + 108 len 20]
                        mem[_1079 + 96] = mem[_1071 + 96]
                        if _1039 < mem[_1079 + 32]:
                            revert with 0, 17
                        if uint8(_994) and _1039 - mem[_1079 + 32] > -1 / uint8(_994):
                            revert with 0, 17
                        mem[mem[64]] = (_1039 * uint8(_994)) - (mem[_1079 + 32] * uint8(_994))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1021 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1040 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1021] == mem[_1021 + 30 len 2]
                        mem[_1040] = mem[_1021]
                        mem[_1040 + 32] = mem[_1021 + 32]
                        mem[_1040 + 64] = mem[_1021 + 64]
                        require mem[_1021 + 96] == mem[_1021 + 108 len 20]
                        mem[_1040 + 96] = mem[_1021 + 96]
                        _1107 = mem[_1040 + 64]
                        if block.timestamp < mem[_1040 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1040 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1040 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1040 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_940)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_940)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1171 = mem[_1163]
                        idx = 0
                        s = 0
                        while idx < _1171:
                            mem[mem[64] + 4] = address(_940)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_940), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1310]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1344 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1366 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1366] = mem[_1344]
                            mem[_1366 + 32] = mem[_1344 + 32]
                            mem[_1366 + 64] = mem[_1344 + 64]
                            if 24 * 3600 > !mem[_1366 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1366 + 64] + (24 * 3600):
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
                        if s and sub_1eca8abe > -1 / s:
                            revert with 0, 17
                        if sub_b175c7c7 > !(s * sub_1eca8abe):
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if block.timestamp < mem[_1040 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1040 + 64] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[_1040 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1107 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1040 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1040 + 64]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1107 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1040 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1040 + 64]) / 24 * 3600)
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
                    _763 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_763]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _803 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_803] = mem[_792]
                    mem[_803 + 32] = mem[_792 + 32]
                    mem[_803 + 64] = mem[_792 + 64]
                    if 24 * 3600 > !mem[_803 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_803 + 64] + (24 * 3600):
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
                if s and sub_1eca8abe > -1 / s:
                    revert with 0, 17
                if sub_b175c7c7 > !(s * sub_1eca8abe):
                    revert with 0, 17
                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1120]:
                    revert with 0, 17
                if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1120]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1120]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1120]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1120]) / 24 * 3600)
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
                    _764 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_764]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _794 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _804 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_804] = mem[_794]
                    mem[_804 + 32] = mem[_794 + 32]
                    mem[_804 + 64] = mem[_794 + 64]
                    if 24 * 3600 > !mem[_804 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_804 + 64] + (24 * 3600):
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
                if s and sub_1eca8abe > -1 / s:
                    revert with 0, 17
                if sub_b175c7c7 > !(s * sub_1eca8abe):
                    revert with 0, 17
                if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[(12 * ceil32(return_data.size)) + 1248]:
                    revert with 0, 17
                if block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[(12 * ceil32(return_data.size)) + 1248]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1248]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (ext_call.return_data[64] * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1248]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[(12 * ceil32(return_data.size)) + 1248]) / 24 * 3600)
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
                _762 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_762]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _790 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _802 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_802] = mem[_790]
                mem[_802 + 32] = mem[_790 + 32]
                mem[_802 + 64] = mem[_790 + 64]
                if 24 * 3600 > !mem[_802 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_802 + 64] + (24 * 3600):
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
                _838 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_838] == bool(mem[_838])
                if not mem[_838]:
                    mem[mem[64] + 4] = arg1
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _865 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _879 = mem[_865]
                    require mem[_865] == mem[_865 + 12 len 20]
                    if not mem[_865 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _917 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _927 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _951 = mem[_927]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _980 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1013 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_980] == mem[_980 + 30 len 2]
                        mem[_1013] = mem[_980]
                        mem[_1013 + 32] = mem[_980 + 32]
                        mem[_1013 + 64] = mem[_980 + 64]
                        require mem[_980 + 96] == mem[_980 + 108 len 20]
                        mem[_1013 + 96] = mem[_980 + 96]
                        if _951 < mem[_1013 + 32]:
                            revert with 0, 17
                        if uint8(_917) and _951 - mem[_1013 + 32] > -1 / uint8(_917):
                            revert with 0, 17
                        mem[mem[64]] = (_951 * uint8(_917)) - (mem[_1013 + 32] * uint8(_917))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _952 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_928] == mem[_928 + 30 len 2]
                        mem[_952] = mem[_928]
                        mem[_952 + 32] = mem[_928 + 32]
                        mem[_952 + 64] = mem[_928 + 64]
                        require mem[_928 + 96] == mem[_928 + 108 len 20]
                        mem[_952 + 96] = mem[_928 + 96]
                        _1066 = mem[_952 + 64]
                        if block.timestamp < mem[_952 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_952 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_952 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_952 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_879)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_879)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1130 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1141 = mem[_1130]
                        idx = 0
                        s = 0
                        while idx < _1141:
                            mem[mem[64] + 4] = address(_879)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_879), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1315]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1354 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1371 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1371] = mem[_1354]
                            mem[_1371 + 32] = mem[_1354 + 32]
                            mem[_1371 + 64] = mem[_1354 + 64]
                            if 24 * 3600 > !mem[_1371 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1371 + 64] + (24 * 3600):
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
                        if s and sub_1eca8abe > -1 / s:
                            revert with 0, 17
                        if sub_b175c7c7 > !(s * sub_1eca8abe):
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if block.timestamp < mem[_952 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_952 + 64] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[_952 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1066 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_952 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_952 + 64]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1066 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_952 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_952 + 64]) / 24 * 3600)
                else:
                    staticcall sub_93066351Address.getStake(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _880 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_866] == mem[_866 + 30 len 2]
                    mem[_880] = mem[_866]
                    mem[_880 + 32] = mem[_866 + 32]
                    mem[_880 + 64] = mem[_866 + 64]
                    require mem[_866 + 96] == mem[_866 + 108 len 20]
                    mem[_880 + 96] = mem[_866 + 96]
                    _922 = mem[_880 + 96]
                    if not mem[_880 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _970 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _981 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1017 = mem[_981]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1034 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1067 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1034] == mem[_1034 + 30 len 2]
                        mem[_1067] = mem[_1034]
                        mem[_1067 + 32] = mem[_1034 + 32]
                        mem[_1067 + 64] = mem[_1034 + 64]
                        require mem[_1034 + 96] == mem[_1034 + 108 len 20]
                        mem[_1067 + 96] = mem[_1034 + 96]
                        if _1017 < mem[_1067 + 32]:
                            revert with 0, 17
                        if uint8(_970) and _1017 - mem[_1067 + 32] > -1 / uint8(_970):
                            revert with 0, 17
                        mem[mem[64]] = (_1017 * uint8(_970)) - (mem[_1067 + 32] * uint8(_970))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _982 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1018 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_982] == mem[_982 + 30 len 2]
                        mem[_1018] = mem[_982]
                        mem[_1018 + 32] = mem[_982 + 32]
                        mem[_1018 + 64] = mem[_982 + 64]
                        require mem[_982 + 96] == mem[_982 + 108 len 20]
                        mem[_1018 + 96] = mem[_982 + 96]
                        _1102 = mem[_1018 + 64]
                        if block.timestamp < mem[_1018 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1018 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1018 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1018 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_922)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_922)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1152 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1162 = mem[_1152]
                        idx = 0
                        s = 0
                        while idx < _1162:
                            mem[mem[64] + 4] = address(_922)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_922), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1316]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1356 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1372 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1372] = mem[_1356]
                            mem[_1372 + 32] = mem[_1356 + 32]
                            mem[_1372 + 64] = mem[_1356 + 64]
                            if 24 * 3600 > !mem[_1372 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1372 + 64] + (24 * 3600):
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
                        if s and sub_1eca8abe > -1 / s:
                            revert with 0, 17
                        if sub_b175c7c7 > !(s * sub_1eca8abe):
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if block.timestamp < mem[_1018 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1018 + 64] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[_1018 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1102 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1018 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1018 + 64]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1102 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1018 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1018 + 64]) / 24 * 3600)
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
                _846 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_846] == bool(mem[_846])
                if not mem[_846]:
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
                    _889 = mem[_884]
                    require mem[_884] == mem[_884 + 12 len 20]
                    if not mem[_884 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _945 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _965 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _987 = mem[_965]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1026 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1041 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1026] == mem[_1026 + 30 len 2]
                        mem[_1041] = mem[_1026]
                        mem[_1041 + 32] = mem[_1026 + 32]
                        mem[_1041 + 64] = mem[_1026 + 64]
                        require mem[_1026 + 96] == mem[_1026 + 108 len 20]
                        mem[_1041 + 96] = mem[_1026 + 96]
                        if _987 < mem[_1041 + 32]:
                            revert with 0, 17
                        if uint8(_945) and _987 - mem[_1041 + 32] > -1 / uint8(_945):
                            revert with 0, 17
                        mem[mem[64]] = (_987 * uint8(_945)) - (mem[_1041 + 32] * uint8(_945))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _966 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _988 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_966] == mem[_966 + 30 len 2]
                        mem[_988] = mem[_966]
                        mem[_988 + 32] = mem[_966 + 32]
                        mem[_988 + 64] = mem[_966 + 64]
                        require mem[_966 + 96] == mem[_966 + 108 len 20]
                        mem[_988 + 96] = mem[_966 + 96]
                        _1086 = mem[_988 + 64]
                        if block.timestamp < mem[_988 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_988 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_988 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_988 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_889)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_889)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1145 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1156 = mem[_1145]
                        idx = 0
                        s = 0
                        while idx < _1156:
                            mem[mem[64] + 4] = address(_889)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_889), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1313]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1350 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1369 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1369] = mem[_1350]
                            mem[_1369 + 32] = mem[_1350 + 32]
                            mem[_1369 + 64] = mem[_1350 + 64]
                            if 24 * 3600 > !mem[_1369 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1369 + 64] + (24 * 3600):
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
                        if s and sub_1eca8abe > -1 / s:
                            revert with 0, 17
                        if sub_b175c7c7 > !(s * sub_1eca8abe):
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if block.timestamp < mem[_988 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_988 + 64] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[_988 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1086 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_988 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_988 + 64]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1086 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_988 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_988 + 64]) / 24 * 3600)
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
                    _890 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_885] == mem[_885 + 30 len 2]
                    mem[_890] = mem[_885]
                    mem[_890 + 32] = mem[_885 + 32]
                    mem[_890 + 64] = mem[_885 + 64]
                    require mem[_885 + 96] == mem[_885 + 108 len 20]
                    mem[_890 + 96] = mem[_885 + 96]
                    _950 = mem[_890 + 96]
                    if not mem[_890 + 108 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[(6 * ceil32(return_data.size)) + 608]:
                        _1008 = mem[(6 * ceil32(return_data.size)) + 736]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1027 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1045 = mem[_1027]
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1073 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1087 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1073] == mem[_1073 + 30 len 2]
                        mem[_1087] = mem[_1073]
                        mem[_1087 + 32] = mem[_1073 + 32]
                        mem[_1087 + 64] = mem[_1073 + 64]
                        require mem[_1073 + 96] == mem[_1073 + 108 len 20]
                        mem[_1087 + 96] = mem[_1073 + 96]
                        if _1045 < mem[_1087 + 32]:
                            revert with 0, 17
                        if uint8(_1008) and _1045 - mem[_1087 + 32] > -1 / uint8(_1008):
                            revert with 0, 17
                        mem[mem[64]] = (_1045 * uint8(_1008)) - (mem[_1087 + 32] * uint8(_1008))
                    else:
                        staticcall sub_93066351Address.getStake(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1028 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1046 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1028] == mem[_1028 + 30 len 2]
                        mem[_1046] = mem[_1028]
                        mem[_1046 + 32] = mem[_1028 + 32]
                        mem[_1046 + 64] = mem[_1028 + 64]
                        require mem[_1028 + 96] == mem[_1028 + 108 len 20]
                        mem[_1046 + 96] = mem[_1028 + 96]
                        _1112 = mem[_1046 + 64]
                        if block.timestamp < mem[_1046 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1046 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1046 + 64]:
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1046 + 64] * sub_d23270a3) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = address(_950)
                        staticcall sub_f43bc155Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_950)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1173 = mem[_1165]
                        idx = 0
                        s = 0
                        while idx < _1173:
                            mem[mem[64] + 4] = address(_950)
                            mem[mem[64] + 36] = idx
                            staticcall sub_f43bc155Address.0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(_950), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args mem[_1314]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1370 = mem[64]
                            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                                revert with 0, 65
                            mem[64] = mem[64] + 96
                            mem[_1370] = mem[_1352]
                            mem[_1370 + 32] = mem[_1352 + 32]
                            mem[_1370 + 64] = mem[_1352 + 64]
                            if 24 * 3600 > !mem[_1370 + 64]:
                                revert with 0, 17
                            if block.timestamp < mem[_1370 + 64] + (24 * 3600):
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
                        if s and sub_1eca8abe > -1 / s:
                            revert with 0, 17
                        if sub_b175c7c7 > !(s * sub_1eca8abe):
                            revert with 0, 17
                        if mem[(6 * ceil32(return_data.size)) + 702 len 2] and sub_b175c7c7 + (s * sub_1eca8abe) > -1 / mem[(6 * ceil32(return_data.size)) + 702 len 2]:
                            revert with 0, 17
                        if block.timestamp < mem[_1046 + 64]:
                            revert with 0, 17
                        if block.timestamp - mem[_1046 + 64] and (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2]) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2]) > -1 / block.timestamp - mem[_1046 + 64]:
                            revert with 0, 17
                        if (block.timestamp * sub_d23270a3) - (_1112 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1046 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1046 + 64]) / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64]] = ((block.timestamp * sub_d23270a3) - (_1112 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) + (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * block.timestamp) - (sub_b175c7c7 * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1046 + 64]) - (s * sub_1eca8abe * mem[(6 * ceil32(return_data.size)) + 702 len 2] * mem[_1046 + 64]) / 24 * 3600)
    return memory
      from mem[64]
       len 32
}



}
