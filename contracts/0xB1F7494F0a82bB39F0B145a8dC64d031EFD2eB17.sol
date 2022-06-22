contract main {




// =====================  Runtime code  =====================


#
#  - sub_cac404a4(?)
#  - sub_e18a8bfb(?)
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
mapping of uint8 stor30;
mapping of uint8 stor31;
mapping of uint8 stor32;
mapping of uint8 stor33;

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
    stor30[address(arg1)] = 1
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
    stor30[address(arg1)] = 0
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
        mem[32] = 31
        stor31[mem[(32 * idx) + 140 len 20]] = 1
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
        mem[32] = 31
        stor31[mem[(32 * idx) + 140 len 20]] = 0
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
    staticcall sub_93066351Address.0xbaa51f86 with:
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
    staticcall sub_93066351Address.0xce325bf8 with:
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
        if not stor31[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You are not on the whitelist'
        if stor32[msg.sender] > !arg1:
            revert with 0, 17
        if stor32[msg.sender] + arg1 > sub_9dd85f17:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You cannot mint more GEN0 during pre-sale'
    else:
        if not uint8(stor8.field_184):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: GEN0 sale has not started yet'
        if not uint8(stor8.field_160):
            if stor33[msg.sender] > !arg1:
                revert with 0, 17
            if stor33[msg.sender] + arg1 > sub_508881c1:
                revert with 0, 'Game: You cannot mint more GEN0'
        else:
            if not stor31[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game: You are not on the whitelist'
            if stor32[msg.sender] > !arg1:
                revert with 0, 17
            if stor32[msg.sender] + arg1 > sub_9dd85f17:
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
            mem[32] = 33
            if stor33[msg.sender] == 255:
                revert with 0, 17
            stor33[msg.sender] = uint8(stor33[msg.sender] + 1)
        else:
            mem[32] = 32
            if stor32[msg.sender] == 255:
                revert with 0, 17
            stor32[msg.sender] = uint8(stor32[msg.sender] + 1)
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
    staticcall sub_93066351Address.0xbaa51f86 with:
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
        staticcall sub_93066351Address.0xce325bf8 with:
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
            call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len (32 * _274) + 32]
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
                staticcall randomizerAddress.randomSeed(uint256 arg1) with:
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
                call sub_809deb63Address.updateOriginAccess(uint16[] arg1) with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len (32 * _276) + 32]
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
                    staticcall randomizerAddress.randomSeed(uint256 arg1) with:
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
                    staticcall randomizerAddress.randomSeed(uint256 arg1) with:
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
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _1342 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        staticcall sub_809deb63Address.getTokenWriteBlock(uint256 arg1) with:
                gas gas_remaining wei
               args _1342
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1346 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1346] == mem[_1346 + 24 len 8]
        if mem[_1346 + 24 len 8] >= block.number:
            revert with 0, 'Game: Nope!'
        mem[mem[64] + 4] = _1342
        staticcall sub_809deb63Address.0x32385e25 with:
                gas gas_remaining wei
               args _1342
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1351 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1351] == mem[_1351 + 24 len 8]
        if mem[_1351 + 24 len 8] >= block.number:
            revert with 0, 'Game: Nope!'
        mem[mem[64] + 4] = _1342
        staticcall sub_93066351Address.0xbaa51f86 with:
                gas gas_remaining wei
               args _1342
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1357 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1357] == bool(mem[_1357])
        if not mem[_1357]:
            revert with 0, 'Game: Token is not staked'
        _1360 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1360] = 0
        mem[_1360 + 32] = 0
        mem[_1360 + 64] = 0
        mem[_1360 + 96] = 0
        _1363 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1363] = 0
        mem[_1363 + 32] = 0
        mem[_1363 + 64] = 0
        mem[_1363 + 96] = 0
        mem[_1363 + 128] = 0
        mem[_1363 + 160] = 0
        mem[_1363 + 192] = 0
        mem[_1363 + 224] = 0
        mem[_1363 + 256] = 0
        mem[_1363 + 288] = 0
        mem[_1363 + 320] = 0
        staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args _1342
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        _1367 = mem[64]
        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 352
        require mem[_1366] == bool(mem[_1366])
        mem[_1367] = mem[_1366]
        require mem[_1366 + 32] == bool(mem[_1366 + 32])
        mem[_1367 + 32] = mem[_1366 + 32]
        require mem[_1366 + 64] == bool(mem[_1366 + 64])
        mem[_1367 + 64] = mem[_1366 + 64]
        require mem[_1366 + 96] == mem[_1366 + 126 len 2]
        mem[_1367 + 96] = mem[_1366 + 96]
        mem[_1367 + 128] = mem[_1366 + 128]
        require mem[_1366 + 160] == mem[_1366 + 191 len 1]
        mem[_1367 + 160] = mem[_1366 + 160]
        mem[_1367 + 192] = mem[_1366 + 192]
        require mem[_1366 + 224] == mem[_1366 + 255 len 1]
        mem[_1367 + 224] = mem[_1366 + 224]
        require mem[_1366 + 256] == mem[_1366 + 287 len 1]
        mem[_1367 + 256] = mem[_1366 + 256]
        require mem[_1366 + 288] == mem[_1366 + 319 len 1]
        mem[_1367 + 288] = mem[_1366 + 288]
        require mem[_1366 + 320] == mem[_1366 + 344 len 8]
        mem[_1367 + 320] = mem[_1366 + 320]
        mem[mem[64] + 4] = _1342
        staticcall sub_93066351Address.0xbaa51f86 with:
                gas gas_remaining wei
               args _1342
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1381 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1381] == bool(mem[_1381])
        if not mem[_1381]:
            mem[mem[64] + 4] = _1342
            staticcall sub_809deb63Address.0x6352211e with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1389 = mem[_1387]
            require mem[_1387] == mem[_1387 + 12 len 20]
            if not mem[_1387 + 12 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if 0 == mem[_1367 + 126 len 2]:
                mem[mem[64] + 4] = _1342
                staticcall sub_93066351Address.0xbaa51f86 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1404] == bool(mem[_1404])
                if not mem[_1404]:
                    mem[mem[64] + 4] = _1342
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args _1342
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1427 = mem[_1424]
                    require mem[_1424] == mem[_1424 + 12 len 20]
                    if not mem[_1424 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[_1367 + 32]:
                        _1462 = mem[_1367 + 160]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1472 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1478 = mem[_1472]
                        staticcall sub_93066351Address.0xce325bf8 with:
                                gas gas_remaining wei
                               args _1342
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1504 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1514 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_1504] == mem[_1504 + 30 len 2]
                        mem[_1514] = mem[_1504]
                        mem[_1514 + 32] = mem[_1504 + 32]
                        mem[_1514 + 64] = mem[_1504 + 64]
                        require mem[_1504 + 96] == mem[_1504 + 108 len 20]
                        mem[_1514 + 96] = mem[_1504 + 96]
                        if _1478 < mem[_1514 + 32]:
                            revert with 0, 17
                        if uint8(_1462) and _1478 - mem[_1514 + 32] > -1 / uint8(_1462):
                            revert with 0, 17
                        if s > !((_1478 * uint8(_1462)) - (mem[_1514 + 32] * uint8(_1462))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (_1478 * uint8(_1462)) - (mem[_1514 + 32] * uint8(_1462))
                        continue 
                    staticcall sub_93066351Address.0xce325bf8 with:
                            gas gas_remaining wei
                           args _1342
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1479 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1473] == mem[_1473 + 30 len 2]
                    mem[_1479] = mem[_1473]
                    mem[_1479 + 32] = mem[_1473 + 32]
                    mem[_1479 + 64] = mem[_1473 + 64]
                    require mem[_1473 + 96] == mem[_1473 + 108 len 20]
                    mem[_1479 + 96] = mem[_1473 + 96]
                    _1551 = mem[_1479 + 64]
                    if block.timestamp < mem[_1479 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1479 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1479 + 64]:
                        revert with 0, 17
                    if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1479 + 64] * sub_d23270a3) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = address(_1427)
                    staticcall sub_f43bc155Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1427)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1667 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1695 = mem[_1667]
                    t = 0
                    u = 0
                    while t < _1695:
                        mem[mem[64] + 4] = address(_1427)
                        mem[mem[64] + 36] = t
                        staticcall sub_f43bc155Address.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(_1427), t
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2079 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[_2079]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2105 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2119 = mem[64]
                        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 96
                        mem[_2119] = mem[_2105]
                        mem[_2119 + 32] = mem[_2105 + 32]
                        mem[_2119 + 64] = mem[_2105 + 64]
                        if 24 * 3600 > !mem[_2119 + 64]:
                            revert with 0, 17
                        if block.timestamp < mem[_2119 + 64] + (24 * 3600):
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
                    if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                        revert with 0, 17
                    if block.timestamp < mem[_1479 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_1479 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_1479 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_1551 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1479 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1479 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_1551 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1479 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1479 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_1551 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1479 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1479 + 64]) / 24 * 3600)
                    continue 
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1428 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1425] == mem[_1425 + 30 len 2]
                mem[_1428] = mem[_1425]
                mem[_1428 + 32] = mem[_1425 + 32]
                mem[_1428 + 64] = mem[_1425 + 64]
                require mem[_1425 + 96] == mem[_1425 + 108 len 20]
                mem[_1428 + 96] = mem[_1425 + 96]
                _1467 = mem[_1428 + 96]
                if not mem[_1428 + 108 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1367 + 32]:
                    _1488 = mem[_1367 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1518 = mem[_1505]
                    staticcall sub_93066351Address.0xce325bf8 with:
                            gas gas_remaining wei
                           args _1342
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1552 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1540] == mem[_1540 + 30 len 2]
                    mem[_1552] = mem[_1540]
                    mem[_1552 + 32] = mem[_1540 + 32]
                    mem[_1552 + 64] = mem[_1540 + 64]
                    require mem[_1540 + 96] == mem[_1540 + 108 len 20]
                    mem[_1552 + 96] = mem[_1540 + 96]
                    if _1518 < mem[_1552 + 32]:
                        revert with 0, 17
                    if uint8(_1488) and _1518 - mem[_1552 + 32] > -1 / uint8(_1488):
                        revert with 0, 17
                    if s > !((_1518 * uint8(_1488)) - (mem[_1552 + 32] * uint8(_1488))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_1518 * uint8(_1488)) - (mem[_1552 + 32] * uint8(_1488))
                    continue 
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1506 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1519 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1506] == mem[_1506 + 30 len 2]
                mem[_1519] = mem[_1506]
                mem[_1519 + 32] = mem[_1506 + 32]
                mem[_1519 + 64] = mem[_1506 + 64]
                require mem[_1506 + 96] == mem[_1506 + 108 len 20]
                mem[_1519 + 96] = mem[_1506 + 96]
                _1582 = mem[_1519 + 64]
                if block.timestamp < mem[_1519 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1519 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1519 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1519 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_1467)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1467)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1722 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1754 = mem[_1722]
                t = 0
                u = 0
                while t < _1754:
                    mem[mem[64] + 4] = address(_1467)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_1467), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2080 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2080]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2107 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2120 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2120] = mem[_2107]
                    mem[_2120 + 32] = mem[_2107 + 32]
                    mem[_2120 + 64] = mem[_2107 + 64]
                    if 24 * 3600 > !mem[_2120 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2120 + 64] + (24 * 3600):
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
                if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_1519 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1519 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_1519 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_1582 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1519 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1519 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_1582 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1519 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1519 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_1582 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1519 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1519 + 64]) / 24 * 3600)
                continue 
            mem[mem[64] + 4] = mem[_1387 + 12 len 20]
            staticcall sub_c0c675edAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1389)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1410 = mem[_1407]
            t = 0
            u = 0
            while t < _1410:
                mem[mem[64] + 4] = address(_1389)
                mem[mem[64] + 36] = t
                staticcall sub_c0c675edAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_1389), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2078 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2078]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2103 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2118 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2118] = mem[_2103]
                mem[_2118 + 32] = mem[_2103 + 32]
                mem[_2118 + 64] = mem[_2103 + 64]
                if 24 * 3600 > !mem[_2118 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2118 + 64] + (24 * 3600):
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
            if block.timestamp < mem[_1367 + 128]:
                revert with 0, 17
            if not (u * sub_4b33b36e) + sub_fc7c54de:
                revert with 0, 18
            if uint16(block.timestamp - mem[_1367 + 128] / (u * sub_4b33b36e) + sub_fc7c54de) > mem[_1367 + 126 len 2]:
                mem[_1367 + 96] = 0
                mem[mem[64] + 4] = _1342
                staticcall sub_93066351Address.0xbaa51f86 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2156] == bool(mem[_2156])
                if not mem[_2156]:
                    mem[mem[64] + 4] = _1342
                    staticcall sub_809deb63Address.0x6352211e with:
                            gas gas_remaining wei
                           args _1342
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2176 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2184 = mem[_2176]
                    require mem[_2176] == mem[_2176 + 12 len 20]
                    if not mem[_2176 + 12 len 20]:
                        revert with 0, 'Game: The owner cannot be address(0)'
                    if not mem[_1367 + 32]:
                        _2222 = mem[_1367 + 160]
                        staticcall sub_93066351Address.0x8c59295c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2235 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2252 = mem[_2235]
                        staticcall sub_93066351Address.0xce325bf8 with:
                                gas gas_remaining wei
                               args _1342
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2287 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _2310 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 128
                        require mem[_2287] == mem[_2287 + 30 len 2]
                        mem[_2310] = mem[_2287]
                        mem[_2310 + 32] = mem[_2287 + 32]
                        mem[_2310 + 64] = mem[_2287 + 64]
                        require mem[_2287 + 96] == mem[_2287 + 108 len 20]
                        mem[_2310 + 96] = mem[_2287 + 96]
                        if _2252 < mem[_2310 + 32]:
                            revert with 0, 17
                        if uint8(_2222) and _2252 - mem[_2310 + 32] > -1 / uint8(_2222):
                            revert with 0, 17
                        if s > !((_2252 * uint8(_2222)) - (mem[_2310 + 32] * uint8(_2222))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (_2252 * uint8(_2222)) - (mem[_2310 + 32] * uint8(_2222))
                        continue 
                    staticcall sub_93066351Address.0xce325bf8 with:
                            gas gas_remaining wei
                           args _1342
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2236 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2253 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2236] == mem[_2236 + 30 len 2]
                    mem[_2253] = mem[_2236]
                    mem[_2253 + 32] = mem[_2236 + 32]
                    mem[_2253 + 64] = mem[_2236 + 64]
                    require mem[_2236 + 96] == mem[_2236 + 108 len 20]
                    mem[_2253 + 96] = mem[_2236 + 96]
                    _2365 = mem[_2253 + 64]
                    if block.timestamp < mem[_2253 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2253 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2253 + 64]:
                        revert with 0, 17
                    if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2253 + 64] * sub_d23270a3) / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = address(_2184)
                    staticcall sub_f43bc155Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(_2184)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2439 = mem[_2433]
                    t = 0
                    u = 0
                    while t < _2439:
                        mem[mem[64] + 4] = address(_2184)
                        mem[mem[64] + 36] = t
                        staticcall sub_f43bc155Address.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(_2184), t
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2590 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[_2590]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2625 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2646 = mem[64]
                        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 96
                        mem[_2646] = mem[_2625]
                        mem[_2646 + 32] = mem[_2625 + 32]
                        mem[_2646 + 64] = mem[_2625 + 64]
                        if 24 * 3600 > !mem[_2646 + 64]:
                            revert with 0, 17
                        if block.timestamp < mem[_2646 + 64] + (24 * 3600):
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
                    if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                        revert with 0, 17
                    if block.timestamp < mem[_2253 + 64]:
                        revert with 0, 17
                    if block.timestamp - mem[_2253 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_2253 + 64]:
                        revert with 0, 17
                    if (block.timestamp * sub_d23270a3) - (_2365 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2253 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2253 + 64]) / 24 * 3600):
                        revert with 0, 17
                    if s > !(((block.timestamp * sub_d23270a3) - (_2365 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2253 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2253 + 64]) / 24 * 3600)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((block.timestamp * sub_d23270a3) - (_2365 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2253 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2253 + 64]) / 24 * 3600)
                    continue 
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2185 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2177] == mem[_2177 + 30 len 2]
                mem[_2185] = mem[_2177]
                mem[_2185 + 32] = mem[_2177 + 32]
                mem[_2185 + 64] = mem[_2177 + 64]
                require mem[_2177 + 96] == mem[_2177 + 108 len 20]
                mem[_2185 + 96] = mem[_2177 + 96]
                _2227 = mem[_2185 + 96]
                if not mem[_2185 + 108 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1367 + 32]:
                    _2271 = mem[_1367 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2288 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2314 = mem[_2288]
                    staticcall sub_93066351Address.0xce325bf8 with:
                            gas gas_remaining wei
                           args _1342
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2344 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2366 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2344] == mem[_2344 + 30 len 2]
                    mem[_2366] = mem[_2344]
                    mem[_2366 + 32] = mem[_2344 + 32]
                    mem[_2366 + 64] = mem[_2344 + 64]
                    require mem[_2344 + 96] == mem[_2344 + 108 len 20]
                    mem[_2366 + 96] = mem[_2344 + 96]
                    if _2314 < mem[_2366 + 32]:
                        revert with 0, 17
                    if uint8(_2271) and _2314 - mem[_2366 + 32] > -1 / uint8(_2271):
                        revert with 0, 17
                    if s > !((_2314 * uint8(_2271)) - (mem[_2366 + 32] * uint8(_2271))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_2314 * uint8(_2271)) - (mem[_2366 + 32] * uint8(_2271))
                    continue 
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2315 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2289] == mem[_2289 + 30 len 2]
                mem[_2315] = mem[_2289]
                mem[_2315 + 32] = mem[_2289 + 32]
                mem[_2315 + 64] = mem[_2289 + 64]
                require mem[_2289 + 96] == mem[_2289 + 108 len 20]
                mem[_2315 + 96] = mem[_2289 + 96]
                _2407 = mem[_2315 + 64]
                if block.timestamp < mem[_2315 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2315 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2315 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2315 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_2227)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2227)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2455 = mem[_2447]
                t = 0
                u = 0
                while t < _2455:
                    mem[mem[64] + 4] = address(_2227)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_2227), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2591]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2647 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2647] = mem[_2627]
                    mem[_2647 + 32] = mem[_2627 + 32]
                    mem[_2647 + 64] = mem[_2627 + 64]
                    if 24 * 3600 > !mem[_2647 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2647 + 64] + (24 * 3600):
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
                if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_2315 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2315 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_2315 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2407 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2315 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2315 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2407 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2315 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2315 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2407 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2315 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2315 + 64]) / 24 * 3600)
                continue 
            if mem[_1367 + 126 len 2] < uint16(block.timestamp - mem[_1367 + 128] / (u * sub_4b33b36e) + sub_fc7c54de):
                revert with 0, 17
            mem[_1367 + 96] = uint16(mem[_1367 + 126 len 2] - uint16(block.timestamp - mem[_1367 + 128] / (u * sub_4b33b36e) + sub_fc7c54de))
            mem[mem[64] + 4] = _1342
            staticcall sub_93066351Address.0xbaa51f86 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2164 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2164] == bool(mem[_2164])
            if not mem[_2164]:
                mem[mem[64] + 4] = _1342
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2192 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2198 = mem[_2192]
                require mem[_2192] == mem[_2192 + 12 len 20]
                if not mem[_2192 + 12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1367 + 32]:
                    _2246 = mem[_1367 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2294 = mem[_2266]
                    staticcall sub_93066351Address.0xce325bf8 with:
                            gas gas_remaining wei
                           args _1342
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2346 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2330] == mem[_2330 + 30 len 2]
                    mem[_2346] = mem[_2330]
                    mem[_2346 + 32] = mem[_2330 + 32]
                    mem[_2346 + 64] = mem[_2330 + 64]
                    require mem[_2330 + 96] == mem[_2330 + 108 len 20]
                    mem[_2346 + 96] = mem[_2330 + 96]
                    if _2294 < mem[_2346 + 32]:
                        revert with 0, 17
                    if uint8(_2246) and _2294 - mem[_2346 + 32] > -1 / uint8(_2246):
                        revert with 0, 17
                    if s > !((_2294 * uint8(_2246)) - (mem[_2346 + 32] * uint8(_2246))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_2294 * uint8(_2246)) - (mem[_2346 + 32] * uint8(_2246))
                    continue 
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2295 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2267] == mem[_2267 + 30 len 2]
                mem[_2295] = mem[_2267]
                mem[_2295 + 32] = mem[_2267 + 32]
                mem[_2295 + 64] = mem[_2267 + 64]
                require mem[_2267 + 96] == mem[_2267 + 108 len 20]
                mem[_2295 + 96] = mem[_2267 + 96]
                _2389 = mem[_2295 + 64]
                if block.timestamp < mem[_2295 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2295 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2295 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2295 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_2198)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2198)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2442 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2450 = mem[_2442]
                t = 0
                u = 0
                while t < _2450:
                    mem[mem[64] + 4] = address(_2198)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_2198), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2588 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2588]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2621 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2644 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2644] = mem[_2621]
                    mem[_2644 + 32] = mem[_2621 + 32]
                    mem[_2644 + 64] = mem[_2621 + 64]
                    if 24 * 3600 > !mem[_2644 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2644 + 64] + (24 * 3600):
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
                if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_2295 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2295 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_2295 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2389 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2295 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2295 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2389 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2295 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2295 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2389 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2295 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2295 + 64]) / 24 * 3600)
                continue 
            staticcall sub_93066351Address.0xce325bf8 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2199 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2193] == mem[_2193 + 30 len 2]
            mem[_2199] = mem[_2193]
            mem[_2199 + 32] = mem[_2193 + 32]
            mem[_2199 + 64] = mem[_2193 + 64]
            require mem[_2193 + 96] == mem[_2193 + 108 len 20]
            mem[_2199 + 96] = mem[_2193 + 96]
            _2251 = mem[_2199 + 96]
            if not mem[_2199 + 108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1367 + 32]:
                _2305 = mem[_1367 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2331 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2350 = mem[_2331]
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2382 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2390 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2382] == mem[_2382 + 30 len 2]
                mem[_2390] = mem[_2382]
                mem[_2390 + 32] = mem[_2382 + 32]
                mem[_2390 + 64] = mem[_2382 + 64]
                require mem[_2382 + 96] == mem[_2382 + 108 len 20]
                mem[_2390 + 96] = mem[_2382 + 96]
                if _2350 < mem[_2390 + 32]:
                    revert with 0, 17
                if uint8(_2305) and _2350 - mem[_2390 + 32] > -1 / uint8(_2305):
                    revert with 0, 17
                if s > !((_2350 * uint8(_2305)) - (mem[_2390 + 32] * uint8(_2305))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_2350 * uint8(_2305)) - (mem[_2390 + 32] * uint8(_2305))
                continue 
            staticcall sub_93066351Address.0xce325bf8 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2332 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2351 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2332] == mem[_2332 + 30 len 2]
            mem[_2351] = mem[_2332]
            mem[_2351 + 32] = mem[_2332 + 32]
            mem[_2351 + 64] = mem[_2332 + 64]
            require mem[_2332 + 96] == mem[_2332 + 108 len 20]
            mem[_2351 + 96] = mem[_2332 + 96]
            _2418 = mem[_2351 + 64]
            if block.timestamp < mem[_2351 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2351 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2351 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2351 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = address(_2251)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2251)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2458 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2466 = mem[_2458]
            t = 0
            u = 0
            while t < _2466:
                mem[mem[64] + 4] = address(_2251)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_2251), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2589]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2623 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2645 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2645] = mem[_2623]
                mem[_2645 + 32] = mem[_2623 + 32]
                mem[_2645 + 64] = mem[_2623 + 64]
                if 24 * 3600 > !mem[_2645 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2645 + 64] + (24 * 3600):
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
            if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                revert with 0, 17
            if block.timestamp < mem[_2351 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2351 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_2351 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2418 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2351 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2351 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2418 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2351 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2351 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2418 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2351 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2351 + 64]) / 24 * 3600)
            continue 
        staticcall sub_93066351Address.0xce325bf8 with:
                gas gas_remaining wei
               args _1342
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1388 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _1390 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_1388] == mem[_1388 + 30 len 2]
        mem[_1390] = mem[_1388]
        mem[_1390 + 32] = mem[_1388 + 32]
        mem[_1390 + 64] = mem[_1388 + 64]
        require mem[_1388 + 96] == mem[_1388 + 108 len 20]
        mem[_1390 + 96] = mem[_1388 + 96]
        _1398 = mem[_1390 + 96]
        if not mem[_1390 + 108 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if 0 == mem[_1367 + 126 len 2]:
            mem[mem[64] + 4] = _1342
            staticcall sub_93066351Address.0xbaa51f86 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1414 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1414] == bool(mem[_1414])
            if not mem[_1414]:
                mem[mem[64] + 4] = _1342
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1447 = mem[_1439]
                require mem[_1439] == mem[_1439 + 12 len 20]
                if not mem[_1439 + 12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1367 + 32]:
                    _1496 = mem[_1367 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1520 = mem[_1508]
                    staticcall sub_93066351Address.0xce325bf8 with:
                            gas gas_remaining wei
                           args _1342
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1556 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_1543] == mem[_1543 + 30 len 2]
                    mem[_1556] = mem[_1543]
                    mem[_1556 + 32] = mem[_1543 + 32]
                    mem[_1556 + 64] = mem[_1543 + 64]
                    require mem[_1543 + 96] == mem[_1543 + 108 len 20]
                    mem[_1556 + 96] = mem[_1543 + 96]
                    if _1520 < mem[_1556 + 32]:
                        revert with 0, 17
                    if uint8(_1496) and _1520 - mem[_1556 + 32] > -1 / uint8(_1496):
                        revert with 0, 17
                    if s > !((_1520 * uint8(_1496)) - (mem[_1556 + 32] * uint8(_1496))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_1520 * uint8(_1496)) - (mem[_1556 + 32] * uint8(_1496))
                    continue 
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1521 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1509] == mem[_1509 + 30 len 2]
                mem[_1521] = mem[_1509]
                mem[_1521 + 32] = mem[_1509 + 32]
                mem[_1521 + 64] = mem[_1509 + 64]
                require mem[_1509 + 96] == mem[_1509 + 108 len 20]
                mem[_1521 + 96] = mem[_1509 + 96]
                _1587 = mem[_1521 + 64]
                if block.timestamp < mem[_1521 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1521 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1521 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1521 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_1447)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1447)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1759 = mem[_1733]
                t = 0
                u = 0
                while t < _1759:
                    mem[mem[64] + 4] = address(_1447)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_1447), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2082 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2082]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2122 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2122] = mem[_2111]
                    mem[_2122 + 32] = mem[_2111 + 32]
                    mem[_2122 + 64] = mem[_2111 + 64]
                    if 24 * 3600 > !mem[_2122 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2122 + 64] + (24 * 3600):
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
                if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_1521 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_1521 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_1521 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_1587 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1521 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1521 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_1587 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1521 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1521 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_1587 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1521 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1521 + 64]) / 24 * 3600)
                continue 
            staticcall sub_93066351Address.0xce325bf8 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1448 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_1440] == mem[_1440 + 30 len 2]
            mem[_1448] = mem[_1440]
            mem[_1448 + 32] = mem[_1440 + 32]
            mem[_1448 + 64] = mem[_1440 + 64]
            require mem[_1440 + 96] == mem[_1440 + 108 len 20]
            mem[_1448 + 96] = mem[_1440 + 96]
            _1501 = mem[_1448 + 96]
            if not mem[_1448 + 108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1367 + 32]:
                _1534 = mem[_1367 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1560 = mem[_1544]
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1575 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1588 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_1575] == mem[_1575 + 30 len 2]
                mem[_1588] = mem[_1575]
                mem[_1588 + 32] = mem[_1575 + 32]
                mem[_1588 + 64] = mem[_1575 + 64]
                require mem[_1575 + 96] == mem[_1575 + 108 len 20]
                mem[_1588 + 96] = mem[_1575 + 96]
                if _1560 < mem[_1588 + 32]:
                    revert with 0, 17
                if uint8(_1534) and _1560 - mem[_1588 + 32] > -1 / uint8(_1534):
                    revert with 0, 17
                if s > !((_1560 * uint8(_1534)) - (mem[_1588 + 32] * uint8(_1534))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_1560 * uint8(_1534)) - (mem[_1588 + 32] * uint8(_1534))
                continue 
            staticcall sub_93066351Address.0xce325bf8 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1545 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1561 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_1545] == mem[_1545 + 30 len 2]
            mem[_1561] = mem[_1545]
            mem[_1561 + 32] = mem[_1545 + 32]
            mem[_1561 + 64] = mem[_1545 + 64]
            require mem[_1545 + 96] == mem[_1545 + 108 len 20]
            mem[_1561 + 96] = mem[_1545 + 96]
            _1615 = mem[_1561 + 64]
            if block.timestamp < mem[_1561 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_1561 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_1561 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_1561 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = address(_1501)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1501)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1799 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1813 = mem[_1799]
            t = 0
            u = 0
            while t < _1813:
                mem[mem[64] + 4] = address(_1501)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_1501), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2083 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2083]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2113 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2123 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2123] = mem[_2113]
                mem[_2123 + 32] = mem[_2113 + 32]
                mem[_2123 + 64] = mem[_2113 + 64]
                if 24 * 3600 > !mem[_2123 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2123 + 64] + (24 * 3600):
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
            if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                revert with 0, 17
            if block.timestamp < mem[_1561 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_1561 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_1561 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_1615 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1561 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1561 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_1615 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1561 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1561 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_1615 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_1561 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_1561 + 64]) / 24 * 3600)
            continue 
        mem[mem[64] + 4] = mem[_1390 + 108 len 20]
        staticcall sub_c0c675edAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(_1398)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1415 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1422 = mem[_1415]
        t = 0
        u = 0
        while t < _1422:
            mem[mem[64] + 4] = address(_1398)
            mem[mem[64] + 36] = t
            staticcall sub_c0c675edAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(_1398), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2081 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            staticcall sub_c0c675edAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_2081]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2121 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2121] = mem[_2109]
            mem[_2121 + 32] = mem[_2109 + 32]
            mem[_2121 + 64] = mem[_2109 + 64]
            if 24 * 3600 > !mem[_2121 + 64]:
                revert with 0, 17
            if block.timestamp < mem[_2121 + 64] + (24 * 3600):
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
        if block.timestamp < mem[_1367 + 128]:
            revert with 0, 17
        if not (u * sub_4b33b36e) + sub_fc7c54de:
            revert with 0, 18
        if uint16(block.timestamp - mem[_1367 + 128] / (u * sub_4b33b36e) + sub_fc7c54de) > mem[_1367 + 126 len 2]:
            mem[_1367 + 96] = 0
            mem[mem[64] + 4] = _1342
            staticcall sub_93066351Address.0xbaa51f86 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2157 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2157] == bool(mem[_2157])
            if not mem[_2157]:
                mem[mem[64] + 4] = _1342
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2178 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2190 = mem[_2178]
                require mem[_2178] == mem[_2178 + 12 len 20]
                if not mem[_2178 + 12 len 20]:
                    revert with 0, 'Game: The owner cannot be address(0)'
                if not mem[_1367 + 32]:
                    _2228 = mem[_1367 + 160]
                    staticcall sub_93066351Address.0x8c59295c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2238 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2262 = mem[_2238]
                    staticcall sub_93066351Address.0xce325bf8 with:
                            gas gas_remaining wei
                           args _1342
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _2324 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 128
                    require mem[_2291] == mem[_2291 + 30 len 2]
                    mem[_2324] = mem[_2291]
                    mem[_2324 + 32] = mem[_2291 + 32]
                    mem[_2324 + 64] = mem[_2291 + 64]
                    require mem[_2291 + 96] == mem[_2291 + 108 len 20]
                    mem[_2324 + 96] = mem[_2291 + 96]
                    if _2262 < mem[_2324 + 32]:
                        revert with 0, 17
                    if uint8(_2228) and _2262 - mem[_2324 + 32] > -1 / uint8(_2228):
                        revert with 0, 17
                    if s > !((_2262 * uint8(_2228)) - (mem[_2324 + 32] * uint8(_2228))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (_2262 * uint8(_2228)) - (mem[_2324 + 32] * uint8(_2228))
                    continue 
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2239 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2263 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2239] == mem[_2239 + 30 len 2]
                mem[_2263] = mem[_2239]
                mem[_2263 + 32] = mem[_2239 + 32]
                mem[_2263 + 64] = mem[_2239 + 64]
                require mem[_2239 + 96] == mem[_2239 + 108 len 20]
                mem[_2263 + 96] = mem[_2239 + 96]
                _2377 = mem[_2263 + 64]
                if block.timestamp < mem[_2263 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2263 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2263 + 64]:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2263 + 64] * sub_d23270a3) / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = address(_2190)
                staticcall sub_f43bc155Address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2190)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2435 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2441 = mem[_2435]
                t = 0
                u = 0
                while t < _2441:
                    mem[mem[64] + 4] = address(_2190)
                    mem[mem[64] + 36] = t
                    staticcall sub_f43bc155Address.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(_2190), t
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2594 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[_2594]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2650 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    mem[_2650] = mem[_2633]
                    mem[_2650 + 32] = mem[_2633 + 32]
                    mem[_2650 + 64] = mem[_2633 + 64]
                    if 24 * 3600 > !mem[_2650 + 64]:
                        revert with 0, 17
                    if block.timestamp < mem[_2650 + 64] + (24 * 3600):
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
                if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                    revert with 0, 17
                if block.timestamp < mem[_2263 + 64]:
                    revert with 0, 17
                if block.timestamp - mem[_2263 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_2263 + 64]:
                    revert with 0, 17
                if (block.timestamp * sub_d23270a3) - (_2377 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2263 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2263 + 64]) / 24 * 3600):
                    revert with 0, 17
                if s > !(((block.timestamp * sub_d23270a3) - (_2377 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2263 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2263 + 64]) / 24 * 3600)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_d23270a3) - (_2377 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2263 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2263 + 64]) / 24 * 3600)
                continue 
            staticcall sub_93066351Address.0xce325bf8 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2191 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2179] == mem[_2179 + 30 len 2]
            mem[_2191] = mem[_2179]
            mem[_2191 + 32] = mem[_2179 + 32]
            mem[_2191 + 64] = mem[_2179 + 64]
            require mem[_2179 + 96] == mem[_2179 + 108 len 20]
            mem[_2191 + 96] = mem[_2179 + 96]
            _2233 = mem[_2191 + 96]
            if not mem[_2191 + 108 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1367 + 32]:
                _2281 = mem[_1367 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2328 = mem[_2292]
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2378 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2345] == mem[_2345 + 30 len 2]
                mem[_2378] = mem[_2345]
                mem[_2378 + 32] = mem[_2345 + 32]
                mem[_2378 + 64] = mem[_2345 + 64]
                require mem[_2345 + 96] == mem[_2345 + 108 len 20]
                mem[_2378 + 96] = mem[_2345 + 96]
                if _2328 < mem[_2378 + 32]:
                    revert with 0, 17
                if uint8(_2281) and _2328 - mem[_2378 + 32] > -1 / uint8(_2281):
                    revert with 0, 17
                if s > !((_2328 * uint8(_2281)) - (mem[_2378 + 32] * uint8(_2281))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_2328 * uint8(_2281)) - (mem[_2378 + 32] * uint8(_2281))
                continue 
            staticcall sub_93066351Address.0xce325bf8 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2329 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2293] == mem[_2293 + 30 len 2]
            mem[_2329] = mem[_2293]
            mem[_2329 + 32] = mem[_2293 + 32]
            mem[_2329 + 64] = mem[_2293 + 64]
            require mem[_2293 + 96] == mem[_2293 + 108 len 20]
            mem[_2329 + 96] = mem[_2293 + 96]
            _2413 = mem[_2329 + 64]
            if block.timestamp < mem[_2329 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2329 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2329 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2329 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = address(_2233)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2233)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2449 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2457 = mem[_2449]
            t = 0
            u = 0
            while t < _2457:
                mem[mem[64] + 4] = address(_2233)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_2233), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2595 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2595]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2651 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2651] = mem[_2635]
                mem[_2651 + 32] = mem[_2635 + 32]
                mem[_2651 + 64] = mem[_2635 + 64]
                if 24 * 3600 > !mem[_2651 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2651 + 64] + (24 * 3600):
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
            if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                revert with 0, 17
            if block.timestamp < mem[_2329 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2329 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_2329 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2413 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2329 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2329 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2413 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2329 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2329 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2413 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2329 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2329 + 64]) / 24 * 3600)
            continue 
        if mem[_1367 + 126 len 2] < uint16(block.timestamp - mem[_1367 + 128] / (u * sub_4b33b36e) + sub_fc7c54de):
            revert with 0, 17
        mem[_1367 + 96] = uint16(mem[_1367 + 126 len 2] - uint16(block.timestamp - mem[_1367 + 128] / (u * sub_4b33b36e) + sub_fc7c54de))
        mem[mem[64] + 4] = _1342
        staticcall sub_93066351Address.0xbaa51f86 with:
                gas gas_remaining wei
               args _1342
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2165] == bool(mem[_2165])
        if not mem[_2165]:
            mem[mem[64] + 4] = _1342
            staticcall sub_809deb63Address.0x6352211e with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2195 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2200 = mem[_2195]
            require mem[_2195] == mem[_2195 + 12 len 20]
            if not mem[_2195 + 12 len 20]:
                revert with 0, 'Game: The owner cannot be address(0)'
            if not mem[_1367 + 32]:
                _2256 = mem[_1367 + 160]
                staticcall sub_93066351Address.0x8c59295c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2276 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2298 = mem[_2276]
                staticcall sub_93066351Address.0xce325bf8 with:
                        gas gas_remaining wei
                       args _1342
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2337 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2352 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 128
                require mem[_2337] == mem[_2337 + 30 len 2]
                mem[_2352] = mem[_2337]
                mem[_2352 + 32] = mem[_2337 + 32]
                mem[_2352 + 64] = mem[_2337 + 64]
                require mem[_2337 + 96] == mem[_2337 + 108 len 20]
                mem[_2352 + 96] = mem[_2337 + 96]
                if _2298 < mem[_2352 + 32]:
                    revert with 0, 17
                if uint8(_2256) and _2298 - mem[_2352 + 32] > -1 / uint8(_2256):
                    revert with 0, 17
                if s > !((_2298 * uint8(_2256)) - (mem[_2352 + 32] * uint8(_2256))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_2298 * uint8(_2256)) - (mem[_2352 + 32] * uint8(_2256))
                continue 
            staticcall sub_93066351Address.0xce325bf8 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2299 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2277] == mem[_2277 + 30 len 2]
            mem[_2299] = mem[_2277]
            mem[_2299 + 32] = mem[_2277 + 32]
            mem[_2299 + 64] = mem[_2277 + 64]
            require mem[_2277 + 96] == mem[_2277 + 108 len 20]
            mem[_2299 + 96] = mem[_2277 + 96]
            _2397 = mem[_2299 + 64]
            if block.timestamp < mem[_2299 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2299 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2299 + 64]:
                revert with 0, 17
            if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2299 + 64] * sub_d23270a3) / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = address(_2200)
            staticcall sub_f43bc155Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2200)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2444 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2452 = mem[_2444]
            t = 0
            u = 0
            while t < _2452:
                mem[mem[64] + 4] = address(_2200)
                mem[mem[64] + 36] = t
                staticcall sub_f43bc155Address.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(_2200), t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2592 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[_2592]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2629 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2648 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                mem[_2648] = mem[_2629]
                mem[_2648 + 32] = mem[_2629 + 32]
                mem[_2648 + 64] = mem[_2629 + 64]
                if 24 * 3600 > !mem[_2648 + 64]:
                    revert with 0, 17
                if block.timestamp < mem[_2648 + 64] + (24 * 3600):
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
            if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
                revert with 0, 17
            if block.timestamp < mem[_2299 + 64]:
                revert with 0, 17
            if block.timestamp - mem[_2299 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_2299 + 64]:
                revert with 0, 17
            if (block.timestamp * sub_d23270a3) - (_2397 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2299 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2299 + 64]) / 24 * 3600):
                revert with 0, 17
            if s > !(((block.timestamp * sub_d23270a3) - (_2397 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2299 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2299 + 64]) / 24 * 3600)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * sub_d23270a3) - (_2397 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2299 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2299 + 64]) / 24 * 3600)
            continue 
        staticcall sub_93066351Address.0xce325bf8 with:
                gas gas_remaining wei
               args _1342
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2201 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_2196] == mem[_2196 + 30 len 2]
        mem[_2201] = mem[_2196]
        mem[_2201 + 32] = mem[_2196 + 32]
        mem[_2201 + 64] = mem[_2196 + 64]
        require mem[_2196 + 96] == mem[_2196 + 108 len 20]
        mem[_2201 + 96] = mem[_2196 + 96]
        _2261 = mem[_2201 + 96]
        if not mem[_2201 + 108 len 20]:
            revert with 0, 'Game: The owner cannot be address(0)'
        if not mem[_1367 + 32]:
            _2319 = mem[_1367 + 160]
            staticcall sub_93066351Address.0x8c59295c with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2338 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2356 = mem[_2338]
            staticcall sub_93066351Address.0xce325bf8 with:
                    gas gas_remaining wei
                   args _1342
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2398 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 128
            require mem[_2384] == mem[_2384 + 30 len 2]
            mem[_2398] = mem[_2384]
            mem[_2398 + 32] = mem[_2384 + 32]
            mem[_2398 + 64] = mem[_2384 + 64]
            require mem[_2384 + 96] == mem[_2384 + 108 len 20]
            mem[_2398 + 96] = mem[_2384 + 96]
            if _2356 < mem[_2398 + 32]:
                revert with 0, 17
            if uint8(_2319) and _2356 - mem[_2398 + 32] > -1 / uint8(_2319):
                revert with 0, 17
            if s > !((_2356 * uint8(_2319)) - (mem[_2398 + 32] * uint8(_2319))):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (_2356 * uint8(_2319)) - (mem[_2398 + 32] * uint8(_2319))
            continue 
        staticcall sub_93066351Address.0xce325bf8 with:
                gas gas_remaining wei
               args _1342
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2339 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2357 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[_2339] == mem[_2339 + 30 len 2]
        mem[_2357] = mem[_2339]
        mem[_2357 + 32] = mem[_2339 + 32]
        mem[_2357 + 64] = mem[_2339 + 64]
        require mem[_2339 + 96] == mem[_2339 + 108 len 20]
        mem[_2357 + 96] = mem[_2339 + 96]
        _2423 = mem[_2357 + 64]
        if block.timestamp < mem[_2357 + 64]:
            revert with 0, 17
        if block.timestamp - mem[_2357 + 64] and sub_d23270a3 > -1 / block.timestamp - mem[_2357 + 64]:
            revert with 0, 17
        if 0 > !((block.timestamp * sub_d23270a3) - (mem[_2357 + 64] * sub_d23270a3) / 24 * 3600):
            revert with 0, 17
        mem[mem[64] + 4] = address(_2261)
        staticcall sub_f43bc155Address.0x70a08231 with:
                gas gas_remaining wei
               args address(_2261)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2460 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2468 = mem[_2460]
        t = 0
        u = 0
        while t < _2468:
            mem[mem[64] + 4] = address(_2261)
            mem[mem[64] + 36] = t
            staticcall sub_f43bc155Address.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(_2261), t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2593 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            staticcall sub_f43bc155Address.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_2593]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2631 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2649 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_2649] = mem[_2631]
            mem[_2649 + 32] = mem[_2631 + 32]
            mem[_2649 + 64] = mem[_2631 + 64]
            if 24 * 3600 > !mem[_2649 + 64]:
                revert with 0, 17
            if block.timestamp < mem[_2649 + 64] + (24 * 3600):
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
        if mem[_1367 + 126 len 2] and sub_b175c7c7 + (u * sub_1eca8abe) > -1 / mem[_1367 + 126 len 2]:
            revert with 0, 17
        if block.timestamp < mem[_2357 + 64]:
            revert with 0, 17
        if block.timestamp - mem[_2357 + 64] and (sub_b175c7c7 * mem[_1367 + 126 len 2]) + (u * sub_1eca8abe * mem[_1367 + 126 len 2]) > -1 / block.timestamp - mem[_2357 + 64]:
            revert with 0, 17
        if (block.timestamp * sub_d23270a3) - (_2423 * sub_d23270a3) / 24 * 3600 > !((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2357 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2357 + 64]) / 24 * 3600):
            revert with 0, 17
        if s > !(((block.timestamp * sub_d23270a3) - (_2423 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2357 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2357 + 64]) / 24 * 3600)):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((block.timestamp * sub_d23270a3) - (_2423 * sub_d23270a3) / 24 * 3600) + ((sub_b175c7c7 * mem[_1367 + 126 len 2] * block.timestamp) + (u * sub_1eca8abe * mem[_1367 + 126 len 2] * block.timestamp) - (sub_b175c7c7 * mem[_1367 + 126 len 2] * mem[_2357 + 64]) - (u * sub_1eca8abe * mem[_1367 + 126 len 2] * mem[_2357 + 64]) / 24 * 3600)
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
    staticcall sub_93066351Address.0xbaa51f86 with:
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
    staticcall sub_93066351Address.0xbaa51f86 with:
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
            staticcall sub_93066351Address.0xbaa51f86 with:
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
                    staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xce325bf8 with:
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
                    staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xbaa51f86 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                    staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xbaa51f86 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                    staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
        staticcall sub_93066351Address.0xce325bf8 with:
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
            staticcall sub_93066351Address.0xbaa51f86 with:
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
                    staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xce325bf8 with:
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
                    staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xbaa51f86 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                    staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                staticcall sub_93066351Address.0xbaa51f86 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                    staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
                        staticcall sub_93066351Address.0xce325bf8 with:
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
