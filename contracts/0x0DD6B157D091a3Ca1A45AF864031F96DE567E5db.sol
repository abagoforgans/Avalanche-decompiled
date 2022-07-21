contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint256 stor2;
uint8 stor4; offset 160
uint128 stor4; offset 160
address lpTokenAddress;
uint256 amount;
uint256 sub_b73f88b9;
uint32 stor7;
uint256 pid;
uint256 stor8;
uint256 stor9;

function lpToken() {
    return lpTokenAddress
}

function owner() {
    return owner
}

function amount() {
    return amount
}

function isController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_b73f88b9(?) {
    return sub_b73f88b9
}

function sub_eb412440(?) {
    return bool(uint8(stor4.field_160))
}

function pid() {
    return uint256(pid)
}

function sub_df6ea64c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor2):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    else:
        if not stor1[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    require arg1 == 126
    selfdestruct(owner)
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

function sub_cc7ef211(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor2) = not bool(uint8(stor2)) or Mask(248, 8, uint256(stor2))
}

function sub_d2c5098d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
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

function setPid(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        lpTokenAddress = 0x34ea62d682c82e998945f1d663cb65f8b4db37e1
    else:
        if arg1 - 1:
            revert with 0, 'wrong pid'
        lpTokenAddress = 0x97bd1eb9b32a991b1c4f27a537f3253ceb6051eb
    uint256(pid) = arg1
}

function setAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor2):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    else:
        if not stor1[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    amount = arg1
}

function sub_b4fad1b5(?) {
    if uint8(stor2):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    else:
        if not stor1[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f3133713(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor2):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    else:
        if not stor1[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    if amount < arg1:
        revert with 'NH{q', 17
    amount -= arg1
    require ext_code.size(0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9)
    call 0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint256(pid), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialDeposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor2):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    else:
        if not stor1[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    if arg1 < 1000:
        revert with 'NH{q', 17
    if amount > -arg1 + 999:
        revert with 'NH{q', 17
    amount = amount + arg1 - 1000
    if arg1 < 1000:
        revert with 'NH{q', 17
    require ext_code.size(0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9)
    call 0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9.deposit(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor7), arg1 - 1000, 0, sub_b73f88b9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_acc9d97d(?) {
    if uint8(stor2):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    else:
        if not stor1[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    stor9 = 0
    Mask(96, 0, stor4.field_160) = 1
    require ext_code.size(0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9)
    call 0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9.deposit(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor7), 1, 0, sub_b73f88b9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9)
    call 0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint256(pid), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor2):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    else:
        if not stor1[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    if arg2 - 666:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    require msg.sender == 0xffb876bd5bee99e992cac826a04396002f5f4a65
    require arg2 == 0x6ab56689b28f18faac89fc4b1ff1c724495150bb
    if uint8(stor4.field_160):
        if stor9 > -2:
            revert with 'NH{q', 17
        stor9++
        if stor9 > stor8:
            Mask(96, 0, stor4.field_160) = 0
        else:
            require ext_code.size(0xffb876bd5bee99e992cac826a04396002f5f4a65)
            call 0xffb876bd5bee99e992cac826a04396002f5f4a65.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), 0x6ab56689b28f18faac89fc4b1ff1c724495150bb, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9)
            call 0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9.deposit(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args uint256(pid), 1, 0, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if amount > -2:
                revert with 'NH{q', 17
            require ext_code.size(0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9)
            call 0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uint256(pid), amount + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if amount:
                amount = 0
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function test(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor2):
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    else:
        if not stor1[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller'
    stor9 = 0
    Mask(96, 0, stor4.field_160) = 1
    mem[164] = 0
    mem[196] = sub_b73f88b9
    require ext_code.size(0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9)
    call 0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9.deposit(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor7), 1, 0, sub_b73f88b9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[132] = 1
    require ext_code.size(0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9)
    call 0x1ac6332f1f1892b49fb26ad1934f74f4cd8c9db9.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint256(pid), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    staticcall 0x1b88d7ad51626044ec62ef9803ea264da4442f32.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if arg1:
            revert with 0, '0', 0
        return ext_call.return_data[0]
    s = 0
    idx = ext_call.return_data[0]
    while idx:
        if not s - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = s
    if s:
        mem[ceil32(return_data.size) + 128 len s] = call.data[calldata.size len s]
    t = s
    idx = ext_call.return_data[0]
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if idx / 10 and 10 > -1 / idx / 10:
            revert with 'NH{q', 17
        if idx < 10 * idx / 10:
            revert with 'NH{q', 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[t + ceil32(return_data.size) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    if not arg1:
        return ext_call.return_data[0]
    mem[ceil32(return_data.size) + ceil32(s) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + ceil32(s) + 132] = 32
    mem[ceil32(return_data.size) + ceil32(s) + 164] = mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + ceil32(s) + 196 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if ceil32(mem[ceil32(return_data.size) + 96]) > mem[ceil32(return_data.size) + 96]:
        mem[ceil32(return_data.size) + ceil32(s) + mem[ceil32(return_data.size) + 96] + 196] = 0
    revert with 0, 
                32,
                mem[ceil32(return_data.size) + 96],
                mem[ceil32(return_data.size) + ceil32(s) + 196 len ceil32(mem[ceil32(return_data.size) + 96])]
}



}
