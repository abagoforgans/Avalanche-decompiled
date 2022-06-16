contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 balanceWAVAX;

function owner() {
    return owner
}

function balanceWAVAX() {
    return balanceWAVAX
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function claim() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    call stor5.0x4e71d92d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_24733e1a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor4)
    call stor4.startGame(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_930bc92d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor4)
    call stor4.closeGame(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_85300f5b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    call stor5.0x15a6f4fd with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4a42f8a6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    call stor5.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_78a70241(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    call stor5.unstake(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_387ab209(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args 0x82a85407bd612f52577909f4a58bfc6873f14da8, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04be15d1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.settleGame(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_db10ffef(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.0x973abe53 with:
         gas gas_remaining wei
        args uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3cf748ef(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.0x31c1bf82 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c54c0e3(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.attack(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3282d53f(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.0x3dc8d5ce with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6bf518b5(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.0xc0d8080c with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_72dba6ab(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.0xcf034493 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0e19bf49(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_2dcd4d75(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor4)
    staticcall stor4.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    return ext_call.return_data[30 len 2], ext_call.return_data[32] << 240
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function approveToken(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_79d4b6c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor4)
    staticcall stor4.0x969215ba with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    return ext_call.return_data[192]
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 95 > -1 / arg1:
        revert with 'NH{q', 17
    if 95 * arg1 / 95 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 95 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and 5 > -1 / arg1:
        revert with 'NH{q', 17
    if 5 * arg1 / 5 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, 5 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0a5b4e99(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor4)
    staticcall stor4.0x969215ba with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128] << 240,
           ext_call.return_data[160] << 240,
           ext_call.return_data[192],
           uint128(ext_call.return_data[224])
}

function sub_814eaea1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 95 > -1 / arg1:
        revert with 'NH{q', 17
    if 95 * arg1 / 95 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
    call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 95 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and 5 > -1 / arg1:
        revert with 'NH{q', 17
    if 5 * arg1 / 5 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
    call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, 5 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5a1befe2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 4).length) + 97] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 101] = 32
    mem[floor32(('cd', 4).length) + 133] = ('cd', 4).length
    mem[floor32(('cd', 4).length) + 165 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    require ext_code.size(stor4)
    call stor4.deposit(uint256[] arg1) with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 165 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3a30b1cc(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 4).length) + 97] = 0x8293744b00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 101] = this.address
    mem[floor32(('cd', 4).length) + 133] = 64
    mem[floor32(('cd', 4).length) + 165] = ('cd', 4).length
    mem[floor32(('cd', 4).length) + 197 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    require ext_code.size(stor4)
    call stor4.withdraw(address arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 197 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a59a0952(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
    staticcall 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
    staticcall 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
    staticcall 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
    staticcall 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172 == address(ext_call.return_data[0]):
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == ext_call.return_data[12 len 20]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
                call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 95 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 95 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 5 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 5 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, stor2, 128, 0, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 5 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 5 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, 0, stor2, 128, 0, 0
            else:
                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
                call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 95 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 95 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 5 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 5 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, stor2, 128, 0, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 5 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 5 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, 0, stor2, 128, 0, 0
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
                call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 95 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 95 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 5 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 5 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, stor2, 128, 0, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 5 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 5 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, 0, stor2, 128, 0, 0
            else:
                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
                call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 95 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 95 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 5 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 5 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, stor2, 128, 0, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) and 5 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 5 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) / 100, 0, stor2, 128, 0, 0
    else:
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == ext_call.return_data[12 len 20]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
                call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 95 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 95 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 5 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 5 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, stor2, 128, 0, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 5 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 5 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, 0, stor2, 128, 0, 0
            else:
                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
                call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 95 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 95 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 5 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 5 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, stor2, 128, 0, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 5 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 5 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, 0, stor2, 128, 0, 0
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
                call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 95 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 95 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 5 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 5 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, stor2, 128, 0, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 95 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 5 > -1 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 5 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 5 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, 0, stor2, 128, 0, 0
            else:
                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 18
                require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
                call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 95 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 95 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 5 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 5 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, stor2, 128, 0, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 95 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) and 5 > -1 / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 5 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 5 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) / 100, 0, stor2, 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
