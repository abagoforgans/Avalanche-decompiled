contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function isApprovedDeployer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function approveDeployer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'you are not approved'
    stor0[address(arg1)] = 1
}

function sub_180b5fd4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == Mask(96, 160, arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, 'thou shalt not deploy'
    if ext_code.hash(sha3(0, this.address, msg.sender, Mask(96, 160, arg1) >> 160, sha3(arg2[all]))):
        if ext_code.hash(sha3(0, this.address, msg.sender, Mask(96, 160, arg1) >> 160, sha3(arg2[all]))) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'contract already deployed'
    create2 contract with 0 wei
                    salt: msg.sender, Mask(96, 160, arg1) >> 160
                    code: arg2[all]
    if not ext_code.hash(create2.new_address):
        revert with 0, 'deployment failed'
    if ext_code.hash(create2.new_address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'deployment failed'
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).init(bytes arg1) with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
