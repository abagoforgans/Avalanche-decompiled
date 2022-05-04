contract main {




// =====================  Runtime code  =====================


const sub_4a4bba51(?) = eth.balance(this.address)


address owner;
address stor1;
uint256 stor2;
mapping of struct sub_97350dff;
array of address stor4;
address ownerWallet;

function owner() {
    return owner
}

function ownerWallet() {
    return ownerWallet
}

function sub_97350dff(?) {
    return bool(sub_97350dff[msg.sender].field_0), 
           sub_97350dff[msg.sender].field_256,
           sub_97350dff[msg.sender].field_512,
           sub_97350dff[msg.sender].field_768,
           sub_97350dff[msg.sender].field_1024,
           bool(sub_97350dff[msg.sender].field_1280),
           bool(sub_97350dff[msg.sender].field_1288),
           sub_97350dff[msg.sender].field_1536
}

function sub_a1e2104c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_97350dff[address(arg1)].field_1280:
        revert with 0, 'Your wallet in BlackList!!!'
    if bool(sub_97350dff[address(arg1)].field_0) != 1:
        revert with 0, 'Your KYC not verified!'
    return sub_97350dff[address(arg1)].field_1024
}

function sub_e1da2118(?) {
    return stor4.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function sub_399dc4b9(?) {
    require calldata.size - 4 >= 32
    call ownerWallet with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
    return 1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    stor2 = arg1
    emit 0xfe8be007 
    emit 0x0 
    emit 0x0 
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock.'
    if block.timestamp <= stor2:
        revert with 0, 'Contract is locked.'
    emit 0xfe8be007: owner, stor1
    owner = stor1
}

function sub_38de12c1(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(arg1) == bool(sub_97350dff[msg.sender].field_1280):
        revert with 0, 'User BlackList no change!'
    sub_97350dff[msg.sender].field_1280 = uint8(bool(arg1))
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function sub_7c1d66f0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_97350dff[address(arg1)].field_1280:
        revert with 0, 'Your wallet in BlackList!!!'
    if bool(sub_97350dff[address(arg1)].field_0) != 1:
        revert with 0, 'Your KYC not verified!'
    if arg2 != sub_97350dff[address(arg1)].field_1024:
        return 1
    else:
        return 0
}

function TransferERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args ownerWallet, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_ba2c27c0(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == bool(arg1)
    require arg6 == bool(arg6)
    sub_97350dff[msg.sender].field_0 = uint8(bool(arg1))
    sub_97350dff[msg.sender].field_256 = arg2
    sub_97350dff[msg.sender].field_512 = arg3
    sub_97350dff[msg.sender].field_768 = arg4
    sub_97350dff[msg.sender].field_1024 = arg5
    sub_97350dff[msg.sender].field_1280 = 0
    sub_97350dff[msg.sender].field_1288 = Mask(248, 0, bool(arg6))
    sub_97350dff[msg.sender].field_1536 = msg.value
    stor4.length++
    uint256(stor4[stor4.length]) = msg.sender or Mask(96, 160, uint256(stor4[stor4.length]))
}

function sub_d2525843(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_97350dff[address(arg1)].field_0 = 1
    sub_97350dff[address(arg1)].field_256 = arg2
    sub_97350dff[address(arg1)].field_512 = arg3
    sub_97350dff[address(arg1)].field_768 = block.timestamp
    sub_97350dff[address(arg1)].field_1024 = arg4
    sub_97350dff[address(arg1)].field_1280 = 0
    sub_97350dff[address(arg1)].field_1288 = 1
    sub_97350dff[address(arg1)].field_1536 = 0
    stor4.length++
    address(stor4[stor4.length]) = address(arg1)
    return 1
}

function sub_e86daa6f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if sub_97350dff[address(msg.sender)].field_1280:
        revert with 0, 'Your wallet in BlackList!!!'
    if bool(sub_97350dff[address(msg.sender)].field_0) != 1:
        revert with 0, 'Your KYC not verified!'
    if sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256) != sub_97350dff[address(msg.sender)].field_1024:
        return 1
    else:
        return 0
}



}
