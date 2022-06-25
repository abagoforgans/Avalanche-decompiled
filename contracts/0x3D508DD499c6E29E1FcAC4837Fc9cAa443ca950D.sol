contract main {




// =====================  Runtime code  =====================


const getAddressETH = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
address implementationAddress;
mapping of address wallets;
mapping of uint8 stor3;
address feeRecipientAddress;

function feeRecipient() {
    return feeRecipientAddress
}

function implementation() {
    return implementationAddress
}

function wallets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return wallets[arg1]
}

function owner() {
    return owner
}

function sub_ac2c9c0f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function toBytes32(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeRecipientAddress = arg1
    emit 0x7a7b5a0a: arg1
}

function getWalletAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(sha3(0, Mask(160, 96, this.address) >> 96, address(arg1), sha3(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0)))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    if not arg2:
        revert with 0, 'ZERO ADDRESS'
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e2314541(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 128 < 96 or ceil32(arg3.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3.length + arg3 + 36
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 160] = address(arg1)
    mem[ceil32(arg3.length) + 180] = arg2
    mem[ceil32(arg3.length) + 212 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[arg3.length + ceil32(arg3.length) + 212] = 0
    mem[ceil32(arg3.length) + 128] = arg3.length + 52
    mem[arg3.length + ceil32(arg3.length) + 212] = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    return memory
      from arg3.length + ceil32(arg3.length) + 212
       len 32
}

function deployWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if wallets[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'multiple-proxy-per-user-not-allowed'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    create2 contract with 0 wei
                    salt: address(arg1)
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create2.new_address):
        revert with 0, 'ERC1167: create2 failed'
    wallets[address(arg1)] = address(create2.new_address)
    stor3[address(create2.new_address)] = 1
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x485cc955 with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Created(address(create2.new_address));
    return address(create2.new_address)
}

function sub_67d31752(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 160 < 128 or ceil32(arg2.length) + ceil32(arg3.length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(arg2.length) + 128] = arg3.length
    require calldata.size >= arg3.length + arg3 + 36
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x104d653700000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = 64
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 260 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 260] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 196] = ceil32(arg2.length) + 96
    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 260] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 292 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + 292] = 0
    require ext_code.size(address(arg1))
    call address(arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1519b837(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 160 < 128 or ceil32(arg2.length) + ceil32(arg3.length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(arg2.length) + 128] = arg3.length
    require calldata.size >= arg3.length + arg3 + 36
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    if wallets[address(arg1)]:
        revert with 0, 'multiple-proxy-per-user-not-allowed'
    if not address(arg1):
        revert with 0, 'ZERO ADDRESS'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 200] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
    create2 contract with 0 wei
                    salt: address(arg1)
                    code: 0, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create2.new_address):
        revert with Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 
                    'ERC1167: create2 failed'
    wallets[address(arg1)] = address(create2.new_address)
    stor3[address(create2.new_address)] = 1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = this.address
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 196] = address(arg1)
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x485cc955 with:
         gas gas_remaining wei
        args address(this.address), address(arg1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, ext_call.return_data[4 len 28] == bool(Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, ext_call.return_data[4 len 28])
    emit Created(address(create2.new_address));
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] = 0x104d653700000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 164] = 64
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 228] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 260 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 260] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 196] = ceil32(arg2.length) + 96
    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(return_data.size) + 260] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(return_data.size) + 292 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + (2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(return_data.size) + 292] = 0
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0x104d6537 with:
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 164 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
