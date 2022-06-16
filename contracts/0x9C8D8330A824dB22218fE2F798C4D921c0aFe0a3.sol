contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
uint256 balanceWAVAX;

function owner() {
    return owner
}

function balanceWAVAX() {
    return balanceWAVAX
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_24733e1a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    call stor6.startGame(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_930bc92d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    call stor6.closeGame(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor7)
    call stor7.0x4e71d92d with:
         gas gas_remaining wei
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor7)
    call stor7.0x15a6f4fd with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3cf748ef(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    call stor6.0x31c1bf82 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4a42f8a6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor7)
    call stor7.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_78a70241(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor7)
    call stor7.unstake(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3282d53f(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    call stor6.0x3dc8d5ce with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6bf518b5(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    call stor6.0xc0d8080c with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_72dba6ab(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    call stor6.0xcf034493 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04be15d1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    call stor6.settleGame(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c54c0e3(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    call stor6.attack(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_387ab209(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    call stor5.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args 0x82a85407bd612f52577909f4a58bfc6873f14da8, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
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
    require ext_code.size(stor6)
    call stor6.0x973abe53 with:
         gas gas_remaining wei
        args uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0e19bf49(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    call stor5.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2dcd4d75(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    staticcall stor6.getStats(uint256 arg1) with:
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
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function approveToken(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
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
    require ext_code.size(stor6)
    staticcall stor6.0x969215ba with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    return ext_call.return_data[192]
}

function sub_0a5b4e99(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor6)
    staticcall stor6.0x969215ba with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 95 > -1 / arg1:
        revert with 0, 17
    if 95 * arg1 / 95 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 95 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and 5 > -1 / arg1:
        revert with 0, 17
    if 5 * arg1 / 5 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, 5 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 95 > -1 / arg1:
        revert with 0, 17
    if 95 * arg1 / 95 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 95 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and 5 > -1 / arg1:
        revert with 0, 17
    if 5 * arg1 / 5 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
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
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 32
    require ext_code.size(stor6)
    call stor6.deposit(uint256[] arg1) with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3a30b1cc(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x8293744b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
    require ext_code.size(stor6)
    call stor6.withdraw(address arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a59a0952(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 196] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 192] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
    staticcall 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.getReserves() with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size)]
    mem[(2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[(4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
    staticcall 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.token0() with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
    staticcall 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.token1() with:
            gas gas_remaining wei
           args mem[(6 * ceil32(return_data.size)) + 196 len 8 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if stor3 == address(ext_call.return_data[0]):
        if stor4 != ext_call.return_data[12 len 20]:
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * ext_call.return_data[0]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 1
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if stor3 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            else:
                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * ext_call.return_data[0]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 1
                require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                if stor3 == address(ext_call.return_data[0]):
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                else:
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 0 > ext_call.return_data[0]:
                revert with 0, 'ds-math-sub-underflow'
            require ext_code.size(stor4)
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, 0 / 100
        else:
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * ext_call.return_data[0]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 1
                if stor3 != address(ext_call.return_data[0]):
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100
                else:
                    mem[(8 * ceil32(return_data.size)) + 292] = this.address
                    mem[(8 * ceil32(return_data.size)) + 324] = 128
                    mem[(8 * ceil32(return_data.size)) + 356] = 0
                    mem[(8 * ceil32(return_data.size)) + 388 len 0] = None
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 292 len 17 * ceil32(return_data.size)]
            else:
                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * ext_call.return_data[0]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 1
                if stor3 != address(ext_call.return_data[0]):
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100
                else:
                    mem[(8 * ceil32(return_data.size)) + 292] = this.address
                    mem[(8 * ceil32(return_data.size)) + 324] = 128
                    mem[(8 * ceil32(return_data.size)) + 356] = 0
                    mem[(8 * ceil32(return_data.size)) + 388 len 0] = None
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 292 len 17 * ceil32(return_data.size)]
    else:
        if stor4 == ext_call.return_data[12 len 20]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * ext_call.return_data[0]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 1
                if stor3 == address(ext_call.return_data[0]):
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100
                else:
                    mem[(8 * ceil32(return_data.size)) + 292] = this.address
                    mem[(8 * ceil32(return_data.size)) + 324] = 128
                    mem[(8 * ceil32(return_data.size)) + 356] = 0
                    mem[(8 * ceil32(return_data.size)) + 388 len 0] = None
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 292 len 17 * ceil32(return_data.size)]
            else:
                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * ext_call.return_data[0]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 1
                if stor3 != address(ext_call.return_data[0]):
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100
                else:
                    mem[(8 * ceil32(return_data.size)) + 292] = this.address
                    mem[(8 * ceil32(return_data.size)) + 324] = 128
                    mem[(8 * ceil32(return_data.size)) + 356] = 0
                    mem[(8 * ceil32(return_data.size)) + 388 len 0] = None
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 292 len 17 * ceil32(return_data.size)]
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * ext_call.return_data[0]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 1
                if stor3 == address(ext_call.return_data[0]):
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100
                else:
                    mem[(8 * ceil32(return_data.size)) + 292] = this.address
                    mem[(8 * ceil32(return_data.size)) + 324] = 128
                    mem[(8 * ceil32(return_data.size)) + 356] = 0
                    mem[(8 * ceil32(return_data.size)) + 388 len 0] = None
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 292 len 17 * ceil32(return_data.size)]
            else:
                if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * ext_call.return_data[0]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 1
                if stor3 != address(ext_call.return_data[0]):
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow'
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100
                else:
                    mem[(8 * ceil32(return_data.size)) + 292] = this.address
                    mem[(8 * ceil32(return_data.size)) + 324] = 128
                    mem[(8 * ceil32(return_data.size)) + 356] = 0
                    mem[(8 * ceil32(return_data.size)) + 388 len 0] = None
                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                    call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 292 len 17 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        if not calldata.size:
            emit Received(msg.sender, msg.value);
    else:
        if unknown_0x72dba6ab(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x387ab209(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1c54c0e3(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x1c54c0e3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor6)
                        call stor6.attack(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args cd[4], cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if unknown_0x24733e1a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(stor6)
                        call stor6.startGame(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if uint32(call.func_hash) >> 224 != unknown_0x2dcd4d75(?????):
                        if unknown_0x3282d53f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 96
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(stor6)
                            call stor6.0x3dc8d5ce with:
                                 gas gas_remaining wei
                                args cd[4], cd[36], cd[68]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(stor6)
                    staticcall stor6.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
                    return ext_call.return_data[30 len 2], ext_call.return_data[32] << 240
                if unknown_0x04be15d1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor6)
                    call stor6.settleGame(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x0a5b4e99(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(stor6)
                    staticcall stor6.0x969215ba with:
                            gas gas_remaining wei
                           args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
                    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
                    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
                    return ext_call.return_data[12 len 20], 
                           ext_call.return_data[32],
                           ext_call.return_data[64],
                           ext_call.return_data[96],
                           ext_call.return_data[128] << 240,
                           ext_call.return_data[160] << 240,
                           ext_call.return_data[192],
                           uint128(ext_call.return_data[224])
                if unknown_0x0e19bf49(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor5)
                    call stor5.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args this.address, msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if uint32(call.func_hash) >> 224 != unknown_0x150b7a02(?????):
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                if ('cd', 100).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                    revert with 0, 65
                require cd[100] + ('cd', 100).length + 36 <= calldata.size
                return 0x150b7a0200000000000000000000000000000000000000000000000000000000
            if unknown_0x4e71d92d(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x387ab209(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor5)
                    call stor5.setApprovalForAll(address arg1, bool arg2) with:
                         gas gas_remaining wei
                        args 0x82a85407bd612f52577909f4a58bfc6873f14da8, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x3a30b1cc(?????):
                        if unknown_0x3cf748ef(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(stor6)
                            call stor6.0x31c1bf82 with:
                                 gas gas_remaining wei
                                args cd[4], cd[36]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if unknown_0x4a42f8a6(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                require ext_code.size(stor7)
                                call stor7.deposit(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 4).length
                        require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                        s = cd[4] + 36
                        t = 160
                        idx = 0
                        while idx < ('cd', 4).length:
                            mem[t] = cd[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[ceil32(32 * ('cd', 4).length) + 129] = 0x8293744b00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * ('cd', 4).length) + 133] = this.address
                        require ext_code.size(stor6)
                        call stor6.withdraw(address arg1, uint256[] arg2) with:
                             gas gas_remaining wei
                            args address(this.address), Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(stor7)
                    call stor7.0x4e71d92d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x5a1befe2(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x6bf518b5(?????):
                            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                owner = 0
                                emit OwnershipTransferred(owner, 0);
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 96
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(stor6)
                            call stor6.0xc0d8080c with:
                                 gas gas_remaining wei
                                args cd[4], cd[36], cd[68]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 4).length
                        require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                        s = cd[4] + 36
                        t = 160
                        idx = 0
                        while idx < ('cd', 4).length:
                            mem[t] = cd[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[ceil32(32 * ('cd', 4).length) + 129] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * ('cd', 4).length) + 133] = 32
                        require ext_code.size(stor6)
                        call stor6.deposit(uint256[] arg1) with:
                             gas gas_remaining wei
                            args Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0xa59a0952(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x83786f8c(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x83786f8c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0x85300f5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor7)
                        call stor7.0x15a6f4fd with:
                             gas gas_remaining wei
                            args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if unknown_0x930bc92d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require ext_code.size(stor6)
                            call stor6.closeGame(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x72dba6ab(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor6)
                        call stor6.0xcf034493 with:
                             gas gas_remaining wei
                            args cd[4], cd[36], cd[68]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x78a70241(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(stor7)
                            call stor7.unstake(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if unknown_0x79d4b6c7(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require ext_code.size(stor6)
                                staticcall stor6.0x969215ba with:
                                        gas gas_remaining wei
                                       args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 256
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_call.return_data[128] == ext_call.return_data[158 len 2]
                                require ext_call.return_data[160] == ext_call.return_data[190 len 2]
                                require ext_call.return_data[224] == ext_call.return_data[240 len 16]
                                return ext_call.return_data[192]
                            if unknown_0x814eaea1(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if cd[4] and 95 > -1 / cd[4]:
                                    revert with 0, 17
                                if 95 * cd[4] / 95 != cd[4]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 95 * cd[4] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if cd[4] and 5 > -1 / cd[4]:
                                    revert with 0, 17
                                if 5 * cd[4] / 5 != cd[4]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require ext_code.size(stor3)
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor2, 5 * cd[4] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0xdb10ffef(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xdb10ffef(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint64(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor6)
                        call stor6.0x973abe53 with:
                             gas gas_remaining wei
                            args uint64(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0xe5c9ceb3(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return balanceWAVAX
                        if unknown_0xeae7236f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(stor5)
                            call stor5.0x23b872dd with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if not address(cd[4]):
                                    revert with 0, 'Ownable: new owner is the zero address'
                                owner = address(cd[4])
                                emit OwnershipTransferred(owner, address(cd[4]));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xa59a0952(?????):
                        if unknown_0xabce145b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            call msg.sender with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if unknown_0xb7f8aa00(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require cd[36] == address(cd[36])
                                require cd[68] == address(cd[68])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[68]), cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if unknown_0xbe4b1772(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 64
                                    require cd[36] == address(cd[36])
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    if cd[4] and 95 > -1 / cd[4]:
                                        revert with 0, 17
                                    if 95 * cd[4] / 95 != cd[4]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 95 * cd[4] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if cd[4] and 5 > -1 / cd[4]:
                                        revert with 0, 17
                                    if 5 * cd[4] / 5 != cd[4]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor2, 5 * cd[4] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 228] = this.address
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 224] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                        staticcall 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.getReserves() with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size)]
                        mem[(2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        mem[(4 * ceil32(return_data.size)) + 224] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                        staticcall 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.token0() with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                        mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 224] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                        staticcall 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.token1() with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 228 len 8 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
                            revert with 0, 'ds-math-mul-overflow'
                        if stor3 == address(ext_call.return_data[0]):
                            if stor4 == ext_call.return_data[12 len 20]:
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 1
                                    mem[(8 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(8 * ceil32(return_data.size)) + 356] = 128
                                    mem[(8 * ceil32(return_data.size)) + 388] = 0
                                    mem[(8 * ceil32(return_data.size)) + 420 len 0] = None
                                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                    if stor3 == address(ext_call.return_data[0]):
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                    else:
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 356 len 17 * ceil32(return_data.size)]
                                    require ext_code.size(stor4)
                                    call stor4.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                                else:
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 18
                                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 1
                                    if stor3 == address(ext_call.return_data[0]):
                                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'ds-math-sub-underflow'
                                        require ext_code.size(stor4)
                                        call stor4.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor2, 0 / 100
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 324] = this.address
                                        mem[(8 * ceil32(return_data.size)) + 356] = 128
                                        mem[(8 * ceil32(return_data.size)) + 388] = 0
                                        mem[(8 * ceil32(return_data.size)) + 420 len 0] = None
                                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 356 len 17 * ceil32(return_data.size)]
                                        require ext_code.size(stor4)
                                        call stor4.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                            else:
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 1
                                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                    if stor3 == address(ext_call.return_data[0]):
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    else:
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    require ext_code.size(stor4)
                                    call stor4.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor2, 0 / 100
                                else:
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 18
                                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 1
                                    if stor3 != address(ext_call.return_data[0]):
                                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'ds-math-sub-underflow'
                                        require ext_code.size(stor4)
                                        call stor4.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor2, 0 / 100
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 324] = this.address
                                        mem[(8 * ceil32(return_data.size)) + 356] = 128
                                        mem[(8 * ceil32(return_data.size)) + 388] = 0
                                        mem[(8 * ceil32(return_data.size)) + 420 len 0] = None
                                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 356 len 17 * ceil32(return_data.size)]
                                        require ext_code.size(stor4)
                                        call stor4.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                        else:
                            if stor4 == ext_call.return_data[12 len 20]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 18
                                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 1
                                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                    if stor3 == address(ext_call.return_data[0]):
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    else:
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    require ext_code.size(stor4)
                                    call stor4.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor2, 0 / 100
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 1
                                    if stor3 != address(ext_call.return_data[0]):
                                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'ds-math-sub-underflow'
                                        require ext_code.size(stor4)
                                        call stor4.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor2, 0 / 100
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 324] = this.address
                                        mem[(8 * ceil32(return_data.size)) + 356] = 128
                                        mem[(8 * ceil32(return_data.size)) + 388] = 0
                                        mem[(8 * ceil32(return_data.size)) + 420 len 0] = None
                                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 356 len 17 * ceil32(return_data.size)]
                                        require ext_code.size(stor4)
                                        call stor4.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                            else:
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 1
                                    require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                    if stor3 == address(ext_call.return_data[0]):
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                    else:
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    require ext_code.size(stor4)
                                    call stor4.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor2, 0 / 100
                                else:
                                    if 997 * ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * ext_call.return_data[0]:
                                        revert with 0, 17
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 18
                                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 17
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * ext_call.return_data[0]):
                                        revert with 0, 17
                                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        revert with 0, 18
                                    require ext_code.size(stor3)
                                    call stor3.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 1
                                    if stor3 == address(ext_call.return_data[0]):
                                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'ds-math-sub-underflow'
                                        require ext_code.size(stor4)
                                        call stor4.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor2, 0 / 100
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 324] = this.address
                                        mem[(8 * ceil32(return_data.size)) + 356] = 128
                                        mem[(8 * ceil32(return_data.size)) + 388] = 0
                                        mem[(8 * ceil32(return_data.size)) + 420 len 0] = None
                                        require ext_code.size(0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319)
                                        call 0x565d20bd591b00ead0c927e4b6d7dd8a33b0b319.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'ds-math-sub-underflow', mem[(10 * ceil32(return_data.size)) + 356 len 17 * ceil32(return_data.size)]
                                        require ext_code.size(stor4)
                                        call stor4.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor2, 0 / 100, mem[(10 * ceil32(return_data.size)) + 324 len 17 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
